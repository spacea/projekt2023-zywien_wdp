select_data = function()
{
  #poniżej przykładowe zapytania
  
  #wyświetla wszystkich zakwalifikowanych zawodników
  
  #query = sqldf("select * from table_content where [Suma.punktow] != 'Tq' 
  #order by Miejsce")
  
  #wyświetla wszystkich zakwalifikowanych zawodników z Polski
  
  #query = sqldf("select * from table_content where Narodowość = 'POL' and 
                #[Suma.punktow] != 'Tq' order by Miejsce")
  
  #zlicza ilość zawodników którzy urodzili się w tym millenium
  
  query = sqldf("select count([Rok.Urodzenia]) as 'Liczba zawodników urodzona w tym millenium'
                  #from table_content where [Rok.Urodzenia] >= 2000 and [Suma.punktow] != 'Tq'")
  return(query)
}  