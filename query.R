library(sqldf)
library(ggplot2)

### DLA MODUŁU KONKURSOWEGO

contest_query = function(path_contest)
{
  ###nie modyfikować bez odpowiedniej wiedzy
  content = read.csv(path_contest)
  content = content[-1]
  ###
  
  
  
  ##PONIŻEJ PRZYKŁADOWE ZAPYTANIA
  
  ##wyświetla wszystkich zakwalifikowanych zawodników
  
  #query = sqldf("select * from content where [Suma.punktow] != 'Tq' 
  #order by Miejsce")
  
  ##wyświetla wszystkich zakwalifikowanych zawodników z Polski
  
  query = sqldf("select * from content where Narodowość = 'POL' and 
               [Suma.punktow] != 'Tq' order by Miejsce")
  
  ##zlicza ilość zawodników którzy urodzili się w danym roku
  
  #query = sqldf("select [Rok.Urodzenia] as 'Rok urodzenia', 
                #count([Rok.Urodzenia]) as 'Liczba zawodników urodzona w danym roku' from content 
                #where [Suma.punktow] != 'Tq' group by [Rok.Urodzenia] order by count([Rok.Urodzenia]) desc")
  
  return(query)
}

os1 = function()
{
  
  #dane wykresowe dla pierwszych dwóch zapytań
  
  x1 = aes(x=Suma.punktow, y=Miejsce)
  
  #dane wykresowe dla trzeciego zapytania
  
  #x1 = aes(x=`Rok urodzenia`, y=`Liczba zawodników urodzona w danym roku`)
  return(x1)
}

### DLA MODUŁU ZAWODNIKÓW

contestant_query = function(link)
{
  ###nie modyfikować bez odpowiedniej wiedzy
  page = read_html(link)
  data = page %>% html_elements("table#ctl00_MainContent_gvKonkursyMie") 
  dane = html_table(data)
  dane = as.data.frame(dane)
  dane = dane[,-c(7,8,10,12)]
  ###
  
  
  ##PONIŻEJ PRZYKŁADOWE ZAPYTANIA
  
  #wyświetlanie osiągniętych miejsc przez zawodnika w PŚ w sezonie 2022/2023
  # w konkursach indywidualnych
  
  graph = paste("select * from dane where Miejsce is not NULL
                      and [Typ.zawodów] like 'PS%'
                      and [Typ.zawodów] not like '%Dr%'
                      and [Typ.zawodów] not like '%SuTe%'
                      and [Data.Konkursu] between '2022.11.05' and '2023.04.02'")
  
  #wyświetlanie ilości osiągniętych miejsc w przekroju całej kariery w PŚ dla danego zawodnika
  # w konkursach indywidualnych
  
  #graph = paste("select Miejsce, count(Miejsce) as 'Liczba osiągniętych miejsc'
                #from dane where Miejsce is not NULL 
                #and [Typ.zawodów] like 'PS%'
                #and [Typ.zawodów] not like '%Dr%'
                #and [Typ.zawodów] not like '%SuTe%'
                #group by Miejsce order by Miejsce asc")
  
  query = sqldf(graph)
  return(query)
}

os2 = function()
{
  #dane wykresowe dla pierwszego zapytania
  
  x2 = aes(x=Data.Konkursu, y=Miejsce)
  
  #dane wykresowe dla drugiego zapytania
  
  #x2 = aes(x=Miejsce, y=`Liczba osiągniętych miejsc`)
  
  return(x2)
}
