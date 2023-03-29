yeariteration = function()
{
  i = "2022"
  d = list()
  while(i != "2014")
  {
    d = append(d, i)
    i = as.numeric(i)
    i = i - 1
    i = toString(i)
  }
  return(d)
}
