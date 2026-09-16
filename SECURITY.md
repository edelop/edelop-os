# Bezpieczeństwo

Edelop OS to zestaw plików tekstowych - nie ma tu kodu, który uruchamia się na Twoim komputerze, ani serwera.
Mimo to są rzeczy, które warto zgłosić prywatnie, zanim trafią do publicznego issue.

## Co zgłaszać

- Dane osobowe albo prywatne treści, które trafiły do repozytorium (np. wypełniony
  `.onboarding/profil.md`, cudze notatki w `00-Zrodla/`).
- Klucz, token albo hasło w plikach lub w historii gita.
- Instrukcję w `AGENTS.md`, `CLAUDE.md` albo w `procedury/`, która mogłaby skłonić asystenta
  do zrobienia czegoś niebezpiecznego na komputerze osoby: kasowania plików poza folderem,
  wysyłania danych na zewnątrz, instalowania czegokolwiek bez pytania.
- Link w plikach kitu prowadzący do złośliwej albo podszywającej się strony.

## Jak zgłaszać

1. Najlepiej: na GitHubie zakładka **Security** > **Report a vulnerability**.
   Zgłoszenie widzą tylko opiekunowie repozytorium.
2. Zapasowo: mail na **hello@edelop.com** z tematem zaczynającym się od `[edelop-os security]`.

Nie zakładaj publicznego issue - dopóki problem nie jest naprawiony, jego opis mógłby
komuś zaszkodzić.

## Czego się spodziewać

Odpowiadamy w ciągu 7 dni. Po naprawie opiszemy problem w notce do wydania, a jeśli
chcesz - wymienimy Cię jako osobę, która go zgłosiła.

## Zakres

Dotyczy zawartości repozytorium `edelop/edelop-os`. Problemy z samymi asystentami
(Claude, Codex) zgłaszaj bezpośrednio do ich dostawców - Anthropic i OpenAI.
