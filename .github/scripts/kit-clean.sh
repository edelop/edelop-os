#!/usr/bin/env bash
# kit-clean.sh - sprawdza, czy kit jest w stanie startowym, czyli takim, jaki ma pobrac
# osoba zaczynajaca onboarding. Uruchamiany w CI (.github/workflows/kit-clean.yml)
# i recznie: bash .github/scripts/kit-clean.sh [katalog-kitu]
#
# Sprawdza tylko pliki stanu (.onboarding/, 90-System/, 00-Zrodla/) - tresc procedur
# i szablonow moze sie zmieniac bez wplywu na ten skrypt.
set -euo pipefail
export LC_ALL=C.UTF-8

if [[ $# -ge 1 ]]; then
  ROOT="$1"
else
  ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
fi
cd "$ROOT"

bledy=()
blad() { bledy+=("$1"); }

# czytaj <plik> - tresc bez \r (repo trzyma CRLF)
czytaj() { tr -d '\r' < "$1"; }

# frontmatter <tresc> - linie miedzy pierwsza para '---'
frontmatter() { printf '%s\n' "$1" | awk 'NR==1 && /^---$/ {f=1; next} f && /^---$/ {exit} f'; }

# sekcja <tresc> <naglowek> - niepuste linie sekcji az do nastepnego '## '
sekcja() { printf '%s\n' "$1" | awk -v h="$2" '$0==h {f=1; next} f && /^## / {exit} f' | grep -v '^[[:space:]]*$' || true; }

# katalog_dokladnie <katalog> <plik>... - katalog zawiera dokladnie te wpisy
katalog_dokladnie() {
  local kat="$1"; shift
  if [[ ! -d $kat ]]; then blad "$kat: brak katalogu"; return; fi
  local oczekiwane jest
  oczekiwane="$(printf '%s\n' "$@" | sort)"
  jest="$( (cd "$kat" && find . -mindepth 1 | sed 's|^\./||' | sort) )"
  if [[ "$jest" != "$oczekiwane" ]]; then
    blad "$kat: ma zawierac tylko: $(printf '%s ' "$@")- a zawiera: $(printf '%s ' $jest)"
  fi
}

# --- 1. .onboarding/profil.md - puste pola profilu ---
plik=.onboarding/profil.md
if [[ -f $plik ]]; then
  fm="$(frontmatter "$(czytaj "$plik")")"
  for pole in imie czym_sie_zajmuje pierwszy_projekt bol preferencje; do
    printf '%s\n' "$fm" | grep -qE "^${pole}:[[:space:]]*$" \
      || blad "$plik: pole '$pole' ma byc puste (kit wysylamy bez danych osoby)"
  done
  printf '%s\n' "$fm" | grep -qE '^obszary:[[:space:]]*\[\][[:space:]]*$' \
    || blad "$plik: pole 'obszary' ma byc []"
fi

# --- 2. .onboarding/postep.md - wszystkie etapy do-zrobienia ---
plik=.onboarding/postep.md
if [[ -f $plik ]]; then
  tresc="$(czytaj "$plik")"
  wiersze="$(printf '%s\n' "$tresc" | grep -E '^\| [0-6] \|' || true)"
  liczba="$(printf '%s\n' "$wiersze" | grep -c . || true)"
  [[ $liczba -eq 7 ]] || blad "$plik: oczekiwano 7 wierszy etapow (0-6), jest $liczba"
  zle="$(printf '%s\n' "$wiersze" | grep -vE '\| do-zrobienia \| - \| - \|$' || true)"
  [[ -z $zle ]] || blad "$plik: kazdy etap ma miec status do-zrobienia, date - i notatke -; nie pasuje:"$'\n'"$zle"
  [[ "$(sekcja "$tresc" '## Gdzie skończyliśmy')" == '(jeszcze nie zaczęliśmy)' ]] \
    || blad "$plik: sekcja 'Gdzie skończyliśmy' ma zawierac tylko '(jeszcze nie zaczęliśmy)'"
  [[ "$(sekcja "$tresc" '## Praca domowa')" == '(brak)' ]] \
    || blad "$plik: sekcja 'Praca domowa' ma zawierac tylko '(brak)'"
fi

# --- 3. 90-System/log.md - tylko wpis przykladowy ---
plik=90-System/log.md
if [[ -f $plik ]]; then
  naglowki="$(czytaj "$plik" | grep -E '^## \[' || true)"
  [[ "$naglowki" == '## [2026-01-01] przyklad | tak wygladaja wpisy' ]] \
    || blad "$plik: ma zawierac tylko wpis przykladowy [2026-01-01] przyklad; wpisy:"$'\n'"$naglowki"
fi

# --- 4. 90-System/index.md - pusty indeks ---
plik=90-System/index.md
if [[ -f $plik ]]; then
  tresc="$(czytaj "$plik")"
  [[ "$(sekcja "$tresc" '## Projekty')" == '(jeszcze nic tu nie ma)' ]] \
    || blad "$plik: sekcja 'Projekty' ma zawierac tylko '(jeszcze nic tu nie ma)'"
  ! printf '%s\n' "$tresc" | grep -q '\[\[' \
    || blad "$plik: nie moze zawierac linkow [[...]] - indeks wysylamy pusty"
fi

# --- 5. katalogi stanu zawieraja dokladnie pliki startowe ---
katalog_dokladnie .onboarding postep.md profil.md
katalog_dokladnie 90-System index.md log.md
katalog_dokladnie 00-Zrodla README.md

# --- 6. pliki lokalne nie sa sledzone przez git ---
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  sledzone="$(git ls-files | grep -E '^\.obsidian/|^\.claude/settings\.local\.json$' || true)"
  [[ -z $sledzone ]] || blad "pliki lokalne sa w repo (git add -f?):"$'\n'"$sledzone"
fi

# --- wynik ---
if [[ ${#bledy[@]} -eq 0 ]]; then
  echo "OK: kit jest w stanie startowym"
  exit 0
fi
echo "BLAD: kit nie jest w stanie startowym (${#bledy[@]}):"
for b in "${bledy[@]}"; do
  printf -- '- %s\n' "$b"
done
exit 1
