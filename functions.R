yeariteration = function()
{
  x = "2023"
  d = list("Wybierz poniżej")
  while(x != "2018")
  {
    d = append(d, x)
    x = as.numeric(x)
    x = x - 1
    x = toString(x)
  }
  return(d)
}

day_choose = function(season)
{
  if(season == "Wybierz poniżej")
  {
    list("Najpierw wybierz sezon!")
  }
  if(season == "2023")
  {
    locations = list("Wybierz poniżej",
         "2022.11.05",
         "2022.11.06")
  }
}





