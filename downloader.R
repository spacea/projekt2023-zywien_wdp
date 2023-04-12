library(rvest)
library(readxl)
library(xlsx)
library(sqldf)

for(x in 50:89)
{
  if(x == 54 || x == 56 || x== 65 || x == 71 || x == 75 || x == 78 || x == 85 || x == 88)
  {
    next
  }
  else
  {
    y = as.character(x)
    url = paste0("http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=",y,"&rodzaj=M") 
    write_name = paste0("2023/2023_",y,".xlsx")
    page = read_html(url)
    data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
    dane = html_table(data)
    dane = as.data.frame(dane)
    save = dane[,-c(7,8,10)]
    temp = write.xlsx(save, write_name, sheetName = "Sheet1", col.names = TRUE,
                      row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
  }
}


