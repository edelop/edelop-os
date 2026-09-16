---
type: dashboard
ostatnie_odswiezenie: YYYY-MM-DD
---
<!--
NIE EDYTUJ TEGO PLIKU RĘCZNIE. Ten plik jest przebudowywany W CAŁOŚCI, gdy osoba mówi
"Odśwież dashboard" - każda ręczna zmiana zniknie przy następnym odświeżeniu.
Taski odhaczamy na kartach projektów i obszarów, nie tutaj.

Docelowa lokalizacja: HOME.md w korzeniu folderu (powstaje w Etapie 5 z tego szablonu).

Instrukcja przebudowy (dla asystenta, na frazę "Odśwież dashboard"):
1. "## Taski" - zbierz wszystkie nieodhaczone checkboxy `- [ ]` z sekcji "## Nastepne kroki"
   kart w 20-Projekty/ i "## Aktualne taski" kart w 60-Obszary/. Pogrupuj w podsekcje w tej
   kolejności: "Pilne" (wszystkie taski z **PILNE**, niezależnie od terminu), "Zalegle"
   (termin `[termin:: YYYY-MM-DD]` minął), "Dzis", "Ten tydzien", "Bez terminu". Pustą
   podsekcję pomiń. Jeśli żaden task nie ma terminu ani PILNE, zrób jedną listę pogrupowaną
   per strona. Przy każdym tasku daj wikilink [[slug]] do strony, z której pochodzi.
2. "## Projekty" - tabela z frontmatteru wszystkich kart w 20-Projekty/: najpierw aktywne,
   w ramach aktywnych wysoki priorytet na górze; wstrzymane niżej, zakończone pomiń.
3. "## Cele" - cele o statusie w-trakcie lub zagrozony, każdy z miarą i terminem
   z frontmatteru; zagrożone oznacz dopiskiem "(zagrozony)".
4. "## Decyzje do sprawdzenia" - strony w 70-Decyzje/ typu decyzja o statusie wybrana,
   których data `wracamy` minęła albo wypada w ciągu 7 dni: wikilink, data wracamy i jedno
   zdanie z sekcji "Oczekiwany rezultat". Pomiń całą sekcję, jeśli nic nie czeka albo osoba
   nie prowadzi decyzji.
5. "## Ostatnio w logu" - 5 ostatnich wpisów z 90-System/log.md, od najnowszego.
6. Ustaw `ostatnie_odswiezenie` w frontmatterze na dzisiejszą datę.
-->

# Dashboard

## Taski

### Pilne

- [ ] **PILNE** <treść taska> ([[<slug-strony>]])

### Zalegle

- [ ] <treść taska> [termin:: YYYY-MM-DD] ([[<slug-strony>]])

### Dzis

- [ ] <treść taska> [termin:: YYYY-MM-DD] ([[<slug-strony>]])

### Ten tydzien

- [ ] <treść taska> [termin:: YYYY-MM-DD] ([[<slug-strony>]])

### Bez terminu

- [ ] <treść taska> ([[<slug-strony>]])

## Projekty

| Projekt | Status | Priorytet | Ostatnia aktualizacja |
|---|---|---|---|
| [[<slug-projektu>]] | aktywny | wysoki | YYYY-MM-DD |
| [[<slug-projektu>]] | aktywny | sredni | YYYY-MM-DD |

## Cele

- [[<slug-celu>]] - miara: <KPI z frontmatteru>, termin: YYYY-MM-DD
- [[<slug-celu>]] - miara: <KPI z frontmatteru>, termin: YYYY-MM-DD (zagrozony)

## Decyzje do sprawdzenia

- [[<YYYY-MM-DD-slug-decyzji>]] - wracamy: YYYY-MM-DD - oczekiwano: <jedno zdanie z sekcji Oczekiwany rezultat>

## Ostatnio w logu

- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
- [YYYY-MM-DD] <operacja> | <nazwa>
