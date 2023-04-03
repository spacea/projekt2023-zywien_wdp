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


## Wstęp
- Ski Harvester pobiera i wyświetla dane dotyczące skoków narciaskich w łatwy i przystępeny dla użytkowanika sposób.
- Program ma na celu uławtić i przyśpieszyć proces wyszukiwania informacji dla tego konkretnego sportu.
- Projekt powstał, ponieważ autor zaobserwował brak możliwości szybkiego przeglądania danych o skokach narciarskich na dużej skali.


## Zastosowania
- Filtrowanie danych zawodów o puchar świata pod względem sezonu, a następnie miejsca i daty zawodów.
- Filtrowanie danych zawodników.


## Wymagania
- Pakiety wymagane do poprawnego działania programu znajdują się w pliku requiared_packeges.R
- Wymagana wersja R - 4.2.3

## Uruchamianie
- Program uruchamiamy poprzez wczytanie plików main.R, a następnie functions.R, w skutek czego otwiera nam się okno Shiny.
- Następnie klikamy w polę pod "Wybierz rodzaj danych:" i zaznaczamy "Konkurs", lub "Zawodnicy".
- W przypadku wybrania konkursu wyświetlą nam się kolejne pola wyboru takie jak "Wybierz sezon" -> "Wybierz miejsce:" -> "Wybierz date:", po których wybraniu wyświetli nam się tabela z tych konkretnych zawodów
- W przypadku wybrania zwodników wyświetli nam się pole "Wpisz imię i nazwisko zawodnika:", gdzie wpisujemy interesującą nas osobę i otrzymujemy dane o nim.

## Do zrobienia
- Dodanie kolejnych lat do zawodów pucharu świata (aktualnie do sezonu 2015)
- Dodanie innych typów zawodów

## Wykorzystane dane
- Wykorzystywana baza danych w programie - http://www.wyniki-skoki.hostingasp.pl/

## Autorzy
- Aleksander Żywień
- Marcel Tomczak