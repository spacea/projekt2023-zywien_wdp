#url = ""
#page = read_html(url)
#data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
#dane = html_table(data)
#temp = write.xlsx(dane, "temp_.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
#read_temp_ = read_excel("temp_.xlsx")

library(rvest)
library()

#SEZON 2023

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=86&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.26.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.26 = read_excel("temp_2023.03.26.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=85&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.25.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.25 = read_excel("temp_2023.03.25.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=84&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.19.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.19 = read_excel("temp_2023.03.19.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=83&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.18.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.18 = read_excel("temp_2023.03.18.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=82&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.16.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.16 = read_excel("temp_2023.03.16.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=81&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.14.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.14 = read_excel("temp_2023.03.14.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=80&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.12.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.12 = read_excel("temp_2023.03.12.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=79&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.03.11.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.03.11 = read_excel("temp_2023.03.11.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=78&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.19.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.19 = read_excel("temp_2023.02.19.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=77&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.18.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.18 = read_excel("temp_2023.02.18.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=76&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.12.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.12 = read_excel("temp_2023.02.12.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=74&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.11.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.11 = read_excel("temp_2023.02.11.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=75&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.11.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.11 = read_excel("temp_2023.02.11.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=73&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.05.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.05 = read_excel("temp_2023.02.05.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=72&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.04.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.04 = read_excel("temp_2023.02.04.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=71&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.02.03.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.02.03 = read_excel("temp_2023.02.03.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=70&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.29.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.29 = read_excel("temp_2023.01.29.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=69&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.28.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.28 = read_excel("temp_2023.01.28.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=68&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.22.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.22 = read_excel("temp_2023.01.22.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=67&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.21.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.21 = read_excel("temp_2023.01.21.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=66&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.20.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.20 = read_excel("temp_2023.01.20.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=65&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.14.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.14 = read_excel("temp_2023.01.14.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=64&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.15.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.15 = read_excel("temp_2023.01.15.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=63&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.06.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.06 = read_excel("temp_2023.01.06.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=62&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.04.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.04 = read_excel("temp_2023.01.04.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=61&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2023.01.01.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2023.01.01 = read_excel("temp_2023.01.01.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=60&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.12.29.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.12.29 = read_excel("temp_2022.12.29.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=59&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.12.18.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.12.18 = read_excel("temp_2022.12.18.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=58&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.12.17.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.12.17 = read_excel("temp_2022.12.17.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=57&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.12.11.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.12.11 = read_excel("temp_2022.12.11.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=56&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.12.10.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.12.10 = read_excel("temp_2022.12.10.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=55&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.12.09.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.12.09 = read_excel("temp_2022.12.09.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=53&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.11.27.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.11.27 = read_excel("temp_2022.11.27.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=52&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.11.26.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.11.26 = read_excel("temp_2022.11.26.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=51&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.11.06.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.11.06 = read_excel("temp_2022.11.06.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2023&id=50&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.11.05.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.11.05 = read_excel("temp_2022.11.05.xlsx")



#sezon 2022


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=86&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.27.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.27 = read_excel("temp_2022.03.27.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=85&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.26.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.26 = read_excel("temp_2022.03.26.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=84&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.25.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.25 = read_excel("temp_2022.03.25.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=83&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.20.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.20 = read_excel("temp_2022.03.20.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=82&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.19.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.19 = read_excel("temp_2022.03.19.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=81&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.06.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.06 = read_excel("temp_2022.03.06.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=80&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.05.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.05 = read_excel("temp_2022.03.05.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=79&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.04.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.04 = read_excel("temp_2022.03.04.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=78&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.03.03.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.03.03 = read_excel("temp_2022.03.03.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=77&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.02.27.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.02.27 = read_excel("temp_2022.02.27.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=76&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.02.26.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.02.26 = read_excel("temp_2022.02.26.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=75&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.02.25.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.02.25 = read_excel("temp_2022.02.25.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=74&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.30.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.30 = read_excel("temp_2022.01.30.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=73&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.29.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.29 = read_excel("temp_2022.01.29.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=72&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.28.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.28 = read_excel("temp_2022.01.28.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=71&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.23.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.23 = read_excel("temp_2022.01.23.xlsx")


url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=70&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.22.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.22 = read_excel("temp_2022.01.22.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=69&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.16.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.16 = read_excel("temp_2022.01.16.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=68&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.15.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.15 = read_excel("temp_2022.01.15.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=67&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.09.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.09 = read_excel("temp_2022.01.09.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=66&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.08.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.08 = read_excel("temp_2022.01.08.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=65&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.06.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.06 = read_excel("temp_2022.01.06.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=64&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.05.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.05 = read_excel("temp_2022.01.05.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=62&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2022.01.01.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2022.01.01 = read_excel("temp_2022.01.01.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=61&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.29.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.29 = read_excel("temp_2021.12.29.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=60&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.19.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.19 = read_excel("temp_2021.12.19.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=59&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.18.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.18 = read_excel("temp_2021.12.18.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=58&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.12.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.12 = read_excel("temp_2021.12.12.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=57&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.11.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.11 = read_excel("temp_2021.12.11.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=56&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.05.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.05 = read_excel("temp_2021.12.05.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=55&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.12.04.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.12.04 = read_excel("temp_2021.12.04.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=53&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.11.28.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.11.28 = read_excel("temp_2021.11.28.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=52&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.11.27.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.11.27 = read_excel("temp_2021.11.27.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=51&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.11.21.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.11.21 = read_excel("temp_2021.11.21.xlsx")

url = "http://www.wyniki-skoki.hostingasp.pl/Konkurs.aspx?season=2022&id=50&rodzaj=M"
page = read_html(url)
data = page %>% html_elements("table#ctl00_MainContent_GridView1") 
dane = html_table(data)
temp = write.xlsx(dane, "temp_2021.11.20.xlsx",sheetName = "Sheet1",col.names = TRUE,row.names = TRUE,append = FALSE,showNA = TRUE,password = NULL)
read_temp_2021.11.20 = read_excel("temp_2021.11.20.xlsx")
