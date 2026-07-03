# Etap 4 - Moduły specjalne (opcjonalny)

## Cel etapu

Po tym etapie osoba ma w systemie 1-2 moduły dobrane pod jej realne potrzeby (np. P&L,
kalendarz treści, mini-CRM, przegląd tygodnia) i wie, że system jest rozszerzalny - że nowy
moduł to zwykle jedna strona plus jedna magiczna fraza, a nie przebudowa wszystkiego.

## Powtórka

Zadaj te trzy pytania, po jednym na raz. Lekko, bez egzaminowania - jeśli osoba nie pamięta,
przypomnij odpowiedź i jedź dalej.

1. "Czym różni się projekt od obszaru?"
   Odpowiedź: projekt ma cel i koniec - da się go skończyć (karta w `projekty/`). Obszar to
   sfera życia bez deadline'u, którą się utrzymuje, np. zdrowie czy finanse (karta w `obszary/`).
2. "Jak dodajesz nową stronę do systemu magiczną frazą?"
   Odpowiedź: mówisz np. "Nowy projekt: X" albo "Dodaj kontakt: ...", a Claude tworzy plik
   z szablonu i od razu dopisuje go do `index.md` oraz robi wpis w `log.md`.
3. "Co pokazuje wikilink, czyli `[[nazwa-strony]]`?"
   Odpowiedź: wskazuje inną stronę w systemie - łączy strony w sieć. Dzięki temu Claude
   przy odpowiedziach cytuje konkretne strony, a w Obsidianie widać graf połączeń.

## Materiał

### Krok 1: uczciwie powiedz, że ten etap jest opcjonalny

Zanim cokolwiek pokażesz, powiedz mniej więcej: "Ten etap jest w pełni opcjonalny. Twój
system już działa: projekty, obszary, codzienny workflow. Teraz mogę pokazać Ci kilka
gotowych modułów-rozszerzeń, ale jeśli na dziś niczego z tej listy nie potrzebujesz,
spokojnie go pomiń - wrócimy, kiedy poczujesz potrzebę. Nic nie tracisz, moduł można
dodać w każdej chwili jedną prośbą."

Jeśli osoba chce pominąć: uszanuj to bez namawiania. W `.onboarding/postep.md` ustaw
Etap 4 na `pominiety` z datą i notatką (np. "na razie bez modułów, do powrotu w każdej
chwili"). Powiedz, że wystarczy kiedyś rzucić "chcę dodać moduł do systemu", a wrócicie
do tego menu. Potem przejdź do propozycji Etapu 5 albo zakończ sesję zgodnie z zasadami.

Jeśli osoba chce zostać - jedź dalej.

### Krok 2: pokaż ideę rozszerzalności

Wyjaśnij mniej więcej tak: "Twój system nie jest zamkniętym programem, tylko folderem
ze stronami i konwencjami. Nowy moduł to zwykle: jedna strona zbudowana z szablonu plus
jedna magiczna fraza, którą ją obsługujesz. Całą księgowość - aktualizację strony, indeksu,
logu - biorę na siebie. Dlatego dokładanie modułów nic Cię nie kosztuje."

### Krok 3: przedstaw menu modułów

Przedstaw cztery moduły. Zacznij od tych, które pasują do profilu (`.onboarding/profil.md`:
czym się zajmuje, ból, mapa wdrożenia) - jeśli w mapie wdrożenia z Etapu 0 coś już
zaplanowaliście, przypomnij to. Używaj słownictwa osoby.

- **P&L / budżet** (szablon: `szablony/pnl.md`). Dla osób z własnym biznesem albo klientami,
  ale działa też jako budżet domowy. Jedna strona z przychodami i kosztami miesiąca -
  dopisujesz pozycje na bieżąco jedną frazą, a wynik miesiąca widzisz w każdej chwili
  bez otwierania Excela.
- **Kalendarz treści** (szablon: `szablony/kalendarz-tresci.md`). Dla każdego, kto tworzy
  content: posty, newsletter, blog, wideo. Pomysły i terminy publikacji w jednym miejscu,
  więc nic nie ginie w notatkach na telefonie, a Claude podpowiada, co jest do zrobienia
  w tym tygodniu.
- **Mini-CRM** (rozbudowa istniejącego folderu `kontakty/`, bez nowego szablonu). Dla osób,
  u których relacje to praca: klienci, partnerzy, współprace. Karty kontaktów robią się
  bogatsze (datowane notatki, o czym rozmawialiście, co obiecane), a Claude odpowiada na
  pytanie "kogo dawno nie zagadałem?".
- **Przegląd tygodnia** (szablon: `szablony/przeglad-tygodnia.md`). Ten polecaj domyślnie
  KAŻDEMU, niezależnie od profilu. Cotygodniowy rytuał na 10-15 minut: co się wydarzyło,
  co odhaczyć, co planujesz na następny tydzień. To on sprawia, że system żyje tygodniami
  i latami, a nie umiera po miesiącu.

Potem zapytaj: "Który jeden albo dwa moduły bierzemy?". Jeśli osoba chce więcej niż dwa,
zaproponuj: dziś maksymalnie dwa, resztę dołożycie później jedną prośbą - lepiej wdrożyć
dwa naprawdę niż cztery na niby.

## Działanie

Dla każdego wybranego modułu przejdźcie pełny cykl: utwórz stronę z szablonu (tam, gdzie
moduł ma stronę), wypełnij ją ROZMOWĄ na realnych danych osoby (żadnych przykładowych
kwot ani zmyślonych pomysłów), dopisz nową stronę do `index.md` i wpis do `log.md`,
a na końcu pokaż magiczną frazę, którą moduł się obsługuje.

### Jeśli wybrano P&L / budżet

1. Utwórz z szablonu `szablony/pnl.md` plik `finanse/pnl-YYYY-MM.md` (bieżący miesiąc;
   jeden plik na miesiąc, stare zostają jako archiwum) i dostosuj nagłówek do bieżącego
   miesiąca.
2. Wypełnij rozmową: zapytaj o REALNE przychody bieżącego miesiąca (po jednym pytaniu),
   potem o realne koszty. Jeśli osoba nie pamięta kwot co do złotówki, wpiszcie szacunki
   i oznacz je jako "(szac.)" - lepszy żywy szacunek niż pusta tabela.
3. Policz i pokaż wynik miesiąca. To jest moment "wow" - powiedz mniej więcej: "I to
   jest cały myk: od teraz mówisz mi tylko 'Dopisz do P&L: ...', a bilans zawsze jest
   aktualny."
4. Dopisz `[[pnl-YYYY-MM]]` do `index.md`, wpis do `log.md`.
5. Pokaż frazę: **"Dopisz do P&L: faktura od klienta X, 3500 zł"** (albo koszt:
   "Dopisz do P&L: hosting, 60 zł"). Wyjaśnij, że działa jak "Dopisz do projektu X" -
   Ty aktualizujesz stronę, indeks i log.

### Jeśli wybrano kalendarz treści

1. Skopiuj `szablony/kalendarz-tresci.md` do `kalendarz-tresci.md` w głównym folderze.
2. Wypełnij rozmową: zapytaj o PRAWDZIWE pomysły na treści, które osoba nosi w głowie
   (po jednym), i o realne terminy lub rytm publikacji (np. "post co wtorek"). Wpisz
   pomysły do kalendarza z datami.
3. Dopisz `kalendarz-tresci` do `index.md`, wpis do `log.md`.
4. Pokaż frazy: **"Dopisz do kalendarza treści: pomysł na post o ..."** oraz pytanie
   **"Co mam opublikować w tym tygodniu?"** (Query po kalendarzu).

### Jeśli wybrano mini-CRM

1. Nie tworzysz nowego pliku - rozbudowujecie istniejące karty w `kontakty/`. Jeśli osoba
   ma mniej niż 2-3 kontakty, najpierw poproś, żeby SAMA dodała brakujące frazą
   "Dodaj kontakt: ...".
2. Rozmową wzbogać 2-3 realne karty: uzupełnij `ostatni_kontakt` (kiedy faktycznie
   ostatnio rozmawiali), dopisz do `## Notatki` datowane wpisy - o czym była ostatnia
   rozmowa, co komu obiecane, co jest do domknięcia.
3. Zaktualizuj `log.md` (i `index.md`, jeśli doszły nowe kontakty).
4. Pokaż frazę: **"Kogo dawno nie zagadałem?"** - i od razu ją zademonstruj: przeskanuj
   pola `ostatni_kontakt` na kartach i pokaż listę od najdłużej zaniedbanych. To jest
   moment "wow" tego modułu.

### Jeśli wybrano przegląd tygodnia

1. Otwórz `szablony/przeglad-tygodnia.md` i streść osobie w 2-3 zdaniach, jak wygląda
   rytuał: przechodzicie po kartach projektów i obszarów, odhaczacie zrobione, spisujecie
   co się wydarzyło, planujecie następny tydzień, a Ty robisz wpis do `log.md`.
2. Wyjaśnij, że ten moduł nie tworzy osobnej strony przy wdrożeniu - to workflow. Uruchamia
   go kanoniczna fraza **"Przegląd tygodnia"**, a Ty prowadzisz go według szablonu.
3. Umów porę: zapytaj, kiedy w tygodniu osoba realnie ma 10-15 minut spokoju (np. niedziela
   wieczorem, piątek po pracy). Zapisz wybraną porę w `.onboarding/profil.md` w sekcji
   "Notatki o preferencjach".
4. Samo pierwsze uruchomienie zostaw osobie - to jej ćwiczenie poniżej.

## Ćwiczenie

Osoba SAMA używa każdego wdrożonego modułu po raz pierwszy. Podaj instrukcję, ale nie
wykonuj za nią - ona wpisuje frazę własnymi rękami:

- P&L: osoba dopisuje jedną prawdziwą pozycję frazą "Dopisz do P&L: ...".
- Kalendarz treści: osoba dopisuje jeden prawdziwy pomysł frazą "Dopisz do kalendarza
  treści: ..." albo pyta "Co mam opublikować w tym tygodniu?".
- Mini-CRM: osoba pyta "Kogo dawno nie zagadałem?" i mówi Ci, do kogo faktycznie się
  odezwie w tym tygodniu.
- Przegląd tygodnia: osoba wpisuje frazę "Przegląd tygodnia" i robicie pierwszy mini
  przegląd - skróconą wersję na 5-10 minut (2-3 karty, plan na kilka dni), żeby poczuła
  rytm bez maratonu.

Weryfikacja: po każdym użyciu sprawdź, że strona faktycznie się zmieniła i że w `log.md`
jest wpis. Pokaż osobie różnicę ("zobacz, co dopisało się w pliku"). Na koniec poproś,
żeby jednym zdaniem powiedziała, do czego jej ten moduł - jeśli umie, etap siedzi.

## Kryterium ukończenia

Etap jest `ukonczony`, gdy:

- [ ] Osoba wybrała 1-2 moduły i każdy z nich istnieje z REALNYMI danymi (plik
      `finanse/pnl-YYYY-MM.md` lub `kalendarz-tresci.md` z prawdziwymi pozycjami,
      wzbogacone karty w `kontakty/`, albo przeprowadzony pierwszy mini przegląd
      tygodnia z wpisem w `log.md`).
- [ ] Każda nowa strona jest dopisana do `index.md`, a operacje mają wpisy w `log.md`.
- [ ] Osoba użyła KAŻDEGO wdrożonego modułu co najmniej raz SAMA, własną frazą.
- [ ] Osoba potrafi jednym zdaniem powiedzieć, do czego służy jej każdy wybrany moduł.

Alternatywnie etap jest `pominiety`, gdy osoba świadomie zdecydowała, że na razie nie
potrzebuje modułów - wtedy w `postep.md` status `pominiety` plus notatka, że można
wrócić w każdej chwili.

## Praca domowa

Zadaj pracę domową dopasowaną do wybranych modułów - moduł ma zadziałać w NATURALNYM
momencie życia, nie na sucho:

- Przegląd tygodnia: zrób pełny przegląd w umówionej porze (np. w niedzielę wieczorem) -
  wystarczy wpisać "Przegląd tygodnia".
- P&L: gdy pojawi się realny przychód albo koszt (faktura, zakup), od razu dopisz go
  frazą "Dopisz do P&L: ...".
- Kalendarz treści: gdy wpadnie Ci pomysł na treść, dopisz go frazą zamiast zapisywać
  w telefonie.
- Mini-CRM: odezwij się do jednej osoby z listy "dawno nie zagadanych" i po rozmowie
  powiedz "Dopisz do kontaktu X: ..." - niech karta się zaktualizuje.

Na koniec zapowiedz finał, mniej więcej tak: "Następny etap to finał - składamy wszystko
w całość: dashboard z widokiem na cały system, instrukcja obsługi i docelowy schemat,
dzięki któremu będziesz w pełni samodzielny. Przyjdź na niego po zrobieniu pracy domowej."

## Zapis postępu

Zaktualizuj `.onboarding/postep.md`:

- Wiersz Etapu 4: status `ukonczony` (albo `pominiety`, albo `w-trakcie` przy przerwaniu),
  dzisiejsza data, w notatce które moduły wybrano (np. "moduły: P&L + przegląd tygodnia").
- Sekcja "Gdzie skończyliśmy": konkretnie, np. "Etap 4 ukończony, wdrożone moduły X i Y;
  zaczynamy Etap 5 (dashboard i finał)". Przy przerwaniu w połowie: na którym kroku
  którego modułu stanęliście i od czego zaczynacie.
- Sekcja "Praca domowa": zadania z listy powyżej, dopasowane do wybranych modułów.

Zaktualizuj też `.onboarding/profil.md`: dopisz wybrane moduły do sekcji "Mapa wdrożenia"
(wraz z umówioną porą przeglądu tygodnia, jeśli był wybrany) i ewentualne nowe preferencje
do "Notatek o preferencjach". Etap 5 będzie z tego korzystał przy budowie dashboardu.
