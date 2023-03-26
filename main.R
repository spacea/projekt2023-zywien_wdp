#pierwsza wersja publiczna
#content w lewych slash oznacza, co narazie jest do zmiany

#potrzebne pakiety do działania

# !!!!!!!!!!!!!!!!!!!!!!!!!
#install.packages("rvest")
#install.packages("xlsx")
#install.packages("sqldf")
#!!!!!!!!!!!!!!!!!!!!!!!!!!

#biblioteki
library(rvest)
library(xlsx)  
library(sqldf)

#link do danych
url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=50&rodzaj=M"

#odczytanie danych ze strony
page = read_html(url)

data = page %>% 
  html_elements("table#ctl00_MainContent_GridView1") 

xd = html_table(data)
#zapis 
temp_data = write.xlsx(
  xd, 
  "temp_wisla.xlsx",
  sheetName = "Sheet1",
  col.names = TRUE,
  row.names = TRUE,
  append = FALSE,
  showNA = TRUE,
  password = NULL
)



#odczyt danych \zapisać jako zmienną\

read_temp = read.xlsx(
  "temp_wisla.xlsx",
  "Sheet1",
  )

read_temp$Suma.punktow

sqldf("select * from read_temp where Miejsce is not NULL")
sqldf("select * from read_temp where Narodowość = 'POL' and Miejsce is not NULL")
sqldf("select skok2 from read_temp")

#dodatkowe info: nie można odczytać poszczególnych danych bezpośrednio ze strony
#powód: brak klas/id żeby móc to zrobić
#rozwiązanie tymczasowe: pobieranie całego pliku tymczasowo do selekcji,
#zapis wyselekcjonowanych danych, następnie usunięcie go

