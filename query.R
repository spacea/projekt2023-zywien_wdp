library(sqldf)
library(ggplot2)

contest_query = function(path_contest)
{
  content = read.csv(path_contest)
  content = content[-1]
  
  #poniżej przykładowe zapytania
  
  #wyświetla wszystkich zakwalifikowanych zawodników
  
  #query = sqldf("select * from table_content where [Suma.punktow] != 'Tq' 
  #order by Miejsce")
  
  #wyświetla wszystkich zakwalifikowanych zawodników z Polski
  
  query = sqldf("select * from content where Narodowość = 'POL' and 
               [Suma.punktow] != 'Tq' order by Miejsce")
  
  #zlicza ilość zawodników którzy urodzili się w tym millenium
  
  #query = sqldf("select count([Rok.Urodzenia]) as 'Liczba zawodników urodzona w tym millenium' from table_content 
                #where [Rok.Urodzenia] >= 2000 and [Suma.punktow] != 'Tq'")
  return(query)
}  
contestant_query = function(link)
{
  page = read_html(link)
  data = page %>% html_elements("table#ctl00_MainContent_gvKonkursyMie") 
  dane = html_table(data)
  dane = as.data.frame(dane)
  dane = dane[,-c(7,8,10,12)]
  graph = paste("select * from dane where Miejsce is not NULL
                      and [Typ.zawodów] like 'PS%'
                      and [Data.Konkursu] between '2022.11.05' and '2023.04.02'")
  query = sqldf(graph)
  return(query)
}