# Etap 0 - Start: poznajmy się

## Cel etapu

Po tym etapie osoba rozumie, czym jest Claude Code i ten system, ma ustawiony najmocniejszy
dostępny model, zainstalowane Superpowers, wypełniony profil i spersonalizowaną mapę wdrożenia.

## Materiał

Prowadź kroki 1-5 W TEJ KOLEJNOŚCI. Porcjuj: jeden krok na raz, po każdym kroku poproś
o krótkie potwierdzenie ("Jest?", "Widzisz to?", "Jasne, lecimy dalej?") i CZEKAJ na odpowiedź,
zanim przejdziesz dalej. Nie wysyłaj dwóch kroków w jednej wiadomości.

### Krok 1 - Powitanie i mapa procesu

Przywitaj się ciepło i krótko. Pokaż mapę całego procesu, żeby osoba wiedziała, w co wchodzi
i co z tego będzie miała. Powiedz mniej więcej:

"Cześć! Fajnie, że jesteś. Przez najbliższe dni będę Twoim przewodnikiem - przejdziemy razem
6 etapów, po jednym lub dwa dziennie, każdy zajmuje jakieś 20-40 minut. W sumie około
5 dni (a na koniec czeka jeszcze mały bonus dla chętnych).
Na końcu będziesz mieć dwie rzeczy: własny system na pracę i życie, który pamięta za Ciebie,
oraz umiejętność korzystania z niego na co dzień. Dziś etap zerowy: poznamy się, ustawimy
narzędzia i ułożę plan wdrożenia specjalnie pod Ciebie. Gotowa/gotowy?"

Poczekaj na potwierdzenie.

### Krok 2 - Najmocniejszy model

Wyjaśnij jednym zdaniem, po co to: "Zanim ruszymy, upewnijmy się, że rozmawiasz z najmądrzejszą
wersją mnie - im mocniejszy model, tym lepiej rozumiem kontekst i tym lepszym jestem przewodnikiem."

Potem poproś, żeby osoba SAMA wpisała komendę (nie rób tego za nią). Powiedz mniej więcej:

"Wpisz teraz w okno rozmowy: `/model` - wyświetli się lista modeli dostępnych w Twoim planie.
Jeśli widzisz na niej **Opus 4.8** - wybierz go. Jeśli nie widzisz, wybierz najwyższy z listy
(np. Sonnet). Daj znać, który wybrałaś/wybrałeś."

Uwaga dla Ciebie: dostępność Opusa zależy od planu (na Max jest na pewno, na Pro bywa
ograniczona). NIE obiecuj Opusa - obiecuj "najmocniejszy dostępny u Ciebie". Cokolwiek osoba
wybrała z górnej półki listy, pochwal i jedź dalej.

### Krok 3 - Superpowers

Najpierw wyjaśnienie, po ludzku. Powiedz mniej więcej:

"Teraz jedna instalacja, która zmienia bardzo dużo. Claude Code umie korzystać ze 'skilli' -
to takie procedury-przepisy: spisane instrukcje, które mówią mi krok po kroku, jak wykonać
konkretny typ zadania. Superpowers to ceniony zestaw skilli z oficjalnego katalogu pluginów
Claude Code, który uczy mnie JAK pracować:
najpierw dopytać i przemyśleć, potem zaplanować, systematycznie szukać przyczyn błędów
i weryfikować efekt, zanim go oddam. To podnosi jakość pracy z AI kilkukrotnie, bo przestaję
strzelać na oślep."

Potem instalacja - osoba wpisuje SAMA. Powiedz mniej więcej:

"Wpisz teraz: `/plugin install superpowers@claude-plugins-official`
(Jeśli wolisz klikać: wpisz `/plugin`, wejdź w zakładkę Discover, znajdź 'superpowers'
i zainstaluj - to ta sama droga.)"

Po potwierdzeniu instalacji przygotuj restart. Najpierw jednak jedna ważna lekcja przy
okazji: za chwilę pierwszy raz coś zapiszesz w plikach osoby (postęp poniżej) i osoba
pierwszy raz zobaczy okienko zgody. Uprzedź ją, mniej więcej tak:

"Zanim zrestartujemy, zapiszę nasz postęp do pliku - i tu ważna rzecz. Zobaczysz za chwilę
okienko z pytaniem o zgodę. Tak wygląda KAŻDA moja zmiana w Twoich plikach i każda komenda,
którą chcę uruchomić: w okienku widzisz, co dokładnie chcę zrobić i gdzie, a Ty zatwierdzasz
Enterem albo odmawiasz. Nic nie dzieje się bez Twojego 'tak'. Jedna rada na przyszłość:
opcje w stylu 'always allow' / 'nie pytaj ponownie' zaznaczaj tylko wtedy, gdy rozumiesz,
na co się zgadzasz - na początku najbezpieczniej zatwierdzać pojedynczo. To Twój pas
bezpieczeństwa, nie biurokracja."

Dopiero teraz - WAŻNE - zanim powiesz osobie o restarcie,
zaktualizuj `.onboarding/postep.md`: Etap 0 na `w-trakcie` z dzisiejszą datą, a w sekcji
"Gdzie skończyliśmy" wpisz dokładnie: "Etap 0, po instalacji Superpowers - po restarcie
zaczynamy od kroku 4 (trzy idee)". To dzięki temu (plus `CLAUDE.md`, który ładuje się
automatycznie na starcie każdej sesji) przywitasz osobę z powrotem i podejmiesz lekcję
we właściwym miejscu.

Dopiero potem powiedz mniej więcej:

"Żeby nowe skille się załadowały, potrzebny jest restart sesji - a sesja to po prostu
jedna ciągła rozmowa ze mną, od uruchomienia do zamknięcia. Zrób trzy rzeczy:
1. Wpisz `exit` (albo naciśnij Ctrl+C).
2. Uruchom mnie ponownie komendą `claude`.
3. Ważne: po starcie napisz cokolwiek, np. **jestem z powrotem** - ja nie odzywam się
   pierwszy, czekam na Twoją wiadomość.
Spokojnie - niczego nie stracimy, zapisałem, gdzie jesteśmy, i podejmę wątek dokładnie
w tym miejscu."

Jeśli czytasz to PO restarcie (postep.md wskazuje na krok 4): przywitaj osobę z powrotem,
np. "No i jesteś! Superpowers załadowane - to była Twoja pierwsza instalacja rozszerzenia,
gratulacje" - i kontynuuj od kroku 4.

### Krok 4 - Trzy idee (model mentalny)

Wyjaśnij trzy idee, na których stoi wszystko, co zbudujecie. Jedna na raz, prostym językiem.
Powiedz mniej więcej:

"Zanim pójdziemy dalej, trzy idee, które warto mieć w głowie - cała reszta to ich zastosowania.

Idea 1: **folder = projekt.** Ten folder, w którym teraz jesteśmy, to Twój system. Wszystko,
co zbudujemy, to zwykłe pliki tekstowe w tym folderze - możesz je otworzyć, przeczytać,
zabrać ze sobą. Zero magii, zero zamkniętych baz danych.

Idea 2: **CLAUDE.md = pamięć.** W folderze leży plik CLAUDE.md - czytam go automatycznie na
starcie każdej sesji. To dzięki niemu wiem, kim jesteś i jak z Tobą pracować, nawet jutro
i za miesiąc. Przed chwilą widziałaś/eś to na żywo: po restarcie od razu wiedziałem,
że jesteśmy w środku Etapu 0.

Idea 3: **skill = procedura.** Skill to spisany przepis na typ zadania. Właśnie
zainstalowałaś/eś Superpowers - żywy przykład: dołożyłaś/eś mi zestaw procedur i od tej
chwili pracuję inaczej. Ten onboarding też jest skillem, który leży w tym folderze."

Poproś o krótkie potwierdzenie, że te trzy idee siedzą, zanim pójdziesz dalej.

### Krok 5 - LLM Wiki w pigułce

Wyjaśnij metodę, według której zbudujecie system. Powiedz mniej więcej:

"Metoda, którą wdrożymy, nazywa się LLM Wiki - wymyślił ją Andrej Karpathy, jeden z najbardziej
znanych badaczy AI. System ma trzy warstwy:

1. **Źródła** - surowe materiały (notatki, dokumenty, maile), które wrzucasz do folderu
   `zrodla/`. Ja mam zakaz ich edytowania - to Twoja skrzynka wrzutowa.
2. **Wiki** - strony, które ja utrzymuję na podstawie źródeł i naszych rozmów: projekty,
   obszary życia, cele, kontakty, decyzje. Wszystko połączone linkami.
3. **Schemat** - plik CLAUDE.md z konwencjami: jak nazywamy pliki, co robię na Twoje hasła,
   jakie mam workflowy.

I najważniejsze: w prowadzeniu bazy wiedzy męczące nie jest czytanie ani myślenie, tylko
księgowość - aktualizowanie indeksów, linków, spójności. Tę księgowość przejmuję ja.
Ty myślisz i decydujesz, ja pilnuję porządku.

Jeśli chcesz zobaczyć, skąd ta metoda: oryginalny opis Karpathy'ego jest tutaj:
https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f - ale nie musisz go czytać,
przeprowadzę Cię przez wszystko."

Poproś o krótkie potwierdzenie i przejdź do Działania.

## Działanie

### Krok 6 - Wywiad adaptacyjny

Teraz poznajesz osobę. Zadaj MAKSYMALNIE 7 pytań, zawsze JEDNO na raz - czekaj na odpowiedź,
reaguj po ludzku (krótki komentarz, nie ankieta) i dopiero wtedy zadawaj następne. Jeśli osoba
odpowiedziała na coś przy okazji wcześniej, nie pytaj drugi raz. Pytania i przykładowe brzmienia:

1. Imię. "Zacznijmy od początku - jak masz na imię? Będę się tak do Ciebie zwracać."
2. Czym się zajmuje. "Czym zajmujesz się na co dzień? Praca, studia, własna firma - opowiedz
   w dwóch-trzech zdaniach."
3. Obszary do ogarnięcia. "Jakie obszary życia chcesz ogarnąć tym systemem? Dla podpowiedzi:
   praca i klienci, nauka, zdrowie, finanse, dom, twórczość - ale wymień swoje."
4. Największy chaos/ból. "A gdzie masz teraz największy chaos albo co najbardziej boli?
   To od tego zaczniemy, żeby system od razu się przydał."
5. Pierwszy projekt. "Wybierz JEDEN konkretny projekt na start - coś żywego, nad czym
   naprawdę teraz pracujesz, nie hipotetyczny przykład. Co to będzie?"
6. Styl pracy. "Jak lubisz pracować? Krótkie konkrety czy szczegółowe wyjaśnienia?
   Ogarniasz sprawy rano czy wieczorem?"
7. Stres wobec AI/technologii. "Ostatnie pytanie: czy coś Cię stresuje w AI albo w takich
   narzędziach? Obawa o dane, strach że coś zepsujesz, cokolwiek - powiedz szczerze."

Przy pytaniu 7: jeśli coś stresuje, rozbrój to konkretnie i krótko (np. wszystko to lokalne
pliki w Twoim folderze; ja pytam o zgodę, zanim cokolwiek zmienię; nic nie da się zepsuć
bezpowrotnie, bo pliki zawsze można cofnąć albo poprawić).

### Krok 7 - Zapis profilu i mapa wdrożenia

1. Wypełnij `.onboarding/profil.md`:
   - frontmatter (metadane na górze pliku między `---`): `imie`, `czym_sie_zajmuje`,
     `obszary` (lista), `pierwszy_projekt`, `bol`, `preferencje` - z odpowiedzi na pytania 1-6,
   - sekcja `## Notatki o preferencjach`: styl pracy, pora dnia, ewentualny stres wobec AI
     z pytania 7 i jak go adresować (np. "upewniać, że pliki są lokalne").
2. Ułóż i wpisz do `profil.md`, do sekcji `## Mapa wdrożenia`, spersonalizowany plan:
   które etapy i po co dla TEJ osoby (etapy 1-3 i 5 to rdzeń dla każdego; przy Etapie 4,
   który jest opcjonalny, zaznacz, które moduły wyglądają na przydatne przy jej obszarach
   i bólu, a które można pominąć), plus który projekt będzie pierwszą kartą i które obszary
   dostaną strony w Etapie 3.
3. Pokaż osobie mapę w rozmowie i powiedz mniej więcej: "To Twój plan wdrożenia - ułożyłem go
   pod to, co mi powiedziałaś/eś. Jutro w Etapie 1 zbudujemy pierwszą bazę wiedzy wokół
   projektu <nazwa>. Coś byś w tej mapie zmienił/a?" Nanieś ewentualne poprawki.
4. Zaktualizuj `.onboarding/postep.md` (szczegóły w sekcji "Zapis postępu" niżej).

## Ćwiczenie

Osoba wykonuje SAMA (Ty tylko instruujesz i sprawdzasz). Powiedz mniej więcej:

"Na koniec małe ćwiczenie na oswojenie z komendami. Wpisz `/usage` i powiedz mi, co widzisz."

`/usage` pokazuje zużycie limitu planu w Claude Code. Gdy osoba opisze, co widzi, wyjaśnij
jednym-dwoma zdaniami: plany mają limity odnawiane cyklicznie, ta komenda pozwala trzymać
rękę na pulsie, a przy naszym tempie (20-40 min dziennie) limit nie powinien być problemem.
Weryfikacja: osoba potrafi powiedzieć własnymi słowami, do czego służy `/usage`.

## Kryterium ukończenia

- [ ] Model ustawiony na najmocniejszy dostępny (osoba wybrała przez `/model`)
- [ ] Superpowers zainstalowane i sesja zrestartowana
- [ ] `.onboarding/profil.md` wypełniony (frontmatter + notatki o preferencjach)
- [ ] Mapa wdrożenia zapisana w `profil.md` i zaakceptowana przez osobę
- [ ] Ćwiczenie `/usage` wykonane

## Praca domowa

Zadaniem osoby jest zebranie materiałów do pierwszego projektu (tego z pytania 5) - przydadzą
się jutro w Etapie 1. Wyjaśnij dokładnie, jak to zrobić. Powiedz mniej więcej:

"Praca domowa na jutro: zbierz materiały o projekcie <nazwa>. Zrób tak:

1. Otwórz ten folder w Finderze (Mac) albo Eksploratorze plików (Windows) - to ten sam folder,
   który rozpakowałaś/eś z ZIP-a.
2. Wejdź do folderu `zrodla/` i utwórz w nim podfolder o nazwie `<slug>` - czyli krótkiej
   nazwie projektu pisanej małymi literami, bez polskich znaków, ze spacjami zamienionymi
   na '-' (np. 'Remont łazienki' to folder `remont-lazienki`).
3. Przeciągnij do niego wszystko, co masz o tym projekcie: notatki, dokumenty, PDF-y,
   arkusze, maile zapisane jako pliki. Może być bałagan - od tego jestem ja.

A jeśli nie masz żadnych plików - też dobrze. Zamiast zbierać, przemyśl, co mi jutro
o tym projekcie opowiesz: co to jest, na jakim jest etapie, co jest do zrobienia."

Podaj osobie slug ułożony z nazwy JEJ projektu, żeby nie musiała zgadywać.

## Zapis postępu

Na koniec pracy (także przy przerwaniu w połowie) zaktualizuj `.onboarding/postep.md`:

- W tabeli: Etap 0 -> status `ukonczony`, dzisiejsza data (YYYY-MM-DD), krótka notatka
  (np. "model + Superpowers + profil + mapa"). Przy przerwaniu w połowie: status `w-trakcie`
  i notatka, na którym kroku stanęliście.
- Sekcja "Gdzie skończyliśmy": konkretnie, np. "Ukończyliśmy Etap 0. Zaczynamy od Etapu 1 -
  pierwsza baza wiedzy wokół projektu <nazwa>."
- Sekcja "Praca domowa": wpisz zadanie, np. "Zebrać materiały o projekcie <nazwa>
  do `zrodla/<slug>/` albo przygotować się do opowiedzenia o nim."

Jeśli w trakcie etapu wyszły nowe preferencje osoby, dopisz je do sekcji
`## Notatki o preferencjach` w `.onboarding/profil.md`.
