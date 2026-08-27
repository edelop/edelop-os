# Etap 5 - Dashboard i samodzielność

## Cel etapu

Po tym etapie osoba ma dashboard - jedną stronę, na której widzi cały swój system na raz -
i - opcjonalnie - ogląda ten system jako sieć w Obsidianie. System dostaje docelowy schemat
(nowe `CLAUDE.md` i `AGENTS.md`, ta sama treść) i instrukcję obsługi (INSTRUKCJA.md).
Onboarding się kończy: osoba wie, że od dziś system działa bez lekcji i bez żadnej nakładki -
wystarczy otworzyć folder i mówić.

## Powtórka

Zadaj te trzy pytania, po jednym na raz. Lekko, nie jak egzamin - jeśli osoba nie pamięta,
przypomnij i jedź dalej.

1. **"Jakie trzy główne workflowy napędzają Twoją wiki?"**
   Odpowiedź: Ingest (wchłanianie materiału: przeczytaj, omów, zaktualizuj strony, index
   i log), Query (pytanie do bazy: znajdź strony, odpowiedz z cytatami [[wikilink]]),
   Lint (przegląd spójności). Jeśli osoba robiła już przegląd tygodnia z mini-lintem
   (Etap 4) - przypomnij go i zapowiedz, że dziś pełna wersja Linta; w przeciwnym razie
   zapowiedz, że dziś będzie premiera.
2. **"Gdzie w tym folderze Claude'owi NIE wolno nic zmieniać?"**
   Odpowiedź: w `zrodla/`. To surowe materiały - Claude je czyta, ale nigdy nie edytuje.
   Dzięki temu zawsze można wrócić do oryginału.
3. **"A teraz pytanie osobiste: która magiczna fraza jest Twoją ulubioną? Której używasz
   najczęściej albo która najbardziej Cię zaskoczyła?"**
   Tu nie ma złej odpowiedzi - każda jest dobra. Jeśli osoba żadnej nie pamięta, pokaż
   krótko tabelę fraz i pozwól wybrać. ZAPAMIĘTAJ odpowiedź - użyjesz jej przy
   personalizacji INSTRUKCJA.md w kroku 5.

Po powtórce powiedz mniej więcej: "To ostatni etap kursu. Dziś domykamy system: dostaniesz
dashboard, zobaczysz swoją wiki jako sieć, a na koniec przekażę Ci klucze - system będzie
działał bez onboardingu i beze mnie jako nauczyciela."

## Materiał

Porcjuj - jedno pojęcie, zaraz potem użycie w Działaniu.

**Krok A - co to jest dashboard.** Wyjaśnij mniej więcej tak: "Twoje dane są rozsiane po
kartach projektów, obszarach i celach. Dashboard to jedna strona, która zbiera to wszystko
w pigułce: taski, projekty, cele, ostatnie zmiany. Ważne: dashboard NICZEGO nie przechowuje -
to tylko widok wygenerowany z reszty systemu. Prawda mieszka w kartach, dashboard się z nich
przebudowuje. Dlatego nie edytujesz go ręcznie - mówisz 'Odśwież dashboard' i dostajesz
świeży. Od dziś myśl o nim jak o swoim centrum dowodzenia: jedno spojrzenie i wiesz,
co się dzieje w całym Twoim systemie."

**Krok B - dlaczego na koniec przepisujemy plik zasad.** Wyjaśnij warstwę schematu: "Pamiętasz
trzy warstwy: źródła, wiki, schemat. Schemat to plik zasad - ten, który Twój asystent czyta
automatycznie na starcie każdej sesji. Do tej pory mówił głównie jedno: 'prowadź
onboarding' (plus podstawowe zasady systemu). Onboarding się kończy, więc dziś przepiszemy
go na docelowy: pełny opis TWOJEGO systemu - jakie masz typy stron, jakie workflowy, jakie
frazy. Od jutra każda sesja zacznie się od wczytania tego schematu i asystent od
pierwszej sekundy będzie wiedział, jak działa Twój system. Zapiszemy go pod dwiema nazwami -
`CLAUDE.md` i `AGENTS.md` - żeby folder działał tak samo, gdybyś kiedyś zmieniła/zmienił
asystenta."

**Krok C - INSTRUKCJA.md, czyli ściąga dla człowieka.** Krótko: "Plik zasad to instrukcja
dla asystenta. INSTRUKCJA.md to instrukcja dla Ciebie: Twoje frazy, Twój rytm, co robić gdy
coś nie działa. Jak wrócisz do systemu po dwóch tygodniach przerwy, zaczynasz od niej."

## Działanie

### 1. Dashboard

- Weź szablon `procedury/onboarding/szablony/dashboard.md` i utwórz z niego
  `dashboard.md` w korzeniu folderu.
- Wypełnij go REALNYMI danymi osoby, nie przykładami (dokładnie wg instrukcji przebudowy
  z szablonu):
  - wszystkie nieodhaczone checkboxy z `## Nastepne kroki` kart w `projekty/` i z
    `## Aktualne taski` w `obszary/`, pogrupowane per strona, z wikilinkami do kart,
  - projekty: najpierw aktywne (wysoki priorytet na górze), potem wstrzymane;
    zakończone pomiń,
  - cele z `cele/` tylko o statusie w-trakcie lub zagrozony, z miarą i terminem
    (jeśli osoba ma cele),
  - 5 ostatnich wpisów z `log.md`,
  - data wygenerowania.
- Uwzględnij TYLKO moduły, które osoba faktycznie ma. Jeśli pominęła np. cele, sekcja celów
  nie istnieje w jej dashboardzie.
- Pokaż osobie gotowy plik i powiedz mniej więcej: "To zdjęcie Twojego systemu na dziś.
  Kiedy chcesz świeże, mówisz po prostu: Odśwież dashboard. Za chwilę sam(a) to zrobisz."

### 2. Obsidian - zobacz swój system jako sieć

To WOW-moment finału. Zaproponuj mniej więcej tak: "Twoje strony linkują do siebie
wikilinkami. Jest darmowy program, który pokazuje te połączenia jako graf - Twoja wiki
wygląda w nim jak mapa myśli, która urosła sama. Chcesz zobaczyć?"

Jeśli osoba chce, poprowadź krok po kroku (osoba klika, Ty instruujesz):

1. Wejdź na obsidian.md i pobierz Obsidian (darmowy).
2. Po instalacji wybierz "Open folder as vault" (vault to po prostu folder z notatkami)
   i wskaż TEN folder - ten sam, w którym rozmawiamy.
3. Otwórz widok grafu (ikona grafu w lewym pasku).
4. Daj osobie chwilę na oglądanie. Powiedz mniej więcej: "Każda kropka to Twoja strona,
   każda kreska to link. To jest system, który zbudowaliśmy przez ten tydzień - i on
   będzie gęstniał z każdym Ingestem."

Jeśli osoba nie chce instalować - w porządku, nie naciskaj. Powiedz, że system w 100%
działa bez Obsidiana (to tylko podgląd, nie silnik) i że może wrócić do tego kiedykolwiek.

### 3. Pierwszy Lint

- Zapowiedz: "Teraz trzeci workflow, którego jeszcze nie widziałaś/eś w akcji: Lint,
  czyli przegląd spójności. Ja przejrzę cały system i poszukam czterech rzeczy:
  sprzeczności między stronami, nieaktualnych danych, stron-sierot bez żadnego linku
  i brakujących linków tam, gdzie strony o sobie wspominają."
- Wykonaj Lint naprawdę: przejdź strony w `projekty/`, `obszary/`, `cele/`, `kontakty/`,
  `decyzje/`, sprawdź `index.md` (czy kataloguje wszystkie strony) i daty
  `ostatnia_aktualizacja`. Zgłoś znaleziska i zaproponuj poprawki - osoba decyduje.
- Na tak młodym systemie znajdziesz mało albo nic. To dobrze - powiedz wprost: "System ma
  kilka dni, więc jest czysty. Lint to rytuał na przyszłość: gdy stron będzie 50, to on
  będzie pilnował porządku za Ciebie. Wchodzi na stałe do przeglądu tygodnia - uruchamiasz
  go frazą: Sprawdź spójność."

### 4. Przepisanie pliku zasad (CLAUDE.md i AGENTS.md)

Najpierw wyjaśnij osobie, co zaraz zrobisz i CZEMU - to jej system, żadnych zmian
po cichu. Powiedz mniej więcej: "Do tej pory plik zasad w Twoim folderze mówił mi jedno:
prowadź onboarding. Onboarding właśnie się kończy, więc za Twoją zgodą nadpiszę go
docelowym schematem: opisem Twoich typów stron, workflowów i magicznych fraz. To ten plik
sprawi, że każda przyszła sesja zacznie się od asystenta, który już zna Twój system.
Zapiszę go pod dwiema nazwami - `CLAUDE.md` i `AGENTS.md` - to ta sama treść; jeden plik
czyta Claude, drugi Codex, więc folder zadziała u obu."

Po zgodzie:

- Weź szablon `procedury/onboarding/szablony/zasady-produkcyjne.md`.
- Spersonalizuj go: zostaw TYLKO moduły, które osoba ma (bez sekcji o celach, jeśli ich
  nie prowadzi; bez kontaktów, jeśli je pominęła), i użyj jej słownictwa z
  `.onboarding/profil.md` (np. "klienci" zamiast "projekty zewnętrzne", jeśli tak mówi).
  Sekcję "Bonus do odebrania" zostaw - to furtka do Etapu 6.
- NADPISZ **oba** pliki w korzeniu folderu osoby: `CLAUDE.md` i `AGENTS.md`, tą samą
  spersonalizowaną treścią. Nie personalizuj ich osobno - to jeden plik zapisany dwa razy.
- Pokaż osobie wynik w 2-3 zdaniach (co zawiera, nie czytaj całości) i dodaj: "Zmiana
  zadziała w pełni od następnej sesji - plik zasad ładuje się na starcie. W tej sesji
  i tak wszystko pamiętam."

### 5. INSTRUKCJA.md

- Weź szablon `procedury/onboarding/szablony/instrukcja.md` i wygeneruj z niego
  `INSTRUKCJA.md` w korzeniu folderu.
- Spersonalizuj:
  - frazy, których osoba FAKTYCZNIE używa (z ulubioną z powtórki na czele),
  - tylko jej moduły i typy stron,
  - jej rytm pracy (np. jeśli mówiła, że planuje rano - wpisz "rano: Co mam dziś do
    zrobienia?"; jeśli robi przegląd w piątki - wpisz piątek przy przeglądzie tygodnia).
- Powiedz mniej więcej: "To Twoja ściąga. Nie musisz nic z niej pamiętać - jak zapomnisz,
  jak coś się robiło, otwierasz INSTRUKCJA.md albo po prostu mnie pytasz."

### 6. Zamknięcie onboardingu

- Zaktualizuj `.onboarding/postep.md`: Etap 5 na `ukonczony` z dzisiejszą datą - etapy 0-5
  mają być teraz `ukonczony` lub `pominiety`. (Wiersz Etapu 6 - bonusu - zostaje
  `do-zrobienia`; to normalne.)
- Dopisz na końcu `log.md` wpis: `## [YYYY-MM-DD] onboarding | ukonczony` z jednym zdaniem
  podsumowania (np. ile stron ma system na dziś).
- Jeśli migawki gita są włączone (sprawdź najpierw notatkę o gicie w
  `.onboarding/postep.md` - jeśli osoba w Etapie 2 odmówiła, NIE proponuj, nawet gdy
  katalog `.git` istnieje), zaproponuj commit, czyli zapisanie migawki wszystkich zmian:
  np. `git add -A && git commit -m "Onboarding ukonczony - system gotowy"`. Osoba
  zatwierdza, Ty wykonujesz. Jeśli gita nie ma - pomiń bez komentarza.
- CELEBRACJA. Policz konkretne liczby z systemu (strony w `projekty/`, `obszary/`, `cele/`,
  `kontakty/`, `decyzje/`; nieodhaczone taski; wpisy w `log.md`) i powiedz mniej więcej:
  "Zobacz, co zbudowałaś/eś przez ten tydzień: [N] stron wiki, [M] tasków na radarze,
  [K] wpisów w dzienniku, dashboard i mapę połączeń. To jest Twój Edelop OS -
  zbudowany Twoimi rękami, ze zwykłych plików, które są w 100% Twoje. Tydzień
  temu to był pusty folder. I najważniejsze: od dziś nie ma już lekcji. System działa bez
  żadnej nakładki - otwierasz folder w swoim asystencie i po prostu mówisz, czego potrzebujesz."

### 7. Co dalej

Krótko, bez przytłaczania - cztery rzeczy i jedna furtka:

- "System rośnie organicznie: nowa rzecz w życiu = Nowy projekt: X. Nic nie planujesz
  z góry."
- "Raz w tygodniu: Przegląd tygodnia. To najważniejszy nawyk z całego kursu."
- "Raz na miesiąc: Sprawdź spójność - Lint posprząta to, co się rozjechało."
- "Jest też bonus, Etap 6: Twój dashboard jako kolorowy kokpit w przeglądarce - klikalna
  strona, którą otwierasz dwuklikiem, bez instalowania czegokolwiek. Jak najdzie Cię
  ochota, powiedz po prostu: pokaż mi kokpit."
- "A gdy poczujesz, że czegoś brakuje - powiedz mi wprost: chcę, żeby system umiał X.
  Rozbudowa systemu to normalna rozmowa, nie osobny kurs."

## Ćwiczenie

Osoba wykonuje SAMA, Ty tylko instruujesz i sprawdzasz:

1. Poproś, żeby osoba dopisała jeden drobny, prawdziwy task swoją frazą, np.
   "Dodaj taska do [jej projekt]: ...". Wykonaj.
2. Potem osoba wpisuje: **"Odśwież dashboard"**. Przebuduj `dashboard.md` i pokaż różnicę -
   nowy task ma być widoczny w dashboardzie.
3. Jeśli osoba ma Obsidiana: poproś, żeby otworzyła `dashboard.md` i widok grafu i sama
   zobaczyła, gdzie nowy element siedzi w sieci.

Weryfikacja: dashboard zawiera świeżo dodany task i dzisiejszą datę wygenerowania. Jeśli
tak - powiedz osobie, że właśnie samodzielnie wykonała pełny cykl: zapis do systemu
i odświeżenie widoku. Dokładnie tak wygląda codzienność od jutra.

## Kryterium ukończenia

- [ ] `dashboard.md` istnieje w korzeniu i zawiera realne dane osoby (taski, projekty,
      ostatnie wpisy logu, data wygenerowania)
- [ ] Osoba samodzielnie odpaliła "Odśwież dashboard" i widziała efekt
- [ ] Pierwszy Lint wykonany i omówiony (nawet jeśli nic nie znalazł)
- [ ] `CLAUDE.md` w korzeniu NADPISANY wersją produkcyjną, spersonalizowaną (tylko moduły
      osoby, jej słownictwo); nie ma w nim już instrukcji onboardingowych
- [ ] `INSTRUKCJA.md` istnieje w korzeniu i jest spersonalizowana
- [ ] `.onboarding/postep.md`: etapy 0-5 mają status `ukonczony` lub `pominiety`
      (Etap 6 - bonus - może zostać `do-zrobienia`)
- [ ] Wpis `## [YYYY-MM-DD] onboarding | ukonczony` na końcu `log.md`
- [ ] Tydzień próbny umówiony: osoba zna rytm rano ("Co mam dziś do zrobienia?")
      i wieczorem ("Podsumuj dzień")
- [ ] Obsidian jest opcjonalny - jego brak NIE blokuje ukończenia etapu

## Praca domowa - tydzień próbny

Skończyły się prace domowe z lekcji - zostaje jedna umowa, najważniejsza w całym kursie.
Przedstaw ją z pełnym przekonaniem, mniej więcej tak:

"Ostatnia rzecz i mówię zupełnie serio. Ten system przeżyje tylko wtedy, gdy przejdzie
test pierwszego tygodnia. Narzędzia porzuca się nie dlatego, że są złe, tylko dlatego,
że przez tydzień nikt do nich nie zajrzał. Dlatego umawiamy się na tydzień próbny:
7 dni, dwa momenty dziennie, w sumie jakieś 5 minut.

- **Rano, zanim otworzysz cokolwiek innego:** wpisz `claude` i zapytaj: **Co mam dziś do
  zrobienia?** Dostajesz plan z własnego systemu, zamiast układać go w głowie od zera.
- **Wieczorem, na koniec pracy:** powiedz: **Podsumuj dzień** - i opowiedz mi w 2-3
  zdaniach, co zrobiłaś/eś, co zostało, co doszło w trakcie dnia. Ja odhaczam taski,
  dopisuję nowe, aktualizuję karty i domykam dzień wpisem w dzienniku. Ty nic nie klikasz.
- **Siódmego dnia:** powiedz: **Przegląd tygodnia.** Zobaczysz czarno na białym, ile system
  zapamiętał za Ciebie - to zwykle ten moment, w którym ludzie mówią 'okej, to zostaje
  ze mną na stałe'.

Po co ten rygor? Rano-plan i wieczór-raport to pętla, dzięki której system jest zawsze
aktualny - a systemu, który jest aktualny, po prostu chce się używać. Umowa stoi?"

Poczekaj na wyraźną deklarację. Potem dopisz umówione pory (rano/wieczór, godziny jeśli
padły) do `.onboarding/profil.md` (Notatki o preferencjach) i upewnij się, że sekcja Rytm
w INSTRUKCJA.md je odzwierciedla.

## Zapis postępu

To zapis FINALNY - zrób go starannie:

- W `.onboarding/postep.md` ustaw Etap 5 na `ukonczony` z dzisiejszą datą. Upewnij się,
  że w etapach 0-5 nie został żaden status `do-zrobienia` ani `w-trakcie` (Etap 6 - bonus -
  może zostać `do-zrobienia`).
- Sekcja "Gdzie skończyliśmy": wpisz "Onboarding ukończony w całości [YYYY-MM-DD]. System
  działa samodzielnie - schemat w CLAUDE.md, ściąga w INSTRUKCJA.md. Bonusowy Etap 6
  (kokpit w przeglądarce) czeka na życzenie."
- Sekcja "Praca domowa": wpisz "Tydzień próbny do [data +7 dni]: rano 'Co mam dziś do
  zrobienia?', wieczorem 'Podsumuj dzień', 7. dnia 'Przegląd tygodnia'."
- Jeśli w trakcie etapu zauważyłeś nowe preferencje osoby, dopisz je do sekcji "Notatki
  o preferencjach" w `.onboarding/profil.md` - przydadzą się w codziennej pracy.
- Jeśli etap został przerwany w połowie: zostaw status `w-trakcie` i zapisz w "Gdzie
  skończyliśmy" dokładnie, na którym kroku Działania stanęliście (np. "skończyliśmy na
  kroku 3 - Lint; zaczynamy od kroku 4 - przepisanie CLAUDE.md").
