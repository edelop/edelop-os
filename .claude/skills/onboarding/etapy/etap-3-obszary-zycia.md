# Etap 3 - Obszary życia

## Cel etapu

Po tym etapie system wychodzi poza jeden projekt: osoba ma 1-2 obszary życia jako osobne
strony, zna typy stron, które jej dotyczą (obszar, cel, kontakt, decyzja), i widzi, jak
strony łączą się wikilinkami w żywą sieć - a nie leżą obok siebie jak luźne kartki.

## Powtórka

Zadaj te 3 pytania pojedynczo, lekko, bez tonu egzaminu. Jeśli osoba nie pamięta -
przypomnij odpowiedź jednym zdaniem i jedź dalej.

1. "Jakimi dwiema magicznymi frazami tworzysz projekt i dopisujesz do niego zadanie?"
   Odpowiedź: "Nowy projekt: X" oraz "Dodaj taska do X: ...".
2. "log.md jest append-only - co to znaczy w praktyce?"
   Odpowiedź: do log.md tylko dopisujemy nowe wpisy na końcu. Nic nie edytujemy, nic nie
   kasujemy. Dzięki temu log jest wiarygodną historią systemu.
3. "Po co w ogóle jest index.md?"
   Odpowiedź: to katalog wszystkich stron. Claude czyta go na starcie zamiast przeszukiwać
   cały folder - od razu wie, co istnieje i gdzie to leży.

## Materiał

Porcjuj: jeden krok, jedna reakcja osoby, dopiero potem następny krok.

### Krok 1: omów pracę domową

Zacznij od pracy domowej z Etapu 2 (jej treść znajdziesz w sekcji "Praca domowa"
w `.onboarding/postep.md`). Zapytaj wprost, mniej więcej: "Używałeś systemu przez ostatnie
dni. Co Cię wkurzało? Czego Ci brakowało?". Jedno pytanie na raz.

Wysłuchaj i ADRESUJ każdą zgłoszoną rzecz - bardzo często odpowiedzią jest właśnie to,
czego uczymy się dzisiaj: nowy typ strony albo obszar. Przykładowe mapowania:

- "Nie miałem gdzie wrzucać spraw zdrowotnych / domowych / finansowych" - to jest obszar,
  robimy go za chwilę.
- "Ustaliłem coś z człowiekiem i nie wiem, gdzie to trzymać" - to jest strona kontaktu.
- "Podjąłem decyzję i już nie pamiętam dlaczego" - to jest strona decyzji.
- "Mam ambicję na ten kwartał, ale ginie między taskami" - to jest strona celu.

Jeśli coś nie pasuje do żadnego typu strony - zanotuj to w profilu (sekcja "Notatki
o preferencjach") i powiedz uczciwie, że wrócicie do tego w Etapie 4 lub 5. Jeśli osoba
nie zrobiła pracy domowej albo nic jej nie uwierało - żadnego wyrzutu, po prostu przejdź
dalej.

### Krok 2: projekt vs obszar

Wyjaśnij różnicę, mniej więcej tak: "Projekt ma koniec - da się powiedzieć 'skończone'
i zamknąć kartę. Obszar nie ma końca: zdrowie, finanse, dom, relacje, rozwój. Nie
'kończysz' zdrowia. Obszar to sfera życia, którą chcesz mieć pod kontrolą stale, więc
zamiast statusu i deadline'u ma datę ostatniego przeglądu i bieżące taski."

Sprawdź zrozumienie jednym szybkim pytaniem, np.: "Remont łazienki - projekt czy obszar?
A ogarnianie domu w ogóle?" (remont = projekt, bo się kończy; dom = obszar, bo trwa).

### Krok 3: nowe typy stron - tylko te, które pasują do osoby

Przeczytaj `.onboarding/profil.md` (pola: czym_sie_zajmuje, obszary, bol) i przedstaw
TYLKO te typy, które mają sens w życiu tej osoby. Nie wykładaj całego katalogu. Zasada:

- **obszar** - przedstaw zawsze, to rdzeń tego etapu.
- **cel** - przedstaw, jeśli osoba ma mierzalną ambicję (przychód, waga, egzamin, liczba
  klientów). Jedno zdanie: "Cel to strona z terminem i miarą - żeby ambicja nie rozmyła
  się w codzienności."
- **kontakt** - przedstaw TYLKO, jeśli osoba pracuje z ludźmi: klienci, kontrahenci,
  współpracownicy, lekarze, trenerzy. Jeśli w profilu nie ma śladu takich relacji -
  nie wciskaj kontaktów, najwyżej wspomnij jednym zdaniem, że taki typ istnieje.
- **decyzja** - przedstaw krótko, jeśli w rozmowie padło "podjąłem decyzję" albo osoba
  narzeka, że zapomina dlaczego coś wybrała. Jedno zdanie: "Strona decyzji to notatka
  'co wybrałem i czemu' z datą powrotu - żeby za pół roku nie zgadywać."

Każdy typ opisuj jednym ludzkim zdaniem, bez pokazywania YAML-a na tym etapie - szablony
wejdą w Działaniu, na realnych danych osoby.

### Krok 4: wikilinki - strony zaczynają się łączyć

Wyjaśnij, mniej więcej: "Wikilink to zapis [[nazwa-strony]] w treści - taki link między
stronami Twojej wiki, jak w Wikipedii. Karta projektu może linkować do [[kontaktu]],
z którym go robisz. Cel linkuje do [[projektu]], który go realizuje. Z pojedynczych
kartek robi się sieć - i właśnie dzięki tej sieci ja, odpowiadając na Twoje pytania,
mogę skakać po powiązanych stronach zamiast zgadywać."

Dodaj jedno zdanie o samym slugu: w [[...]] wpisujemy nazwę pliku bez .md, np. strona
`kontakty/anna-nowak.md` to [[anna-nowak]].

## Działanie

Budujecie razem, na realnych danych osoby. Treść stron powstaje z rozmowy - Ty pytasz
(jedno pytanie na raz), osoba opowiada, Ty piszesz pliki. Każdą nową stronę od razu
dopisz do `index.md` i odnotuj w `log.md` (format: `## [YYYY-MM-DD] utworzono | <nazwa>`).

### Krok 1: wybierzcie 1-2 obszary

Zajrzyj do pola `obszary` w profilu i zaproponuj: "Z naszej pierwszej rozmowy wynika,
że Twoje sfery to <...>. Od którego obszaru zaczynamy? Weźmy jeden, góra dwa." Nie twórz
więcej niż dwóch obszarów - lepiej mniej stron, które żyją, niż katalog wydmuszek.

### Krok 2: utwórz kartę obszaru

Dopytaj o 2-4 bieżące taski w tym obszarze ("Co w tej sferze wisi Ci teraz nad głową?")
i o 1-2 rzeczy warte zanotowania. Utwórz `obszary/<slug>.md` dokładnie z tego szablonu:

```markdown
---
type: obszar
ostatni_przeglad: YYYY-MM-DD
tagi: []
---

# <Nazwa obszaru>

## Aktualne taski

- [ ] <task z rozmowy>
- [ ] <task z rozmowy>

## Notatki

**YYYY-MM-DD** - <notatka z rozmowy>
```

Powtórz dla drugiego obszaru, jeśli osoba go wybrała. Przypomnij przy okazji: "Fraza
'Dodaj taska do X: ...' działa też dla obszaru - task ląduje w sekcji Aktualne taski."

### Krok 3: jeśli pasuje - 1 cel i/lub 1-2 kontakty

Nie twórz na siłę. Jeśli w Kroku 3 Materiału typ okazał się trafiony - zaproponuj:

Cel (`cele/<slug>.md`) - dopytaj o termin, miarę i "po co", potem zapisz z szablonu:

```markdown
---
type: cel
horyzont: kwartal        # rok | kwartal | miesiac
termin: YYYY-MM-DD
miara: "<KPI>"
status: w-trakcie        # w-trakcie | osiagniety | porzucony | zagrozony
powiazane_projekty: []
---

# <Nazwa celu>

## Dlaczego ten cel

<z rozmowy>

## Jak mierzymy

<z rozmowy>

## Powiazane

- [[<slug-projektu>]]

## Ostatni update

**YYYY-MM-DD** - cel założony
```

Kontakt (`kontakty/<slug>.md`) - dopytaj kim jest ta osoba i co warto pamiętać:

```markdown
---
type: kontakt
firma:
rola:
ostatni_kontakt: YYYY-MM-DD
tagi: []
projekty: []
---

# <Imię i nazwisko>

## Kim jest

<3-5 zdań z rozmowy>

## Notatki

**YYYY-MM-DD** - <ustalenie / obserwacja>
```

Jeśli ani cel, ani kontakt nie pasują, a w rozmowie wypłynęła świeża decyzja - możesz
zamiast tego założyć stronę decyzji (`decyzje/YYYY-MM-DD-<slug>.md`, type: decyzja,
sekcje: Kontekst, Opcje, Wybor, Oczekiwany rezultat, Faktyczny rezultat (do uzupelnienia)).

### Krok 4: pokaż wikilinki w akcji

Teraz połącz strony - rób to przy osobie i mów co robisz:

- W karcie projektu z Etapu 1 (`projekty/<slug>.md`), w sekcji `## Linki`, dodaj link do
  powiązanego obszaru [[<slug-obszaru>]] i - jeśli istnieje - do kontaktu [[<slug-kontaktu>]].
- W stronie celu, w sekcji `## Powiazane`, dodaj [[<slug-projektu>]] i wpisz slug projektu
  do `powiazane_projekty`.
- W obszarze, w `## Notatki`, wspomnij projekt przez [[<slug-projektu>]], jeśli się wiążą.

W systemie mają być łącznie co najmniej 3 wikilinki. Potem efekt "wow": poproś osobę,
żeby sama wpisała "Jaki jest status <nazwa projektu>?" - i odpowiedz, cytując strony
przez [[wikilinki]], pokazując jak jedna odpowiedź spina projekt, obszar, cel i kontakt.
Skomentuj mniej więcej: "Widzisz? Nie szukałem po omacku - przeszedłem po linkach."

Jeśli osoba ma zainstalowanego Obsidiana, zaproponuj otwarcie widoku grafu - właśnie
pojawiły się w nim pierwsze połączenia. Jeśli nie ma, wspomnij jednym zdaniem, że taki
darmowy program istnieje (obsidian.md) i rysuje mapę tych linków - bez presji.

## Ćwiczenie

Osoba SAMA dodaje jedną stronę magiczną frazą. Ty tylko instruujesz i sprawdzasz.

1. Powiedz mniej więcej: "Twoja kolej. Wpisz jedną z fraz: 'Dodaj cel: ...' albo
   'Dodaj kontakt: ...' - z prawdziwą rzeczą z Twojego życia, nie wymyśloną." (Jeśli
   kontakty nie pasują do profilu, zaproponuj cel albo 'Zapisz decyzję: ...'.)
2. Gdy osoba wpisze frazę - utwórz stronę z właściwego szablonu, dopytując najwyżej
   o 1-2 brakujące rzeczy (np. termin celu). Zaktualizuj index.md i log.md.
3. Poproś osobę, żeby SAMA sprawdziła efekt: niech otworzy nowy plik i `index.md`
   (albo zapyta Cię "co jest w index.md?") i potwierdzi, że strona istnieje i figuruje
   w katalogu.
4. Ty zweryfikuj po swojej stronie: plik jest we właściwym folderze, frontmatter zgodny
   ze schematem, wpis w index.md i log.md obecny. Jeśli czegoś brakuje - napraw i powiedz
   co poprawiłeś.

Na koniec poproś osobę, żeby jednym zdaniem powiedziała, co dziś zbudowała i po co.
Jeśli powie coś w stylu "system ogarnia już nie tylko projekt, ale i moje życie,
a strony się łączą" - siedzi.

## Kryterium ukończenia

- [ ] Istnieje co najmniej 1 plik w `obszary/` z poprawnym frontmatterem i taskami
      w `## Aktualne taski`.
- [ ] Co najmniej 1 strona (cel, kontakt lub decyzja) została dodana SAMODZIELNIE
      przez osobę magiczną frazą.
- [ ] W systemie są co najmniej 3 wikilinki [[...]] łączące różne strony.
- [ ] Każda nowa strona ma wpis w `index.md` i w `log.md`.
- [ ] Osoba potrafi jednym zdaniem powiedzieć, czym różni się projekt od obszaru.

## Praca domowa

Przekaż mniej więcej tak:

1. "Przez najbliższe dni, gdy tylko coś wpadnie Ci do głowy z Twoich obszarów - wpisz
   'Dodaj taska do <obszar>: ...'. Nie zbieraj w głowie, zrzucaj do systemu od razu."
2. "Pomyśl, czy masz w życiu powtarzalny rytuał albo potrzebę, którą warto zautomatyzować.
   W następnym etapie możemy dobudować moduł - do wyboru masz m.in.: P&L / budżet
   (pilnowanie pieniędzy), kalendarz treści (jeśli publikujesz), mini-CRM kontaktów
   (jeśli żyjesz z relacji), przegląd tygodnia (cotygodniowe podsumowanie z Claude'em).
   Nie musisz wybierać teraz - wystarczy, że przyjdziesz z przemyśleniem."

## Zapis postępu

Zaktualizuj `.onboarding/postep.md`:

- Wiersz Etapu 3: status `ukonczony` (albo `w-trakcie` przy przerwaniu), data
  w formacie YYYY-MM-DD, w notatce wypisz co powstało (np. "obszary: zdrowie, finanse;
  cel: <slug>; 4 wikilinki").
- Sekcja "Gdzie skończyliśmy": konkretnie, np. "Etap 3 ukończony, zaczynamy Etap 4 od
  wyboru modułu" - a przy przerwaniu: na którym kroku stanęliście i od czego zaczynacie.
- Sekcja "Praca domowa": wpisz oba zadania z pracy domowej, łącznie z menu modułów
  Etapu 4 (P&L / budżet, kalendarz treści, mini-CRM kontaktów, przegląd tygodnia).

Zaktualizuj też `.onboarding/profil.md`: jeśli w rozmowie wypłynęły obszary, których nie
ma w polu `obszary` - dopisz je; do "Notatek o preferencjach" dodaj krótką obserwację
z lekcji (np. "kontakty nietrafione, żyje z produktu nie z relacji" albo "zapala się
do celów z liczbami").

Jeśli migawki gita są włączone (sprawdź notatkę w `postep.md`) - zrób na koniec etapu
migawkę (commit) z opisem "Etap 3 ukończony - obszary życia".
