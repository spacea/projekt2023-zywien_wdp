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




for(x in 50:86)
{
  if(x == 54 || x == 55 || x == 63 || x== 67 || x == 68 || x == 72 || x == 85)
  {
    next
  }
  else
  {
    y = as.character(x)
    url = paste0("http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=",y,"&rodzaj=M") 
    write_name = paste0("2022/2022_",y,".xlsx")
    page = read_html(url)
    data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
    dane = html_table(data)
    dane = as.data.frame(dane)
    save = dane[,-c(7,8,10)]
    temp = write.xlsx(save, write_name, sheetName = "Sheet1", col.names = TRUE,
                      row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
  }
}



for(x in 50:99)
{
  if(x == 51 || x == 52 || x == 54 || x == 56 || x == 58 || x == 61 || x == 62 || x == 65 || x == 67 || x == 69 || x == 71 || x == 74 || x == 75 || x == 77 || 
     x == 78|| x == 80 || x== 83 || x== 85 || x == 87 || x == 89 || x == 91 || x== 93 || x == 94 || x == 96 ||x == 98)
  {
    next
  }
  else
  {
    y = as.character(x)
    url = paste0("http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2021&id=",y,"&rodzaj=M") 
    write_name = paste0("2021/2021_",y,".xlsx")
    page = read_html(url)
    data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
    dane = html_table(data)
    dane = as.data.frame(dane)
    save = dane[,-c(7,8,10)]
    temp = write.xlsx(save, write_name, sheetName = "Sheet1", col.names = TRUE,
                      row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
  }
}



for(x in 50:102)
{
  if(x == 51|| x == 51 || x == 52 || x == 54 || x == 56 || x == 51 || x == 58 || x == 59 || x == 61 || x == 64 || x == 66 || x == 68 || x == 70 || x == 72 ||
     x == 74 || x == 76 || x == 79 || x == 80 || x == 82 || x == 84 || x == 86 || x == 89 || x == 91 || x == 93 || x == 96 || x == 98 || x == 101)
  {
    next
  }
  else
  {
    y = as.character(x)
    url = paste0("http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2020&id=",y,"&rodzaj=M") 
    write_name = paste0("2020/2020_",y,".xlsx")
    page = read_html(url)
    data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
    dane = html_table(data)
    dane = as.data.frame(dane)
    save = dane[,-c(7,8,10)]
    temp = write.xlsx(save, write_name, sheetName = "Sheet1", col.names = TRUE,
                      row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
  }
}


for(x in 50:105)
{
    if(x == 51 || x == 53 || x == 56 || x == 58 || x == 60 || x == 62 || x == 64 || x == 66 || x == 68 || x == 70 || x == 72 || x == 74 || x == 76 || x == 78 ||
       x == 80 || x == 82 || x == 84 || x == 86 || x == 87 || x == 89 || x == 90 || x == 93 || x == 95 || x == 96 || x == 98 || x == 100 || x == 102 || x == 104)
    {
      next
    }
    else
    {
      y = as.character(x)
      url = paste0("http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2019&id=",y,"&rodzaj=M") 
      write_name = paste0("2019/2019_",y,".xlsx")
      page = read_html(url)
      data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
      dane = html_table(data)
      dane = as.data.frame(dane)
      save = dane[,-c(7,8,10)]
      temp = write.xlsx(save, write_name, sheetName = "Sheet1", col.names = TRUE,
                        row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
    }
}

