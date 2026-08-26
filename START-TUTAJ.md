# Start tutaj - instalacja krok po kroku

Ta strona przeprowadzi Cię od zera do momentu, w którym Claude przejmuje prowadzenie. Czytasz ją PRZED pobraniem folderu. Nie spiesz się, rób po kolei - każdy krok to dosłownie kilka minut.

## Czego potrzebujesz

- Komputer z systemem **Mac** albo **Windows**.
- Konto na [claude.ai](https://claude.ai) z planem **Pro** albo **Max**. Claude Code (program, w którym będziesz rozmawiać z Claude) wymaga płatnego planu - darmowe konto go nie obejmuje. Pro wystarcza na start; Max daje większe limity i pełny dostęp do najmocniejszych modeli. Konto zakładasz na claude.ai, plan wykupisz na [claude.ai/upgrade](https://claude.ai/upgrade).
- Około **30 minut** czasu.

## Krok 1: Zainstaluj Claude Code

Instalacja to wklejenie jednej komendy do terminala. Terminal to okno, w którym komputer przyjmuje polecenia tekstem - brzmi groźnie, ale użyjesz go tylko do wpisania paru słów.

### Na Macu

1. Naciśnij `Cmd + Spacja`, wpisz **Terminal** i naciśnij Enter. Otworzy się okno z migającym kursorem.
2. Wklej poniższą komendę i naciśnij Enter:

```
curl -fsSL https://claude.ai/install.sh | bash
```

3. Poczekaj, aż instalacja się skończy (zobaczysz komunikat o powodzeniu).

### Na Windowsie

1. Otwórz menu Start, wpisz **PowerShell** i naciśnij Enter. Otworzy się niebieskie okno z migającym kursorem.
2. Wklej poniższą komendę i naciśnij Enter:

```
irm https://claude.ai/install.ps1 | iex
```

3. Poczekaj, aż instalacja się skończy.

### Sprawdź, czy działa

Zamknij okno terminala, otwórz je na nowo (tak samo jak przed chwilą) i wpisz:

```
claude --version
```

Jeśli zobaczysz numer wersji - działa. Jeśli komputer mówi, że nie zna takiej komendy, zajrzyj do sekcji [Problemy?](#problemy) na dole.

## Krok 2: Zaloguj się

1. W tym samym oknie terminala wpisz `claude` i naciśnij Enter.
2. Przy pierwszym uruchomieniu Claude może najpierw zapytać o motyw kolorystyczny (wybierz dowolny i zatwierdź Enterem) i o zaufanie do bieżącego folderu (zatwierdź). Potem poprosi o zalogowanie - otworzy się przeglądarka. Zaloguj się na swoje konto claude.ai (to z planem Pro lub Max) i potwierdź.
3. Gotowe. Możesz na razie zamknąć Claude (wpisz `exit` albo naciśnij `Ctrl+C`) - zaraz uruchomimy go we właściwym miejscu.

## Krok 3: Pobierz ten folder

1. Wejdź na elevy.co do materiałów Akademii Edelop.
2. Pobierz paczkę **Edelop OS - kit startowy** (plik ZIP) i zapisz ją na pulpicie.
3. Rozpakuj pobrany plik ZIP tam, gdzie trzymasz dokumenty - na przykład do folderu **Dokumenty**. Powstanie folder z plikami tego startera. To będzie dom Twojego systemu, więc wybierz miejsce, które łatwo znajdziesz.

## Krok 4: Otwórz terminal W TYM folderze

Ważny krok: Claude musi wystartować w środku rozpakowanego folderu, żeby widzieć jego pliki.

Zanim otworzysz terminal, upewnij się, że jesteś we właściwym folderze: powinny być w nim widoczne pliki **README.md** i **START-TUTAJ.md**. Jeśli widzisz tylko jeden folder w środku (tak bywa po rozpakowaniu ZIP-a, zwłaszcza na Windowsie) - wejdź do niego i dopiero tam otwórz terminal.

### Na Macu

Wybierz jedną z dwóch dróg:

- **Przeciągnij:** otwórz Terminal (jak w Kroku 1), a potem przeciągnij rozpakowany folder z Findera prosto na okno lub ikonę Terminala. Naciśnij Enter.
- **Prawy klik:** w Finderze kliknij folder prawym przyciskiem i wybierz **Nowy Terminal w folderze** (jeśli nie widzisz tej opcji, włącz ją w: Ustawienia systemowe -> Klawiatura -> Skróty klawiszowe -> Usługi).

### Na Windowsie

Wybierz jedną z dwóch dróg:

- **Pasek adresu:** otwórz rozpakowany folder w Eksploratorze plików, kliknij w pasek adresu na górze, wpisz `cmd` i naciśnij Enter.
- **Prawy klik:** przytrzymaj `Shift` i kliknij prawym przyciskiem na pustym miejscu w folderze, potem wybierz **Otwórz okno programu PowerShell tutaj**.

## Krok 5: Start

1. W otwartym terminalu wpisz `claude` i naciśnij Enter.
2. Pojawi się pytanie o zaufanie do tego folderu - zatwierdź (wybierz opcję zaufania). To standardowe zabezpieczenie przy pierwszym otwarciu nowego folderu.
3. Napisz: **zaczynajmy**

Od tej chwili prowadzi Cię Claude - przywita się, zada kilka pytań i krok po kroku zbuduje z Tobą Twój system.

Jeszcze jedno: Claude będzie pytał o zgodę, zanim cokolwiek zmieni w plikach albo uruchomi komendę. To normalne i celowe - czytasz, co proponuje, i zatwierdzasz Enterem.

## Problemy?

- **"Komenda nie znaleziona" / "claude is not recognized" zaraz po instalacji** - zamknij okno terminala i otwórz je na nowo. Terminal wczytuje nowe programy dopiero przy starcie. Potem znów wpisz `claude --version`.
- **Napisałaś/eś "zaczynajmy", a Claude nie zaczyna onboardingu** - najpewniej terminal jest otwarty o jeden folder za wysoko (patrz uwaga w Kroku 4). Wpisz `exit`, wejdź do folderu, w którym widać README.md i START-TUTAJ.md, i powtórz Krok 4 i 5.
- **Claude Code mówi, że potrzebujesz planu** - Twoje konto claude.ai jest na planie darmowym. Wejdź na [claude.ai/upgrade](https://claude.ai/upgrade) i wybierz Pro albo Max, potem zaloguj się jeszcze raz.
- **Coś innego nie gra** - uruchom `claude` w dowolnym folderze i po prostu opisz problem po polsku. Claude zwykle sam podpowie, co poprawić.
