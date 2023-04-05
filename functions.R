yeariteration = function()
{
  x = "2021"
  d = list("Wybierz poniżej")
  while(x != "2014")
  {
    d = append(d, x)
    x = as.numeric(x)
    x = x - 1
    x = toString(x)
  }
  return(d)
}







