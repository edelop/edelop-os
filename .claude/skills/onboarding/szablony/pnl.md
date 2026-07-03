---
type: pnl
miesiac: YYYY-MM
---
<!--
Prosty rejestr przychodów i kosztów (P&L). Jeden plik na jeden miesiąc:
finanse/pnl-YYYY-MM.md. Nowy miesiąc = nowy plik z tego szablonu, stary zostaje
jako archiwum.

Obsługa (dla Claude'a): pozycje dopisuje Claude, gdy osoba mówi frazę typu
"dopisz do P&L: ..." (np. "dopisz do P&L: faktura od klienta X, 5000 przychodu").
Wtedy:
1. Dodaj wiersz do tabeli w pliku bieżącego miesiąca (jeśli nie istnieje - utwórz
   go z tego szablonu). Data = dziś, chyba że osoba poda inną.
2. Przelicz "## Podsumowanie miesiaca" (suma przychodów, suma kosztów, wynik).
3. Dopisz wpis do log.md.
Zasady: jedna pozycja = jeden wiersz, kwota trafia do JEDNEJ kolumny (przychód
albo koszt), druga zostaje pusta. Wszystko w jednej walucie osoby. Kolumna
"Projekt" to wikilink do karty projektu albo "-" gdy pozycja ogólna.
-->

# P&L - <miesiąc słownie> YYYY

## Pozycje

| Data | Opis | Projekt | Przychód | Koszt |
|---|---|---|---|---|
| YYYY-MM-DD | <opis pozycji, np. faktura za projekt> | [[<slug-projektu>]] | <kwota> | |
| YYYY-MM-DD | <opis pozycji, np. subskrypcja narzędzia> | - | | <kwota> |

## Podsumowanie miesiaca

- Suma przychodów: <suma kolumny Przychód>
- Suma kosztów: <suma kolumny Koszt>
- Wynik: <przychody minus koszty>
- Komentarz: <1-2 zdania: co napędziło wynik, co zaskoczyło, na co uważać w kolejnym miesiącu>
