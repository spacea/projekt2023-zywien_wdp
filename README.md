[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-8d59dc4de5201274e310e4c54b9627a8934c3b88527886e3b421487c677d23eb.svg)](https://classroom.github.com/a/tauthlex)

# Ski Harvester
> Szukasz prostego sposobu na przeglądanie danych dotyczących skoków narciarskich? Ten program może okazać się dla Ciebie rozwiązaniem.

## Spis
* [Wstęp](#wstęp)
* [Autorzy](#autorzy)
* [Zastosowania](#zastosowania)
* [Wymagania](#wymagania)
* [Uruchamianie](#uruchamianie)
* [Wykorzystane dane](#wykorzystane-dane)
* [Dodatkowe informacje](#dodatkowe-informacje)

## Autorzy
- Aleksander Żywień
- Marcel Tomczak

## Wstęp
- Ski Harvester pobiera i wyświetla dane dotyczące skoków narciarskich w łatwy i przystępny dla użytkownika sposób.
- Program ma na celu ułatwić i przyspieszyć proces wyszukiwania informacji dla tego konkretnego sportu.
- Projekt powstał, ponieważ jeden z autorów zaobserwował brak możliwości szybkiej analizy danych o skokach narciarskich we własnym zakresie.


## Zastosowania
- Filtrowanie danych zawodów Pucharu Świata pod względem sezonu i daty zawodów dla polskich zawodników.
- Filtrowanie danych zawodników.


## Wymagania
- Pakiety wymagane do poprawnego działania programu znajdują się w pliku required_packages.R
- Wymagana wersja R - 4.2.3

## Uruchamianie

```r
library(shiny)
runGitHub("projekt2023-zywien_wdp", "spacea")
```
LUB

- Program uruchamiamy poprzez wczytanie pliku appUI.R, wskutek czego otwiera nam się okno Shiny.
- Następnie w oknie Shiny wybieramy zakładkę "Konkurs", lub "Zawodnicy".
### Obsługa modułu "Konkurs"
- W przypadku wybrania konkursu wyświetlą nam się kolejne pola wyboru takie jak "Wybierz sezon" -> "Wybierz dzień:". Wyświetli nam się wykres oraz tabela wyników zawierające informację o polskich zawodnikach, którzy brali w nich udział tego dnia.
- Przed naciśnięciem przycisku "Kliknij, aby wprowadzić" można uruchomić plik i zmienić zapytanie w linii 122 pliku appUI.R lub zaprojektować własne w języku SQL, przykłady są w pliku "query.R" (należy pamiętać o skomentowaniu niepotrzebnych danych!)
### Obsługa modułu "Zawodnicy"
- W przypadku wybrania zawodników wyświetli nam się pole "Wpisz imię zawodnika:" oraz "Wpisz nazwisko zawodnika:", gdzie możemy wpisać dane interesującej nas osoby i otrzymujemy wykres oraz tabelę z danymi o zawodach, w których dany zawodnik brał udział.

## Wykorzystane dane
- Wykorzystywana baza danych w programie - http://www.wyniki-skoki.hostingasp.pl/

## Dodatkowe informacje
