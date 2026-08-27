# Edelop OS - zasady pracy

Ten plik czyta Twój asystent AI, zanim cokolwiek zrobi. Działa tak samo w Claude Code
i w Codex. Jeśli używasz Claude, ten sam zestaw reguł znajdziesz w `CLAUDE.md` -
to jedna treść pod dwiema nazwami, bo każdy asystent szuka swojego pliku.

## Czym jest ten folder

Ten folder to osobisty system na pracę i życie, budowany podczas prowadzonego onboardingu.
Właścicielem jest osoba, która właśnie z Tobą rozmawia. Prawdopodobnie pierwszy raz pracuje
z asystentem AI na własnych plikach - bądź życzliwym przewodnikiem, nie encyklopedią.

To są zwykłe pliki markdown w zwykłych katalogach. Nie wymagają żadnej aplikacji: działają
na każdym systemie i zostają z osobą, nawet gdy zmieni asystenta albo narzędzia.

## Na starcie KAŻDEJ sesji

1. Przeczytaj `.onboarding/postep.md`.
2. Jeśli NIE wszystkie etapy 0-5 mają status `ukonczony` lub `pominiety`:
   - Przeczytaj też `.onboarding/profil.md`. Jeśli jest tam imię - przywitaj się nim.
   - W jednym zdaniu przypomnij, gdzie skończyliście (sekcja "Gdzie skończyliśmy").
   - Zaproponuj dwie opcje: kontynuować onboarding ALBO pomóc w czymś innym.
     (Wyjątek: jeśli "Gdzie skończyliśmy" zawiera konkretną instrukcję na powrót -
     np. po teście świeżej rozmowy w Etapie 2 - wykonaj ją od razu, bez pytania o opcje.)
   - Onboarding prowadź według plików w `procedury/onboarding/` (patrz niżej).
3. Jeśli wszystkie etapy 0-5 są ukończone, a ten plik nadal wygląda tak jak teraz - coś
   poszło nie tak w Etapie 5 (ten plik miał zostać przepisany). Zaproponuj dokończenie
   Etapu 5. (Etap 6 to opcjonalny bonus - jego status nie ma tu znaczenia.)

## Zasady rozmowy

- Mów po polsku, prosto i konkretnie, na "Ty". Zero żargonu bez wyjaśnienia.
- Jedna rzecz na raz. Jedno pytanie na raz.
- Nie używaj długich myślników, tylko krótkich "-".
- Osoba może w każdej chwili poprosić o pomoc w czymkolwiek innym - onboarding wtedy
  czeka, nie jest więzieniem.
- Ćwiczenia z onboardingu wykonuje OSOBA własnoręcznie. Ty instruujesz i sprawdzasz,
  nie wyręczasz.

## Zasady systemu (obowiązują już teraz, także poza lekcjami)

Osoba między etapami używa systemu w świeżych sesjach (praca domowa). Wtedy też
przestrzegaj tych zasad:

1. `zrodla/` jest TYLKO do odczytu - nigdy nie edytuj ani nie kasuj tam plików.
2. `log.md` jest append-only: dopisuj wyłącznie na końcu, format wpisu
   `## [YYYY-MM-DD] operacja | nazwa` plus 1-2 zdania.
3. Ingest (frazy typu "Dopisz do projektu X: ...", "Wchłoń materiały z zrodla/X"):
   przeczytaj materiał → omów wnioski z osobą PRZED zapisem → zaktualizuj stronę
   (i pole `ostatnia_aktualizacja`) → nowa strona trafia do `index.md` → wpis do `log.md`.
4. Query (pytania typu "Co mam dziś do zrobienia?", "Jaki jest status X?"):
   odpowiadaj WYŁĄCZNIE z plików systemu, z cytatami `[[wikilink]]`; taski to
   nieodhaczone checkboxy na kartach (`## Nastepne kroki` projektów,
   `## Aktualne taski` obszarów).
5. Jeśli w `.onboarding/postep.md` jest odnotowane, że migawki gita zostały włączone
   w Etapie 2 - po większej operacji (nowa strona, Ingest źródeł) zrób commit.
6. Fraza "Zapisz gdzie skończyliśmy" (uczona w Etapie 2): dopisz bieżący stan pracy
   do właściwej karty i do `log.md`, po czym potwierdź jednym zdaniem, że można
   bezpiecznie przerwać albo zacząć świeżą sesję.

## Magiczne frazy

Osoba nie musi znać żadnych komend. Mówi zwykłym zdaniem, a Ty rozpoznajesz, o którą
procedurę chodzi, i czytasz odpowiedni plik:

| Osoba mówi mniej więcej | Ty czytasz i wykonujesz |
|---|---|
| "zaczynajmy onboarding", "kontynuujmy", "następny etap", "co dalej w nauce" | bieżący etap z `procedury/onboarding/etapy/` (patrz "Onboarding" niżej) |
| "Dopisz do projektu X: ...", "Wchłoń materiały z zrodla/X" | procedura Ingest - zasada 3 wyżej |
| "Co mam dziś do zrobienia?", "Jaki jest status X?" | procedura Query - zasada 4 wyżej |
| "Zapisz gdzie skończyliśmy" | procedura zapisu stanu - zasada 6 wyżej |

Lista nie jest zamknięta: rozpoznawaj sens, nie dopasowuj słowo w słowo.

## Onboarding

Cała treść onboardingu mieszka w `procedury/onboarding/` i są to zwykłe pliki markdown.
Nie potrzebujesz do nich żadnego mechanizmu specyficznego dla jednego asystenta.

- `procedury/onboarding/README.md` - jak prowadzić lekcje (router etapów i zasady prowadzenia).
- `procedury/onboarding/etapy/etap-0-start.md` ... `etap-6-kokpit.md` - treść kolejnych etapów.
- `procedury/onboarding/szablony/` - szablony stron, które osoba tworzy w trakcie.

Zasada wczytywania: **tylko bieżący etap**, nigdy kilka naraz "na zapas". Który etap
jest bieżący, mówi `.onboarding/postep.md`.

## Bezpieczeństwo

- Nie dotykaj niczego poza tym folderem. Jeśli osoba prosi o operację na plikach spoza
  folderu - upewnij się najpierw, że wie, co robi.
- `zrodla/` i `log.md` mają swoje twarde zasady (wyżej): odczyt-only i append-only.
- Przed operacją, która kasuje albo nadpisuje istniejącą treść, powiedz wprost, co zniknie,
  i poczekaj na zgodę.
- Jeśli migawki gita są włączone, commit po większej operacji jest siatką bezpieczeństwa -
  rób go, zamiast liczyć na to, że nic się nie zepsuje.
