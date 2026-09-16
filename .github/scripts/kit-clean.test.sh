#!/usr/bin/env bash
# kit-clean.test.sh - testy skryptu kit-clean.sh na kopiach kitu z jedna usterka na raz.
# Uruchomienie: bash .github/scripts/kit-clean.test.sh   (z katalogu glownego repo)
set -euo pipefail
export LC_ALL=C.UTF-8

TU="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKRYPT="$TU/kit-clean.sh"
ZRODLO="$(cd "$TU/../.." && pwd)"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

padl=0
zaliczone=0

# kopia_kitu <nazwa> -> tworzy $TMP/<nazwa> z katalogami, ktore czyta kit-clean.sh
kopia_kitu() {
  local cel="$TMP/$1"
  mkdir -p "$cel"
  cp -r "$ZRODLO/.onboarding" "$ZRODLO/90-System" "$ZRODLO/00-Zrodla" "$cel/"
  printf '%s' "$cel"
}

# oczekuj_ok <nazwa testu> <katalog>
oczekuj_ok() {
  local nazwa="$1" kat="$2" wynik
  if wynik="$(bash "$SKRYPT" "$kat" 2>&1)"; then
    zaliczone=$((zaliczone + 1))
  else
    padl=1
    printf 'FAIL %s - oczekiwano przejscia, skrypt zglosil:\n%s\n' "$nazwa" "$wynik"
  fi
}

# oczekuj_blad <nazwa testu> <katalog> <fragment komunikatu>
oczekuj_blad() {
  local nazwa="$1" kat="$2" fragment="$3" wynik
  if wynik="$(bash "$SKRYPT" "$kat" 2>&1)"; then
    padl=1
    printf 'FAIL %s - oczekiwano bledu, skrypt przeszedl\n' "$nazwa"
  elif ! printf '%s' "$wynik" | grep -qF -- "$fragment"; then
    padl=1
    printf 'FAIL %s - brak fragmentu "%s" w:\n%s\n' "$nazwa" "$fragment" "$wynik"
  else
    zaliczone=$((zaliczone + 1))
  fi
}

# --- czysty kit przechodzi ---
k="$(kopia_kitu czysty)"
oczekuj_ok "czysty kit" "$k"

# --- 1. profil.md ---
k="$(kopia_kitu profil-imie)"
sed -i 's/^imie:.*/imie: Marcin/' "$k/.onboarding/profil.md"
oczekuj_blad "profil: wypelnione imie" "$k" "pole 'imie'"

k="$(kopia_kitu profil-obszary)"
sed -i 's/^obszary:.*/obszary: [zdrowie]/' "$k/.onboarding/profil.md"
oczekuj_blad "profil: wypelnione obszary" "$k" "pole 'obszary'"

# --- 2. postep.md ---
k="$(kopia_kitu postep-status)"
sed -i 's/^| 0 | Start: poznajmy się | do-zrobienia | - | - |/| 0 | Start: poznajmy się | w-trakcie | 2026-09-16 | - |/' "$k/.onboarding/postep.md"
oczekuj_blad "postep: etap w trakcie" "$k" "etap"

k="$(kopia_kitu postep-gdzie)"
sed -i 's/^(jeszcze nie zaczęliśmy)/Skonczylismy na etapie 1./' "$k/.onboarding/postep.md"
oczekuj_blad "postep: gdzie skonczylismy" "$k" "Gdzie skończyliśmy"

k="$(kopia_kitu postep-domowa)"
sed -i 's/^(brak)/Dopisac trzy taski./' "$k/.onboarding/postep.md"
oczekuj_blad "postep: praca domowa" "$k" "Praca domowa"

# --- 3. log.md ---
k="$(kopia_kitu log-wpis)"
printf '\n## [2026-09-16] nowa strona | projekt-x\n\nZalozono karte.\n' >> "$k/90-System/log.md"
oczekuj_blad "log: dodatkowy wpis" "$k" "log.md"

# --- 4. index.md ---
k="$(kopia_kitu index-projekt)"
sed -i 's/^(jeszcze nic tu nie ma)/- [[projekt-x]] - pierwszy projekt/' "$k/90-System/index.md"
oczekuj_blad "index: wpis projektu" "$k" "index.md"

# --- 5. zawartosc katalogow ---
k="$(kopia_kitu zrodla-plik)"
printf 'notatka\n' > "$k/00-Zrodla/notatki-klienta.md"
oczekuj_blad "00-Zrodla: dodatkowy plik" "$k" "00-Zrodla"

k="$(kopia_kitu system-plik)"
printf '# Dashboard\n' > "$k/90-System/dashboard.md"
oczekuj_blad "90-System: dodatkowy plik" "$k" "90-System"

k="$(kopia_kitu onboarding-plik)"
printf 'x\n' > "$k/.onboarding/notatki.md"
oczekuj_blad ".onboarding: dodatkowy plik" "$k" ".onboarding"

k="$(kopia_kitu onboarding-brak)"
rm "$k/.onboarding/profil.md"
oczekuj_blad ".onboarding: brak profil.md" "$k" "profil.md"

# --- 6. sledzone pliki (tylko w repo git) ---
k="$(kopia_kitu git-local)"
( cd "$k" && git init -q && git add -A \
  && git -c user.email=t@t -c user.name=t commit -qm init \
  && mkdir -p .claude && printf '{}\n' > .claude/settings.local.json \
  && git add -f .claude/settings.local.json \
  && git -c user.email=t@t -c user.name=t commit -qm leak )
oczekuj_blad "git: settings.local.json sledzony" "$k" "settings.local.json"

# --- CRLF nie psuje sprawdzenia ---
k="$(kopia_kitu crlf)"
for f in "$k/.onboarding/profil.md" "$k/.onboarding/postep.md" "$k/90-System/log.md" "$k/90-System/index.md"; do
  sed -i 's/\r$//; s/$/\r/' "$f"
done
oczekuj_ok "czysty kit z CRLF" "$k"

if [[ $padl -eq 0 ]]; then
  printf 'OK: %d testow kit-clean przeszlo\n' "$zaliczone"
else
  exit 1
fi
