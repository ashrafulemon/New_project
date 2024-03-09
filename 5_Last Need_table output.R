#install.packages("readxl")
library(readxl)
#install.packages("openxlsx")
library(openxlsx)
getwd()


df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=T)
df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=T,
               detectDates = T,col=c(4,6:12,17:19,21:25,29,32,34:41))

df_2= df2[,c(1:6,9:11,7,8,12:26)]


write.xlsx(df_2,"I:\\upwork\\004_work with Jinu\\demo r prg\\First_table_1.xlsx",asTable = T,
           colNames=T,borders = "columns")
