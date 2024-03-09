getwd()
#install.packages("readxl")
#install.packages("openxlsx")
library(readxl)
library(openxlsx)


df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo.xlsx") # my manual edited file
df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo.xlsx", colNames=T)
df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo.xlsx", colNames=FALSE)
df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo.xlsx",sheet=1, colNames=FALSE)


df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",colNames=T) # jinu file
df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=FALSE)
df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=FALSE,
               detectDates = T)


df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",
               startRow=5, colNames=FALSE, detectDates = T, 
               skipEmptyRows = TRUE, skipEmptyCols = TRUE)
                                                       # all col but without marge blank col

df_2= df2[,c(4,6:10,15:17,11,12,19:23,26,29:37)]       # my format col



df3= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",
               startRow=5, colNames=FALSE, detectDates = T,
               col=c(4,6:12,17:19,21:25,29,32,34:41)) # needed col but use cell col with count marge
                                                      # main data theke nile exact col call korbo from excel
                                                      # akhne col serial format thik kora jai na

df_3= df3[,c(1:6,9:11,7,8,12:26)]                      # my format col

