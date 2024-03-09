#install.packages("readxl")
library(readxl)

#install.packages("openxlsx")
library(openxlsx)

df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=FALSE,
               detectDates = T,  skipEmptyRows = TRUE,skipEmptyCols = TRUE)
head(df1)
tail(df1)

df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=FALSE,
               detectDates = T,
               col=c(4,6:12,17:19,21:25,29,32,34:41))
head(df2)
tail(df2)

#df4= df1[,c(4,6:10,15:17,11,12,19:23,26,29:37)]
df_2= df2[,c(1:6,9:11,7,8,12:26)]



write.xlsx(df_2,"I:\\upwork\\004_work with Jinu\\demo r prg\\neededf.xlsx",colNames=F)
write.xlsx(df_2,"I:\\upwork\\004_work with Jinu\\demo r prg\\neededt.xlsx",colNames=T)
write.xlsx(df_2,"I:\\upwork\\004_work with Jinu\\demo r prg\\neededft.xlsx",asTable = T,
           colNames=T)
write.xlsx(df_2,"I:\\upwork\\004_work with Jinu\\demo r prg\\need_table.xlsx",asTable = T,
           colNames=F,borders = "columns")
getwd()


