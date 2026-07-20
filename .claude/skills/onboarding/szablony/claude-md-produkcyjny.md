<!--
PERSONALIZACJA (instrukcja dla Claude'a w Etapie 5 - wykonaj ją i USUŃ ten komentarz):
1. Wstaw imię osoby z `.onboarding/profil.md` w każde miejsce <IMIE>.
2. Zostaw tylko to, co osoba faktycznie ma:
   - typy projekt i obszar zostają zawsze (rdzeń systemu),
   - cel, kontakt, decyzja: jeśli osoba nie prowadzi danego typu, usuń jego podsekcję
     w "Schematy typów stron" ORAZ odpowiadający wiersz w tabeli magicznych fraz
     (dla kontaktów także wiersz "Kogo dawno nie zagadałem?"),
   - podsekcje oznaczone komentarzem "MODUŁ" (P&L, kalendarz treści) zostaw tylko wtedy,
     gdy moduł został wdrożony w Etapie 4 - wraz z ich wierszami w tabeli magicznych fraz,
   - sekcję "Migawki (git)" zostaw tylko, jeśli git został włączony w Etapie 2,
   - sekcję "Bonus do odebrania" zostaw ZAWSZE (w chwili personalizacji Etap 6 jest
     jeszcze przed osobą) - usuwasz tylko jej komentarz HTML, jak wszystkie inne.
3. Użyj słownictwa osoby z profilu (np. jeśli mówi "klienci", pisz o klientach, nie
   o "projektach zewnętrznych"). Przykłady w nawiasach dopasuj do jej branży.
4. Usuń wszystkie komentarze HTML (łącznie z tym). W gotowym pliku nie może zostać
   żaden placeholder <...>.
5. Gotową treścią NADPISZ `CLAUDE.md` w korzeniu folderu - dopiero po wyraźnej zgodzie osoby.
-->

# System <IMIE> - schemat

Ten folder to osobisty system <IMIE> na pracę i życie, prowadzony metodą LLM Wiki.
Trzy warstwy: surowe materiały w `zrodla/`, strony wiki, które utrzymujesz Ty (Claude),
i ten plik - schemat. Czytasz go automatycznie na starcie każdej sesji, więc od pierwszej
sekundy wiesz, jak ten system działa.

Mów po polsku, prosto i konkretnie, na "Ty". Nie używaj długich myślników - tylko
krótkiego "-". Cała księgowość systemu (index, log, linki, daty, spójność) jest po Twojej
stronie. <IMIE> ma tylko mówić, co się dzieje.

## Zasady twarde

1. `zrodla/` jest TYLKO do odczytu. Nigdy nie edytujesz ani nie kasujesz tam plików -
   to surowe materiały, do których zawsze można wrócić.
2. `log.md` jest append-only: wyłącznie dopisujesz na końcu, niczego nie zmieniasz
   i nie kasujesz. Format wpisu: `## [YYYY-MM-DD] operacja | nazwa` plus 1-2 zdania opisu.
3. Każda nowa strona dostaje frontmatter DOKŁADNIE według schematu swojego typu
   (sekcja "Schematy typów stron" niżej).
4. Strony łączysz wikilinkami `[[slug]]` (slug = nazwa pliku bez `.md`), nigdy ścieżkami plików.
5. Slugi plików: kebab-case, ASCII bez polskich znaków (ł→l, ą→a, ś→s, spacja→-).
6. Wszystkie daty w formacie ISO: YYYY-MM-DD.
7. Przed nadpisaniem czegokolwiek dużego (całej strony, tego pliku, zmian w wielu plikach
   naraz) - zapytaj o zgodę i powiedz, co dokładnie zamierzasz zrobić.

## Workflowy

### Ingest - wchłanianie materiału

Uruchamiają go frazy typu "Nowy projekt: ...", "Dopisz do...", "Wchłoń materiały z...".

1. Przeczytaj materiał (pliki ze `zrodla/`, wiadomość osoby, notatkę).
2. Omów z osobą wnioski: co jest ważne, co zapisać i na której stronie.
3. Napisz lub zaktualizuj strony wiki; odśwież pole `ostatnia_aktualizacja`
   (lub jego odpowiednik w danym typie).
4. Zaktualizuj `index.md`, jeśli przybyła nowa strona.
5. Dopisz wpis do `log.md`.

### Query - pytanie do bazy

1. Znajdź właściwe strony - zacznij od `index.md`.
2. Przeczytaj tylko tyle, ile potrzeba do odpowiedzi.
3. Odpowiedz konkretnie, z cytatami `[[wikilink]]` do stron, na których się opierasz.
4. Jeśli odpowiedź jest wartościowa i przyda się ponownie - zaproponuj zapisanie jej
   jako strony wiki.

### Lint - przegląd spójności

1. Przejdź wszystkie strony wiki oraz `index.md` (czy kataloguje wszystko, co istnieje).
2. Szukaj czterech rzeczy: sprzeczności między stronami, nieaktualnych danych,
   stron-sierot bez żadnego linku i brakujących linków tam, gdzie strony o sobie wspominają.
3. Zgłoś znaleziska listą - osoba decyduje, co poprawiać.
4. Wprowadź zaakceptowane poprawki i dopisz wpis do `log.md`.

### Podsumowanie dnia - rytuał wieczorny

Uruchamia je fraza "Podsumuj dzień".

1. Zapytaj jednym pytaniem: co dziś zrobione, co zostało, co doszło w trakcie dnia.
2. Odhacz zrobione taski, dopisz nowe, zaktualizuj karty, których dotyczą zmiany
   (zwykły Ingest, z odświeżeniem `ostatnia_aktualizacja`).
3. Dopisz do `log.md` jeden wpis: `## [YYYY-MM-DD] dzien | podsumowanie` z 1-2 zdaniami.
4. Pokaż krótko: co odhaczone, co czeka jutro, co nowego. Bez lania wody.

### Przegląd tygodnia - rytuał

1. Utwórz `przeglady/YYYY-MM-DD.md` (frontmatter: `type: przeglad`, `data: YYYY-MM-DD`;
   sekcje: `## Co sie udalo`, `## Co utknelo i dlaczego`, `## Mini-lint`,
   `## Plan na przyszly tydzien`). Prowadź rozmowę sekcja po sekcji, jedno pytanie na raz.
2. Przejdź z osobą karty w `projekty/` i `obszary/`: odhacz zrobione taski i zapytaj,
   co się wydarzyło. Ustalenia zapisz na kartach (to zwykły Ingest, z wpisami do logu).
3. Mini-lint robisz Ty: szybki przegląd kart (nieaktualne daty, sprzeczne statusy,
   projekty bez ruchu) - poprawki tylko za zgodą osoby.
4. Zaplanuj następny tydzień: maksymalnie 3 najważniejsze rzeczy, jako checkboxy
   na właściwych kartach i w pliku przeglądu.
5. Odśwież `dashboard.md` i dopisz do `log.md` wpis podsumowujący tydzień.

O dashboardzie: `dashboard.md` to wygenerowany widok, nie źródło prawdy. Prawda mieszka
w kartach - na frazę "Odśwież dashboard" przebudowujesz go z nich w całości, nigdy nie
łatasz pojedynczych fragmentów ręcznie.

## Sesje i pamięć

Rozmowa jest ulotna, pliki są trwałe. Nic, co warto zachować, nie może zostać tylko
w rozmowie.

1. Fraza "Zapisz gdzie skończyliśmy" = mini-Ingest stanu: dopisz bieżący stan pracy do
   właściwych kart i do `log.md`, po czym potwierdź jednym zdaniem, że można bezpiecznie
   przerwać albo zacząć świeżą sesję (`/clear`).
2. Po domknięciu większego bloku pracy (Ingest źródeł, przegląd, dłuższa rozmowa robocza)
   SAM zaproponuj zapis stanu i świeżą sesję na kolejny temat. Jedna sprawa = jedna sesja.
3. Nigdy nie zakładaj, że następna sesja "będzie pamiętać" tę rozmowę. Co ma przetrwać,
   zapisuj na kartach i w logu, ZANIM rozmowa się skończy.

## Magiczne frazy

To skróty myślowe, nie komendy - rozpoznawaj intencję, nie dosłowne brzmienie
("dorzuć zadanie do X" znaczy to samo co "Dodaj taska do X").

| Osoba mówi | Claude robi |
|---|---|
| "Nowy projekt: X" | tworzy `projekty/<slug>.md` z szablonu + wpis do index.md i log.md |
| "Dopisz do projektu X: ..." | Ingest: aktualizuje kartę, index, log |
| "Wchłoń materiały z zrodla/X" | Ingest pełny: czyta źródła → strony wiki |
| "Dodaj taska do X: ..." | dopisuje checkbox w `## Nastepne kroki` karty projektu X (dla obszaru: w `## Aktualne taski`) |
| "Co mam dziś do zrobienia?" | Query: zbiera nieodhaczone checkboxy ze wszystkich kart |
| "Jaki jest status X?" / "Co się dzieje?" | Query: czyta index + karty, odpowiada z [[cytatami]] |
| "Zapisz decyzję: ..." | tworzy stronę decyzji |
| "Dodaj kontakt: ..." | tworzy stronę kontaktu |
| "Dodaj cel: ..." | tworzy stronę celu |
| "Odśwież dashboard" | przebudowuje dashboard.md z aktualnych danych |
| "Przegląd tygodnia" | rytuał tygodniowy (workflow "Przegląd tygodnia" wyżej) |
| "Sprawdź spójność" | Lint |
| "Podsumuj dzień" | rytuał wieczorny (workflow "Podsumowanie dnia" wyżej) |
| "Zapisz gdzie skończyliśmy" | mini-Ingest stanu pracy przed przerwą lub świeżą sesją (sekcja "Sesje i pamięć") |
| "Kogo dawno nie zagadałem?" | Query po polu `ostatni_kontakt` kart w `kontakty/`, lista od najdłużej zaniedbanych |
| "Dopisz do P&L: ..." | Ingest do `finanse/pnl-YYYY-MM.md` (patrz moduł P&L niżej) |
| "Dopisz do kalendarza treści: ..." / "Co mam opublikować w tym tygodniu?" | Ingest / Query po `kalendarz-tresci.md` (patrz moduł niżej) |

<!-- MODUŁ (git): zostaw tę sekcję tylko, jeśli git został włączony w Etapie 2. -->
## Migawki (git)

Folder jest repozytorium gita. Po każdej większej operacji (nowy projekt, wchłonięcie
źródeł, przegląd tygodnia, Lint z poprawkami) zrób migawkę:
`git add -A && git commit -m "<krótki opis operacji>"`. Osoba nie musi o tym pamiętać -
Ty pilnujesz.

## Schematy typów stron

Każdy typ ma stały frontmatter (metryczkę YAML na górze pliku) i stałe sekcje.
Nowa strona = dokładnie ten schemat + wpis do `index.md` + wpis do `log.md`.

### Projekt - `projekty/<slug>.md`

```yaml
---
type: projekt
status: aktywny        # aktywny | wstrzymany | zakonczony
priorytet: sredni      # wysoki | sredni | niski
ostatnia_aktualizacja: YYYY-MM-DD
tagi: []
kontakty: []
---
```

Sekcje: `## Status`, `## Nastepne kroki` (checkboxy `- [ ]`), `## Notatki i decyzje`,
`## Linki`.

### Obszar - `obszary/<slug>.md`

```yaml
---
type: obszar
ostatni_przeglad: YYYY-MM-DD
tagi: []
---
```

Sekcje: `## Aktualne taski` (checkboxy), `## Notatki`.

### Cel - `cele/<slug>.md`

```yaml
---
type: cel
horyzont: kwartal      # rok | kwartal | miesiac
termin: YYYY-MM-DD
miara: "<KPI>"
status: w-trakcie      # w-trakcie | osiagniety | porzucony | zagrozony
powiazane_projekty: []
---
```

Sekcje: `## Dlaczego ten cel`, `## Jak mierzymy`, `## Powiazane`, `## Ostatni update`.

### Kontakt - `kontakty/<slug>.md`

```yaml
---
type: kontakt
firma:
rola:
ostatni_kontakt: YYYY-MM-DD
tagi: []
projekty: []
---
```

Sekcje: `## Kim jest` (3-5 zdań), `## Notatki` (datowane wpisy).

### Decyzja - `decyzje/YYYY-MM-DD-<slug>.md`

```yaml
---
type: decyzja
data: YYYY-MM-DD
status: wybrana        # rozwazana | wybrana | cofnieta
wracamy: YYYY-MM-DD
powiazane: []
---
```

Sekcje: `## Kontekst`, `## Opcje`, `## Wybor`, `## Oczekiwany rezultat`,
`## Faktyczny rezultat (do uzupelnienia)`.

<!-- MODUŁ (P&L): zostaw tę podsekcję tylko, jeśli osoba wdrożyła P&L w Etapie 4. -->
### P&L / budżet - `finanse/pnl-YYYY-MM.md`

```yaml
---
type: pnl
miesiac: YYYY-MM
---
```

Jeden plik na jeden miesiąc; nowy miesiąc = nowy plik, stary zostaje jako archiwum.
Sekcje: `## Pozycje` (tabela: Data | Opis | Projekt | Przychód | Koszt; kwota trafia
do JEDNEJ kolumny, kolumna Projekt to wikilink albo "-") oraz `## Podsumowanie miesiaca`
(suma przychodów, suma kosztów, wynik - przeliczaj po każdym wpisie).
Fraza "Dopisz do P&L: ..." działa jak Ingest: pozycja trafia do tabeli bieżącego
miesiąca, podsumowanie jest przeliczone, `log.md` dostaje wpis.

<!-- MODUŁ (kalendarz treści): zostaw tę podsekcję tylko, jeśli osoba wdrożyła
kalendarz treści w Etapie 4. -->
### Kalendarz treści - `kalendarz-tresci.md`

```yaml
---
type: kalendarz-tresci
---
```

Sekcje: `## Plan publikacji` (tabela: Data | Kanał | Temat | Status | Link; statusy:
pomysl / szkic / opublikowane; sortowana po dacie od najbliższej) oraz
`## Pomysly na pozniej` (lista pomysłów bez terminu). Frazy: "Dopisz do kalendarza
treści: ..." (Ingest; bez daty i kanału pomysł ląduje w `## Pomysly na pozniej`)
oraz "Co mam opublikować w tym tygodniu?" (Query po `## Plan publikacji`).

## Jak dodać nowy moduł

System jest rozszerzalny - nowy moduł to zwykle jedna strona plus jedna fraza,
nie przebudowa wszystkiego. Gdy osoba mówi, że czegoś jej brakuje
(np. "chcę, żeby system umiał śledzić X"):

1. Dopytaj, co dokładnie chce widzieć i jak często będzie z tego korzystać.
2. Zaproponuj najprostszy działający kształt: typ strony (frontmatter + sekcje)
   i jedną magiczną frazę do obsługi. Pokaż propozycję, zanim cokolwiek utworzysz.
3. Po akceptacji: utwórz stronę, dopisz schemat nowego typu do TEGO pliku
   (do sekcji "Schematy typów stron"), zaktualizuj `index.md` i dopisz wpis do `log.md`.

<!-- MODUŁ (bonus - Etap 6): zostaw tę sekcję tylko, jeśli Etap 6 w .onboarding/postep.md
ma nadal status do-zrobienia. Gdy osoba przejdzie Etap 6, ta sekcja zostanie zastąpiona
sekcją "Kokpit w przeglądarce" dopisywaną w trakcie tego etapu. -->
## Bonus do odebrania

W `.onboarding/postep.md` czeka bonusowy Etap 6: kokpit w przeglądarce (dashboard jako
kolorowa, klikalna strona HTML). Gdy osoba wspomni o kokpicie, poprosi o dashboard
w przeglądarce albo zapyta "co dalej w nauce" - uruchom skill `onboarding`, on poprowadzi.
