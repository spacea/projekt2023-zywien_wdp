[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-8d59dc4de5201274e310e4c54b9627a8934c3b88527886e3b421487c677d23eb.svg)](https://classroom.github.com/a/tauthlex)

# Ski Harvester
> Szukasz prostego sposobu na przeglądanie danych dotyczących skoków narciaskich? Ten program może okazać się dla Ciebie rozwiązaniem.

## Spis
* [Wstęp](#wstęp)
* [Zastosowania](#zastosowania)
* [Wymagania](#wymagania)
* [Uruchamianie](#uruchamianie)
* [Do zrobienia](#do-zrobienia)
* [Wykorzystane dane](#wykorzystane-dane)
* [Autorzy](#autorzy)
* [Dodatkowe informacje](#dodatkowe-informacje)


## Wstęp
- Ski Harvester pobiera i wyświetla dane dotyczące skoków narciaskich w łatwy i przystępeny dla użytkowanika sposób.
- Program ma na celu uławtić i przyśpieszyć proces wyszukiwania informacji dla tego konkretnego sportu.
- Projekt powstał, ponieważ jeden z autorów zaobserwował brak możliwości szybkiej analizy danych o skokach narciarskich we własnym zakresie.


## Zastosowania
- Filtrowanie danych zawodów Pucharu Świata pod względem sezonu, a następnie miejsca i daty zawodów.
- Filtrowanie danych zawodników (obecnie trwają prace nad tym).


## Wymagania
- Pakiety wymagane do poprawnego działania programu znajdują się w pliku required_packages.R
- Wymagana wersja R - 4.2.3
- Przeglądarka - Mozilla Firefox 

## Uruchamianie
- Program uruchamiamy poprzez wczytanie pliku appUI.R, w skutek czego otwiera nam się okno Shiny.
- Następnie klikamy w polę pod "Wybierz rodzaj danych:" i zaznaczamy "Konkurs", lub "Zawodnicy".
### Obsługa modułu "Konkurs"
- W przypadku wybrania konkursu wyświetlą nam się kolejne pola wyboru takie jak "Wybierz sezon" -> "Wybierz miejsce:" -> "Wybierz date:"
- Przed naciśnięciem przycisku "Zbierz dane" można uruchomić plik "query.R" i zmienić zapytanie lub zaprojektować własne w języku SQL (należy pamiętac o zakomentowaniu niepotrzebnych danych!)
### Obsługa modułu "Zawodnicy"
- W przypadku wybrania zwodników wyświetli nam się pole "Wpisz imię i nazwisko zawodnika:", gdzie wpisujemy interesującą nas osobę i otrzymujemy dane o nim.

## Do zrobienia
- Dodanie kolejnych lat i konkursów do zawodów PŚ
- Uproszczenie możliwości wykonywania zapytań w możliwym zakresie

## Wykorzystane dane
- Wykorzystywana baza danych w programie - http://www.wyniki-skoki.hostingasp.pl/

## Autorzy
- Aleksander Żywień
- Marcel Tomczak

## Dodatkowe informacje
- sporadycznie może pojawić się błąd:
> Selenium message:Unable to locate element: [reszta informacji o błędzie]
- w takim przypadku, należy kliknąć w konsolę, a następnie naciśnąć "ESC". Po tym wpisać w nią 
> <b>system("taskkill /im java.exe /f", intern=FALSE, ignore.stdout=FALSE).</b>
- w przypadku pojawienia się błędu:
> Error in wdman::selenium: Selenium server signals port = 4444 is already in use.
- należy zrobić co powyżej.
