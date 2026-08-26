# Etap 2 - Codzienny workflow

## Cel etapu

Po tym etapie osoba zna magiczne frazy i rytm dnia z systemem: umie własnoręcznie dodać
taska, dopisać update do projektu i zapytać o status - i rozumie, co asystent robi w plikach
po każdej z tych fraz.

## Powtórka

Zadaj te pytania po kolei, jedno na raz, lekkim tonem. Jeśli osoba nie pamięta - przypomnij
odpowiedź i jedź dalej, to nie egzamin.

1. **Z jakich trzech warstw składa się Twój system?**
   Odpowiedź: źródła (`zrodla/` - surowe materiały, które tam wrzucasz), wiki (strony .md,
   które utrzymuje Claude: projekty, obszary, cele, kontakty, decyzje) i schemat
   (`CLAUDE.md` - spisane konwencje i workflowy).
2. **Co to jest Ingest?**
   Odpowiedź: workflow wchłaniania materiału. Asystent czyta materiał, omawia z Tobą wnioski,
   pisze lub aktualizuje strony wiki, aktualizuje `index.md` i dopisuje wpis do `log.md`.
3. **Czego asystent NIGDY nie robi w folderze `zrodla/`?**
   Odpowiedź: nie edytuje i nie kasuje tam plików. Źródła są tylko do odczytu - to Twoje
   surowe materiały, asystent z nich czyta, a pisze wyłącznie w stronach wiki.

## Materiał

Porcjuj na kroki. Po każdym kroku upewnij się jednym pytaniem, że osoba jest z Tobą,
zanim przejdziesz dalej. Wszystkie przykłady bierz z profilu osoby (`.onboarding/profil.md`) -
jej projekt, jej branża, jej słownictwo.

### Krok 1: jak mówić do asystenta

Wyjaśnij, że do asystenta mówi się normalnym językiem - nie ma składni do wykucia.
Powiedz mniej więcej: "Traktuj mnie jak bystrego współpracownika, który zna Twój system
od podszewki, ale nie zna Twojej głowy. Im więcej kontekstu mi dasz, tym lepiej trafię.
Zamiast 'dodaj task: zadzwonić' powiedz 'dodaj taska do projektu X: zadzwonić do Anny
w sprawie wyceny, najlepiej przed piątkiem'. Nie musisz niczego formatować - po prostu
mów, co masz w głowie."

### Krok 2: magiczne frazy

Pokaż osobie tę tabelę (możesz ją wypisać w rozmowie). Podkreśl: to są **skróty myślowe,
nie komendy**. Nie trzeba ich wpisywać słowo w słowo - "dorzuć zadanie do X", "co tam
u projektu X" czy "zanotuj przy X, że..." zadziałają tak samo, bo asystent rozumie intencję.
Tabela istnieje po to, żeby osoba wiedziała, CO system potrafi na jedno zdanie.

| Mówisz | Asystent robi |
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
| "Przegląd tygodnia" | rytuał tygodniowy (workflow z szablonu przeglad-tygodnia) |
| "Sprawdź spójność" | Lint - przegląd porządków w systemie (poznasz go w Etapie 5) |
| "Zapisz gdzie skończyliśmy" | zapisuje bieżący stan pracy na karty i do logu - przed przerwą albo świeżą sesją (poznasz za chwilę, w Kroku 5) |
| "Podsumuj dzień" | wieczorne domknięcie dnia: odhaczone taski, nowe sprawy, plan na jutro (poznasz w Etapie 5) |

Dodaj jedno zdanie kontekstu: frazy o dashboardzie, przeglądzie tygodnia i podsumowaniu
dnia zaczną działać w pełni po Etapie 5 - cała reszta działa już dziś.

### Krok 3: taski to checkboxy na kartach

Wyjaśnij, gdzie mieszkają zadania. Powiedz mniej więcej: "Twoje taski nie żyją w osobnej
apce. Każda karta projektu ma sekcję `## Nastepne kroki`, a w niej checkboxy `- [ ]`.
Gdy mówisz 'dodaj taska do X', dopisuję tam linijkę. Gdy pytasz 'co mam dziś do zrobienia',
przechodzę po wszystkich kartach i zbieram nieodhaczone checkboxy w jedną listę. Gdy coś
zrobisz, mówisz mi - a ja odhaczam." Pokaż osobie sekcję `## Nastepne kroki` na jej
własnej karcie projektu z Etapu 1, żeby zobaczyła to na żywo.

### Krok 4: log.md to dziennik, index.md to mapa

Wyjaśnij różnicę na prostym obrazie. Powiedz mniej więcej: "`index.md` to mapa - katalog
wszystkich stron, żebym zawsze wiedział, co istnieje i gdzie. `log.md` to dziennik pokładowy -
po każdej operacji dopisuję na końcu jedną linijkę: data, co zrobiłem, czego dotyczyło.
Do dziennika się tylko dopisuje, nigdy nic z niego nie kasujemy - dzięki temu zawsze możesz
zapytać 'co się działo w systemie w zeszłym tygodniu' i dostać odpowiedź." Wprowadź słowo
"append-only" jako ciekawostkę: tak się nazywa pliki, do których wolno tylko dopisywać.
Kluczowe rozróżnienie, które osoba ma wynieść: **karta pokazuje aktualny stan, log pokazuje
historię operacji**.

### Krok 5: sesje - czysta kartka, pamięć w plikach

To najważniejsza lekcja o samej pracy z asystentem w całym kursie - poświęć jej pełną uwagę.
Wyjaśnij obrazowo, mniej więcej tak:

"Jeszcze jedna rzecz, która odróżnia ludzi, którym asystent 'działa świetnie', od tych,
którym 'jakoś zgłupiał'. Nasza rozmowa to blat biurka: wszystko, o czym rozmawiamy,
rozkładam na blacie. Blat jest duży, ale nie nieskończony - gdy rozmowa ciągnie się
godzinami, robi się na nim ciasno: myślę wolniej i łatwiej mi coś umknąć. Twoje pliki to
szafka: co zapiszemy na kartach, w indeksie i w logu, zostaje tam na zawsze, niezależnie
od rozmowy. Stąd złota zasada: **jedna sprawa = jedna sesja**. Skończyliśmy temat?
Następny zaczynasz na czystym blacie - i nic nie tracisz, bo wszystko ważne leży w szafce."

Potem trzy konkrety, jeden na raz, z krótkim potwierdzeniem po każdym:

1. **Czysta kartka to `/clear`.** "Nie musisz zamykać terminala. Komenda `/clear` czyści
   rozmowę i zaczyna świeżą - a ja na starcie każdej sesji czytam CLAUDE.md, więc od
   pierwszej sekundy znam Twój system. To przetarcie blatu; szafka nietknięta."
2. **Przed przerwą: "Zapisz gdzie skończyliśmy".** "Jeśli przerywasz w środku czegoś,
   powiedz tę frazę - dopiszę stan do właściwej karty i do logu. W nowej sesji mówisz
   'kontynuujmy [temat]' i jedziemy dalej, jakby nic się nie stało. Ten onboarding działa
   dokładnie tak samo: po każdej lekcji zapisuję postęp do pliku i dlatego po każdej
   przerwie witam Cię we właściwym miejscu."
3. **Po czym poznać zmęczoną sesję.** "Odpowiedzi przychodzą wolniej, dopytuję o rzeczy,
   które już padły, gubię wątek - to znak, że blat jest zawalony. Wtedy trzy ruchy:
   'Zapisz gdzie skończyliśmy', potem `/clear`, potem 'kontynuujmy'. Zero strat."

Na koniec podkreśl: to nie jest wiedza awaryjna, tylko codzienna higiena - jak zamykanie
zbędnych kart w przeglądarce. Narzędzie jest to samo, różnica siedzi w czystym blacie.

## Działanie

W tym etapie budujecie jedno: kopię zapasową systemu przez git. To JEDYNA rzecz, którą
w tym etapie wykonujesz Ty sam - i tylko za wyraźną zgodą osoby.

1. Wyjaśnij git po ludzku, bez technikaliów. Powiedz mniej więcej: "Git to program, który
   robi migawki folderu. Migawka zapisuje stan wszystkich plików w danym momencie - jak
   zdjęcie całego systemu. Jeśli kiedyś coś się zepsuje albo skasujemy coś przez pomyłkę,
   cofamy się do wcześniejszej migawki i wszystko wraca. Taka migawka nazywa się commit."
2. Zapytaj wprost: "Chcesz, żebym włączył taką kopię zapasową dla Twojego systemu?
   Zajmie mi to chwilę i niczego nie zmienia w Twoich plikach."
3. Jeśli osoba się zgadza:
   - Sprawdź, czy git jest dostępny. UWAGA na Macu: nie odpalaj w ciemno `git --version` -
     na świeżym Macu bez narzędzi deweloperskich ta komenda wywołuje systemowe okno Apple
     z propozycją dużej instalacji. Bezpieczniej: `xcode-select -p` (jeśli zwraca ścieżkę,
     git jest). Jeśli gita nie ma: uprzedz osobę, że system zaproponuje instalację
     "narzędzi deweloperskich" (kilka-kilkanaście minut) - może zainstalować teraz albo
     odłożyć migawki na później (zanotuj w `postep.md` i przejdź do Ćwiczenia).
     Na Windowsie po prostu `git --version`.
   - Sprawdź, czy folder już jest repozytorium (istnieje katalog `.git` - tak będzie,
     jeśli osoba pobrała starter przez `git clone` zamiast ZIP-a). Jeśli tak: NIE rób
     `git init`; odepnij cudzy adres zdalny (`git remote remove origin`, jeśli istnieje)
     i przejdź od razu do commita.
   - Przed pierwszym commitem sprawdź `git config user.name` i `git config user.email`.
     Jeśli puste: zapytaj osobę o imię i adres e-mail i ustaw je LOKALNIE dla tego
     folderu (`git config user.name "..."`, `git config user.email "..."`, bez --global),
     wyjaśniając jednym zdaniem: "to tylko podpis migawek, nigdzie się nie wysyła".
   - Wykonaj w folderze systemu: `git init` (tylko jeśli repozytorium nie istniało),
     potem dodaj wszystkie pliki i zrób pierwszy commit z opisem w stylu
     "Pierwsza migawka systemu".
   - Pokaż osobie, że commit się udał, i powiedz mniej więcej: "Od teraz po każdej
     większej zmianie - nowy projekt, wchłonięcie materiałów, przegląd - będę robił
     migawkę automatycznie. Ty nie musisz nic pamiętać."
4. Jeśli osoba odmawia - uszanuj to bez namawiania, zanotuj decyzję w `postep.md`
   (żeby nie pytać ponownie w kolejnych etapach) i przejdź do Ćwiczenia.

## Ćwiczenie

Pełny cykl dnia z systemem. Osoba wpisuje wszystkie trzy frazy SAMA, własnymi słowami -
Ty nie podpowiadasz gotowego brzmienia do skopiowania, tylko mówisz, CO ma się stać.
Używaj nazwy jej realnego projektu z Etapu 1 (z pola `pierwszy_projekt` w profilu).

1. **Task.** Poproś: "Dodaj do swojego projektu jedno prawdziwe zadanie, które faktycznie
   masz do zrobienia - powiedz mi to tak, jak byś powiedział współpracownikowi."
   Osoba pisze np. "Dodaj taska do <projekt>: ...". Wykonaj frazę: dopisz checkbox
   w `## Nastepne kroki` karty. Potem pokaż osobie tę linijkę na karcie.
2. **Update.** Poproś: "Teraz dopisz do projektu coś, co się ostatnio wydarzyło - jakiś
   realny postęp, ustalenie albo problem." Osoba pisze np. "Dopisz do projektu <projekt>: ...".
   Wykonaj Ingest: zaktualizuj kartę (i pole `ostatnia_aktualizacja`), dopisz wpis do
   `log.md`. Pokaż osobie ten wpis w logu i nazwij to: "karta się zmieniła, a dziennik
   zapamiętał, że się zmieniła".
3. **Pytanie.** Poproś: "A teraz zapytaj mnie, co masz dziś do zrobienia." Osoba pisze
   np. "Co mam dziś do zrobienia?". Wykonaj Query: zbierz nieodhaczone checkboxy ze
   wszystkich kart i podaj listę. Poproś osobę, żeby sprawdziła, czy task z kroku 1
   jest na liście - to jej moment "aha, to naprawdę działa".
4. **Test czystej kartki.** Najpierw przygotuj grunt: zaktualizuj `.onboarding/postep.md` -
   Etap 2 na `w-trakcie`, a w "Gdzie skończyliśmy" wpisz dokładnie: "Etap 2, ćwiczenie,
   krok 4 - osoba właśnie testuje /clear; po jej powrocie potwierdź, że pamięć przetrwała,
   pokaż stan z postep.md i kart, i dokończ etap (pytanie kontrolne + kryterium ukończenia)".
   Dopiero potem powiedz mniej więcej: "Na deser najlepszy trik tego etapu - sprawdzimy
   Krok 5 w praktyce. Wpisz `/clear`. Nasza rozmowa zniknie CAŁA. A potem napisz po prostu:
   kontynuujmy - i patrz, co się stanie." Po powrocie osoby: przywitaj się, powiedz
   dokładnie, gdzie jesteście (z `postep.md`), przywołaj jej task i update z ćwiczenia
   (z kart i logu) i nazwij rzecz wprost: "Rozmowa zniknęła, system pamięta. To jest
   różnica między blatem a szafką - i dokładnie tak samo przenosisz każdą pracę do
   świeżej sesji."

Na koniec zadaj pytanie kontrolne: "Powiedz mi własnymi słowami: czym różni się to,
co zrobiłem z kartą projektu, od tego, co dopisałem do log.md?" Dobra odpowiedź kręci się
wokół: karta = aktualny stan projektu, log = historia tego, co się działo, nic się z niego
nie kasuje. Jeśli osoba miesza pojęcia - wróć na chwilę do obrazu mapy i dziennika.

## Kryterium ukończenia

- [ ] Osoba SAMA wpisała trzy frazy pełnego cyklu: task, update, pytanie o dzień.
- [ ] Task z ćwiczenia istnieje jako checkbox `- [ ]` w `## Nastepne kroki` jej karty projektu.
- [ ] Update z ćwiczenia jest widoczny na karcie, `ostatnia_aktualizacja` odświeżona,
      a w `log.md` jest wpis o tej operacji.
- [ ] Odpowiedź na "Co mam dziś do zrobienia?" zawierała task z kroku 1 i osoba to potwierdziła.
- [ ] Test czystej kartki: osoba wpisała `/clear`, wróciła słowem "kontynuujmy" i zobaczyła,
      że system pamięta stan (postęp, taski, log) mimo zniknięcia rozmowy.
- [ ] Osoba własnymi słowami wyjaśniła różnicę między dopisaniem do karty a wpisem do logu.
- [ ] Git: repozytorium zainicjowane i pierwszy commit zrobiony ALBO osoba świadomie
      odmówiła (decyzja zanotowana w `postep.md`).

## Praca domowa

Przekaż osobie dwa zadania na najbliższe 2 dni, na jej realnych sprawach:

1. **Używaj systemu naprawdę.** Codziennie minimum jeden update ("Dopisz do projektu...")
   i jedno pytanie ("Co mam dziś do zrobienia?", "Jaki jest status...?"). Nie na niby -
   na prawdziwych rzeczach z pracy i życia. I każdą nową sprawę zaczynaj od czystej
   kartki (`/clear`) - niech nawyk z Kroku 5 wejdzie w krew od pierwszego dnia.
2. **Kartka obserwacji.** Zapisz na kartce (albo w notatkach w telefonie) JEDNĄ rzecz,
   która Cię w systemie wkurza albo której Ci brakuje. Nie naprawiaj jej - tylko zapisz.
   Omówimy ją na początku Etapu 3 i wtedy zdecydujemy, co z nią zrobić.

Powiedz mniej więcej: "System, którego się nie używa przez 2 dni, umiera. Te 2 dni to test
na żywym organizmie - a Twoja kartka to najcenniejszy feedback, jaki mogę dostać."

## Zapis postępu

Na koniec pracy (także przy przerwaniu w połowie) zaktualizuj `.onboarding/postep.md`:

- W tabeli: Etap 2 → status `ukonczony` (albo `w-trakcie`, jeśli nie skończyliście),
  dzisiejsza data, krótka notatka (np. "git włączony, pierwszy commit zrobiony" albo
  "osoba zrezygnowała z gita - nie proponować ponownie").
- Sekcja "Gdzie skończyliśmy": konkretnie, np. "ukończony pełny cykl task-update-pytanie;
  zaczynamy Etap 3 od omówienia kartki obserwacji".
- Sekcja "Praca domowa": 2 dni realnego używania (min. 1 update + 1 pytanie dziennie)
  oraz kartka z jedną wkurzającą lub brakującą rzeczą - do omówienia w Etapie 3.

Jeśli w trakcie etapu zauważysz coś o stylu osoby (np. woli krótkie odpowiedzi, pisze
telegraficznie), dopisz to do "Notatki o preferencjach" w `.onboarding/profil.md`.
Jeśli git jest włączony - zrób na koniec etapu migawkę (commit) z opisem
"Etap 2 ukończony - codzienny workflow".
