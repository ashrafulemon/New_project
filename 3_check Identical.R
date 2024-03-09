#install.packages("readxl")
#install.packages("openxlsx")
library(readxl)
library(openxlsx)
getwd()


df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",
               startRow=5,colNames=T,detectDates = T)
df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",
               startRow=5,colNames=T,detectDates = T,
               col=c(4,6:12,17:19,21:25,29,32,34:41))

df3= df2[,c(1:6,9:11,7,8,12:26)]
df3[5]= as.numeric(unlist(df3[5]))
df3[10]= as.numeric(unlist(df3[10]))
df3[11]= as.numeric(unlist(df3[11]))






# Find elements that are in dataset1 but not in dataset2
differences3 <- setdiff(df1[1:23262,] ,df6)

if (length(differences3) == 0) {
  cat("The datasets are identical.\n")
} else {
  cat("The following elements are not the same:\n")
  print(differences3)
}






