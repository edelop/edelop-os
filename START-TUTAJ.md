# Start tutaj - instalacja krok po kroku

Ta strona przeprowadzi Cię od zera do momentu, w którym asystent przejmuje prowadzenie. Czytasz ją PRZED pobraniem folderu. Nie spiesz się, rób po kolei - każdy krok to dosłownie kilka minut.

**Bez terminala.** Instalujesz zwykłą aplikację, tak jak każdą inną: pobierasz, klikasz, logujesz się. Terminal jest opisany na dole jako droga alternatywna, dla osób, które go lubią - ale nie jest potrzebny.

## Krok 1: Wybierz asystenta

Edelop OS działa tak samo z dwoma asystentami. Wybierz jednego - możesz zmienić zdanie później, folder zostaje ten sam.

| | **Claude** | **Codex** |
|---|---|---|
| Aplikacja | Claude (zakładka **Code**) | Codex / ChatGPT |
| Czego potrzebujesz | konto na [claude.ai](https://claude.ai) z planem **Pro** albo **Max** | konto ChatGPT z planem **Plus**, **Pro**, **Business**, **Enterprise** albo **Edu** |
| Magiczna fraza na start | "przeczytaj CLAUDE.md i zacznij onboarding" | "przeczytaj AGENTS.md i zacznij onboarding" |

Darmowe konta nie obejmują żadnego z tych narzędzi - potrzebny jest płatny plan. Jeśli nie masz jeszcze żadnego, Claude Pro i ChatGPT Plus są tańszymi progami wejścia.

Dalej instrukcja rozdziela się tylko na czas instalacji. Od Kroku 3 jest identyczna.

## Krok 2A: Instalacja - Claude

1. Pobierz aplikację:
   - **Mac:** [pobierz wersję na macOS](https://claude.ai/api/desktop/darwin/universal/dmg/latest/redirect) (jedna wersja działa na Intelu i Apple Silicon).
   - **Windows:** [pobierz wersję na Windows](https://claude.ai/api/desktop/win32/x64/setup/latest/redirect). Jeśli masz nowszego laptopa z procesorem ARM, weź [wersję ARM64](https://claude.ai/api/desktop/win32/arm64/setup/latest/redirect).
2. Zainstaluj: na Macu otwórz pobrany plik DMG i przeciągnij Claude do folderu **Aplikacje**; na Windowsie uruchom pobrany instalator i przeklikaj kreator.
3. Uruchom aplikację i zaloguj się na swoje konto claude.ai (to z planem Pro lub Max).
4. Przejdź na zakładkę **Code** (na górze okna). To w niej pracujesz z plikami.
5. **Tylko Windows, tylko za pierwszym razem:** przy pierwszym otwarciu zakładki Code aplikacja poprosi o [Git for Windows](https://git-scm.com/downloads/win). Zainstaluj go (kreator next-next-finish, niczego nie zmieniaj) i **uruchom Claude ponownie**.

## Krok 2B: Instalacja - Codex

1. Pobierz aplikację:
   - **Mac:** pobierz aplikację ChatGPT ze strony [chatgpt.com/download](https://chatgpt.com/download), otwórz plik DMG i przeciągnij ChatGPT do folderu **Aplikacje**.
   - **Windows:** [pobierz ze sklepu Microsoft](https://get.microsoft.com/installer/download/9PLM9XGG6VKS?cid=website_cta_psi) i przeklikaj instalację.
2. Uruchom aplikację i zaloguj się na swoje konto ChatGPT (to z planem Plus, Pro, Business, Enterprise albo Edu).
3. Wejdź w **Codex** w aplikacji.

## Krok 3: Pobierz folder Edelop OS

1. Wejdź na elevy.co do materiałów Akademii Edelop.
2. Pobierz paczkę **Edelop OS - kit startowy** (plik ZIP) i zapisz ją na pulpicie.
3. Rozpakuj pobrany plik ZIP tam, gdzie trzymasz dokumenty - na przykład do folderu **Dokumenty**. Powstanie folder z plikami tego startera. To będzie dom Twojego systemu, więc wybierz miejsce, które łatwo znajdziesz.

Sprawdź, czy trafiłaś/eś we właściwy folder: powinny być w nim widoczne pliki **README.md** i **START-TUTAJ.md**. Jeśli widzisz w środku tylko jeden folder (tak bywa po rozpakowaniu ZIP-a, zwłaszcza na Windowsie) - to ten w środku jest właściwy.

## Krok 4: Otwórz ten folder w aplikacji

W aplikacji poszukaj opcji otwarcia folderu albo dodania projektu - **Open folder** / **Otwórz folder** / **Add new project** (w aplikacji Claude: zakładka **Code**; na Windowsie w Codex działa też skrót `Ctrl+O`). Wskaż folder rozpakowany w Kroku 3.

Aplikacja może zapytać, czy ufasz temu folderowi - zatwierdź. To standardowe zabezpieczenie przy pierwszym otwarciu nowego miejsca.

## Krok 5: Start

Napisz w oknie rozmowy:

- w Claude: **przeczytaj CLAUDE.md i zacznij onboarding**
- w Codex: **przeczytaj AGENTS.md i zacznij onboarding**

(Samo **zaczynajmy** zwykle też zadziała - asystent czyta plik zasad na starcie.)

Od tej chwili prowadzi Cię asystent - przywita się, zada kilka pytań i krok po kroku zbuduje z Tobą Twój system.

Jeszcze jedno: asystent będzie pytał o zgodę, zanim cokolwiek zmieni w plikach albo uruchomi komendę. To normalne i celowe - czytasz, co proponuje, i zatwierdzasz.

## Dla lubiących terminal (opcjonalnie)

Nie musisz tego robić. Aplikacja z Kroku 2 wystarcza w zupełności. Ale jeśli wolisz pracować w terminalu:

**Claude Code**

```
curl -fsSL https://claude.ai/install.sh | bash      # Mac
irm https://claude.ai/install.ps1 | iex            # Windows (PowerShell)
```

**Codex CLI**

```
curl -fsSL https://chatgpt.com/codex/install.sh | sh    # Mac
```

Potem otwierasz terminal w folderze z Kroku 3 i uruchamiasz `claude` albo `codex`. Logowanie odbywa się w przeglądarce, tak samo jak w aplikacji.

## Problemy?

- **Nie widzę zakładki Code w Claude** - upewnij się, że zalogowałaś/eś się na konto z planem Pro albo Max. Darmowe konto nie ma tej zakładki.
- **Windows: zakładka Code prosi o Git** - to normalne przy pierwszym uruchomieniu. Zainstaluj [Git for Windows](https://git-scm.com/downloads/win) i uruchom aplikację ponownie.
- **Napisałaś/eś "zaczynajmy", a asystent nie zaczyna onboardingu** - najpewniej otwarty jest folder o jeden poziom za wysoko (patrz uwaga w Kroku 3). Zamknij go i otwórz ten, w którym widać README.md i START-TUTAJ.md.
- **Aplikacja mówi, że potrzebujesz planu** - Twoje konto jest na planie darmowym. W Claude: [claude.ai/upgrade](https://claude.ai/upgrade), wybierz Pro albo Max. W ChatGPT: wybierz Plus albo wyżej. Potem zaloguj się jeszcze raz.
- **Coś innego nie gra** - po prostu opisz problem asystentowi po polsku. Zwykle sam podpowie, co poprawić.
