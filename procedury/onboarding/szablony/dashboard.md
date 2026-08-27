---
type: dashboard
ostatnie_odswiezenie: YYYY-MM-DD
---
<!--
NIE EDYTUJ TEGO PLIKU RĘCZNIE. Ten plik jest przebudowywany W CAŁOŚCI, gdy osoba mówi
"Odśwież dashboard" - każda ręczna zmiana zniknie przy następnym odświeżeniu.
Taski odhaczamy na kartach projektów i obszarów, nie tutaj.

Docelowa lokalizacja: dashboard.md w korzeniu folderu (powstaje w Etapie 5 z tego szablonu).

Instrukcja przebudowy (dla asystenta, na frazę "Odśwież dashboard"):
1. "## Taski na dzis" - zbierz wszystkie nieodhaczone checkboxy `- [ ]` z sekcji
   "## Nastepne kroki" kart w projekty/ i "## Aktualne taski" kart w obszary/.
   Przy każdym tasku daj wikilink [[slug]] do strony, z której pochodzi.
2. "## Projekty" - tabela z frontmatteru wszystkich kart w projekty/: najpierw aktywne,
   w ramach aktywnych wysoki priorytet na górze; wstrzymane niżej, zakończone pomiń.
3. "## Cele" - cele o statusie w-trakcie lub zagrozony, każdy z miarą i terminem
   z frontmatteru; zagrożone oznacz dopiskiem "(zagrozony)".
4. "## Ostatnio w logu" - 5 ostatnich wpisów z log.md, od najnowszego.
5. Ustaw `ostatnie_odswiezenie` w frontmatterze na dzisiejszą datę.
-->

# Dashboard

## Taski na dzis

- [ ] <treść taska> ([[<slug-strony>]])
- [ ] <treść taska> ([[<slug-strony>]])

## Projekty

| Projekt | Status | Priorytet | Ostatnia aktualizacja |
|---|---|---|---|
| [[<slug-projektu>]] | aktywny | wysoki | YYYY-MM-DD |
| [[<slug-projektu>]] | aktywny | sredni | YYYY-MM-DD |

## Cele

- [[<slug-celu>]] - miara: <KPI z frontmatteru>, termin: YYYY-MM-DD
- [[<slug-celu>]] - miara: <KPI z frontmatteru>, termin: YYYY-MM-DD (zagrozony)

## Ostatnio w logu

- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
