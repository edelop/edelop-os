# Etap 1 - Pierwsza baza wiedzy

## Cel etapu

Po tym etapie osoba ma DZIAŁAJĄCĄ pierwszą bazę wiedzy zbudowaną na jej realnym projekcie:
kartę projektu, wpis w indeksie i wpis w logu. Rozumie trzy warstwy systemu i na własne
oczy zobaczyła dwa workflowy - Ingest (wchłanianie materiału) i Query (pytanie do bazy) -
na SWOICH danych, nie na przykładach.

## Powtórka

Zadaj te pytania po kolei, jedno na raz, lekkim tonem. Jeśli osoba nie pamięta - przypomnij
odpowiedź w jednym zdaniu i jedź dalej, bez egzaminowania.

1. **"Jakie trzy idee zabraliśmy z Etapu 0?"**
   Odpowiedź, do której prowadzisz: (1) folder = projekt - Twój system to zwykły folder
   z plikami, wszystko jest Twoje i czytelne; (2) CLAUDE.md = pamięć - Claude czyta ten plik
   na starcie każdej sesji i dzięki niemu Cię zna; (3) skill = procedura - spisany przepis
   na typ zadania, jak Superpowers. Jeśli osoba odpowie innymi słowami, ale sensownie - uznaj.

2. **"Po co zainstalowaliśmy Superpowers?"**
   Odpowiedź: to ceniona paczka dodatkowych umiejętności (skilli) z oficjalnego katalogu
   pluginów Claude Code, dzięki której Claude pracuje według sprawdzonych sposobów -
   np. porządnie planuje i robi burze mózgów zamiast rzucać się od razu do roboty.

3. **"Co robi komenda /model?"**
   Odpowiedź: pokazuje listę modeli dostępnych w Twoim planie i pozwala się przełączyć.
   Zasada: wybieramy najmocniejszy dostępny (jeśli na liście jest Opus 4.8 - jego).

## Materiał

Porcjuj na dwa kroki. Po każdym upewnij się krótkim pytaniem, że osoba jest z Tobą
(np. "Ma to sens?"). Wszystkie przykłady bierz z `.onboarding/profil.md` - z pola
`pierwszy_projekt` i słownictwa osoby. Poniżej wzorce używają zmiennej `<projekt osoby>` -
podstawiaj prawdziwą nazwę.

### Krok 1: trzy warstwy systemu

Wyjaśnij warstwy NA PRZYKŁADZIE projektu osoby - nawiąż do zajawki z Etapu 0, żeby osoba
czuła ciągłość, a nie powtórkę. Powiedz mniej więcej:

"Wczoraj wspomniałem o trzech warstwach systemu - dziś zobaczysz je w praktyce,
na przykładzie <projekt osoby>.

Warstwa 1: **źródła** - folder `zrodla/`. Tu wrzucasz surowe materiały: notatki, pliki,
maile, PDF-y dotyczące <projekt osoby>. Ja mam ZAKAZ ich edytowania. Czytam je, ale
oryginały zostają nietknięte - zawsze możesz sprawdzić, skąd wzięła się jakaś informacja.

Warstwa 2: **wiki** - strony, które ja piszę i utrzymuję na podstawie źródeł i naszych
rozmów. Na przykład karta projektu <projekt osoby>: co się dzieje, jakie są następne kroki,
co ustaliliśmy. To warstwa robocza - ja ją aktualizuję, Ty z niej korzystasz.

Warstwa 3: **schemat** - plik `CLAUDE.md`. To moja instrukcja obsługi Twojego systemu:
jakie są zasady, jakie typy stron, jak mam się zachowywać. Czytam go automatycznie na
starcie każdej sesji.

Krótko: źródła to surowiec, wiki to wiedza, schemat to zasady gry."

### Krok 2: czym jest strona wiki

Powiedz mniej więcej:

"Strona wiki to zwykły plik .md, czyli plik tekstowy, który ma na górze tzw. frontmatter -
metryczkę pliku, dzięki której system wie, co to jest. Metryczka mówi np.: to jest projekt,
status aktywny, priorytet wysoki, ostatnia aktualizacja wczoraj. Dzięki niej potrafię
jednym rzutem oka odróżnić projekt od kontaktu czy decyzji i szybko znaleźć to, czego
szukasz. Zaraz zobaczysz frontmatter na żywo, we własnej karcie projektu."

Nie wchodź głębiej w składnię YAML. Jedno zdanie definicji wystarczy - resztę osoba
zobaczy w praktyce w Działaniu.

## Działanie

Budujecie pierwszą bazę wiedzy wokół projektu z pola `pierwszy_projekt` w profilu.
Jeśli pole jest puste - najpierw zapytaj: "Nad jakim jednym projektem teraz pracujesz?
Od niego zaczniemy" i dopisz odpowiedź do profilu.

### Krok A: karta projektu - budowana ROZMOWĄ

1. Ustal slug: nazwa pliku w kebab-case, ASCII bez polskich znaków (ł zamień na l,
   ą na a, ś na s, spacja na "-"). Przykład: "Wdrożenie sklepu Kowalski" → `wdrozenie-sklepu-kowalski`.
   Powiedz osobie, jaki slug proponujesz i dlaczego tak wygląda.
2. Treść karty zbierz ROZMOWĄ. Ty pytasz, osoba opowiada, Ty piszesz. Zadawaj pytania
   pojedynczo, w tej kolejności:
   - "Opowiedz mi w 2-3 zdaniach, o co chodzi w tym projekcie i na jakim jest etapie."
   - "Jakie są 2-3 najbliższe kroki, które musisz zrobić?"
   - "Czy są jakieś ważne ustalenia, decyzje albo terminy, o których mam pamiętać?"
3. Utwórz `projekty/<slug>.md` z szablonu `szablony/karta-projektu.md`, wypełniając go
   tym, co usłyszałeś. Frontmatter DOKŁADNIE w tym schemacie:

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

   Sekcje karty: `## Status`, `## Nastepne kroki` (checkboxy `- [ ]`), `## Notatki i decyzje`,
   `## Linki`. Datę `ostatnia_aktualizacja` ustaw na dziś.
4. Pokaż osobie gotową kartę i przejdź po niej od góry: "To na górze to frontmatter -
   metryczka, o której mówiłem. Niżej Twój status, Twoje następne kroki jako checkboxy,
   miejsce na notatki i linki." Zapytaj: "Coś poprawić albo dodać?" i nanieś poprawki.

### Krok B: Ingest - pierwsze wchłonięcie materiału

Zapytaj: "Masz jakieś materiały do tego projektu? Notatki, pliki, maile, cokolwiek?"

**Jeśli osoba MA materiały:**

1. Poinstruuj: "Utwórz w Finderze (na Windows: w Eksploratorze) folder
   `zrodla/<slug>/` i przeciągnij tam swoje pliki. Daj znać, jak będą na miejscu."
   Jeśli osoba woli, możesz utworzyć pusty folder za nią - ale pliki wrzuca sama.
2. Gdy pliki są na miejscu, powiedz: "Teraz Ty wydajesz polecenie. Wpisz dokładnie:
   **Wchłoń materiały z zrodla/<slug>**". Osoba wpisuje frazę WŁASNORĘCZNIE - to jej
   pierwsza magiczna fraza i ma wyjść z jej rąk.
3. Przeprowadź pełny Ingest, w tej kolejności:
   - przeczytaj wszystkie pliki w `zrodla/<slug>/` (niczego w nich nie zmieniaj - to
     warstwa nietykalna),
   - **omów wnioski ZANIM cokolwiek zapiszesz**: powiedz mniej więcej "Z materiałów
     wyczytałem, że... Czy dobrze rozumiem? Coś się zdezaktualizowało?" i poczekaj
     na potwierdzenie lub korektę,
   - dopiero po potwierdzeniu zaktualizuj kartę `projekty/<slug>.md` (status, kroki,
     notatki, `ostatnia_aktualizacja`),
   - zaktualizuj `index.md` (wpis w `## Projekty`: wikilink `[[<slug>]]` + jedno zdanie
     opisu; usuń placeholder "jeszcze nic tu nie ma"),
   - dopisz na końcu `log.md` wpis w formacie `## [YYYY-MM-DD] ingest | <slug>`
     z 1-2 zdaniami, co wchłonąłeś. Wcześniej dopisz też wpis
     `## [YYYY-MM-DD] utworzenie karty | <slug>` za krok A, jeśli jeszcze go nie ma.

**Jeśli osoba NIE MA plików:** zrób Ingest z opowieści. Powiedz: "Nie szkodzi - Twoja
opowieść też jest materiałem". Dopytaj o 2-3 szczegóły, których jeszcze nie znasz
(np. kto jest zaangażowany, co jest największym ryzykiem, co się ostatnio wydarzyło),
omów wnioski tak samo jak wyżej, a potem zaktualizuj kartę, `index.md` i `log.md`
według tych samych zasad.

### Krok C: pokaż, co powstało

Pokaż osobie trzy rzeczy po kolei i wyjaśnij po jednym zdaniu na każdą:

- **karta** `projekty/<slug>.md` - "to żywa pamięć projektu; zawsze aktualna, bo ja ją
  aktualizuję po każdej rozmowie",
- **wpis w `index.md`** - "to spis treści systemu; dzięki niemu ja i Ty widzimy jednym
  rzutem oka, co w ogóle istnieje",
- **wpis w `log.md`** - "to dziennik zmian; gdybyś za miesiąc zapytał 'kiedy to
  ustaliliśmy?', tu jest odpowiedź".

Zamknij klamrą: "I to jest ta księgowość, którą przejmuję ja. Ty opowiedziałeś o projekcie,
a karta, indeks i log zaktualizowały się same. W prowadzeniu bazy wiedzy męczące nie jest
czytanie ani myślenie, tylko właśnie ta księgowość. A, i jeszcze jedno: to, co właśnie
zrobiliśmy z Twoimi materiałami, ma swoją nazwę - **Ingest**, czyli wchłanianie. Za chwilę
poznasz drugi workflow: **Query**, czyli pytanie do bazy. Te dwie nazwy warto zapamiętać,
bo to silnik całego systemu."

## Ćwiczenie

To jest moment "wow" tego etapu - osoba SAMA pyta swoją bazę i dostaje odpowiedź
z własnych danych.

1. Powiedz mniej więcej: "Teraz sprawdź swoją bazę. Zadaj jej pytanie o swój projekt -
   napisz np. **Jaki jest status <projekt osoby>?** albo zapytaj o coś konkretnego
   z materiałów, które wchłonęliśmy." Osoba wpisuje pytanie własnoręcznie. Jeśli poprosi,
   żebyś zadał je za nią - odmów z uśmiechem.
2. Odpowiedz workflowem Query: znajdź właściwe strony (zacznij od `index.md`, potem
   karta), odpowiedz konkretnie i przy każdym fakcie podaj cytat w formie wikilinka,
   czyli odnośnika do strony w podwójnych nawiasach, np. "najbliższy krok to X [[<slug>]]".
   Odpowiadaj WYŁĄCZNIE z plików systemu - jeśli czegoś w nich nie ma, powiedz to wprost.
3. Po odpowiedzi pokaż, co się właśnie stało. Powiedz mniej więcej: "Zauważ jedno:
   odpowiedziałem z TWOICH plików, nie z internetu i nie z ogólnej wiedzy. To był workflow
   Query - pytanie do bazy. Każdy [[nawias]] to strona w Twoim folderze - możesz poprosić:
   'pokaż mi tę stronę', albo otworzyć plik o tej nazwie. Im więcej tu wrzucisz, tym
   mądrzejsze będą odpowiedzi."
4. Weryfikacja: odpowiedź zawierała co najmniej jeden wikilink, zgadzała się z treścią
   karty, a osoba potwierdziła, że odpowiedź jest zgodna z rzeczywistością. Jeśli osoba
   wskaże błąd - potraktuj to jako mini-Ingest: popraw kartę, dopisz wpis do `log.md`
   i pokaż, że baza właśnie się nauczyła.

## Kryterium ukończenia

Etap jest ukończony, gdy WSZYSTKO poniżej jest prawdą:

- [ ] Istnieje `projekty/<slug>.md` z poprawnym frontmatterem, sensownym `## Status`
      i co najmniej 2 checkboxami w `## Nastepne kroki`.
- [ ] `index.md` ma wpis o projekcie z wikilinkiem `[[<slug>]]`.
- [ ] `log.md` ma co najmniej jeden nowy wpis z dzisiejszą datą dotyczący tego projektu.
- [ ] Przeszedł co najmniej jeden Ingest (z plików w `zrodla/<slug>/` albo z opowieści),
      a wnioski były omówione z osobą PRZED zapisem.
- [ ] Osoba SAMA zadała pytanie bazie i dostała odpowiedź z cytatami [[wikilink]].
- [ ] Osoba umie powiedzieć jednym zdaniem, co zbudowała i po co (zapytaj o to wprost
      na koniec).

## Praca domowa

Podaj osobie dwa zadania na czas do następnej sesji, na jej realnych danych:

1. "Dorzuć do `zrodla/<slug>/` kolejne materiały o projekcie - notatki, maile, pliki,
   co masz pod ręką. Potem wpisz: **Wchłoń materiały z zrodla/<slug>**."
2. "Zadaj swojej bazie 2 pytania o projekt - jedno o status, jedno o konkret
   z materiałów. Sprawdź, czy odpowiedzi się zgadzają. Jeśli coś jest nie tak -
   powiedz mi, poprawimy razem."

## Zapis postępu

Zaktualizuj `.onboarding/postep.md`:

- W tabeli: Etap 1 → status `ukonczony`, dzisiejsza data, krótka notatka
  (np. "karta <slug>, pierwszy Ingest i Query").
- Sekcja "Gdzie skończyliśmy": napisz konkretnie, np. "Ukończony Etap 1: działa karta
  [[<slug>]], osoba zrobiła pierwsze Query. Zaczynamy od Etapu 2 (codzienny workflow)."
  Jeśli przerwaliście w połowie - status `w-trakcie` i dokładnie: "skończyliśmy na kroku X,
  zaczynamy od Y".
- Sekcja "Praca domowa": wpisz oba zadania z powyższej sekcji, z prawdziwym slugiem.

Jeśli w trakcie etapu zauważyłeś coś o stylu osoby (np. woli krótkie odpowiedzi, myli się
w ścieżkach, lubi widzieć plik przed zatwierdzeniem) - dopisz to do sekcji "Notatki
o preferencjach" w `.onboarding/profil.md`.
