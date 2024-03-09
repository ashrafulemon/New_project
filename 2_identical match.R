#install.packages("readxl")
library(readxl)
#install.packages("openxlsx")
library(openxlsx)
getwd()


df1= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=T,
               detectDates = T)
df2= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\maximo1.xlsx",startRow=5,colNames=T,
               detectDates = T,col=c(4,6:12,17:19,21:25,29,32,34:41))

df3= df2[,c(1:6,9:11,7,8,12:26)]
df3[5]= as.numeric(unlist(df3[5]))
df3[10]= as.numeric(unlist(df3[10]))
df3[11]= as.numeric(unlist(df3[11]))


write.xlsx(df3,"I:\\upwork\\004_work with Jinu\\demo r prg\\need_table_last.xlsx",asTable = T,
           colNames=T,borders = "columns")

df5= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\ident_1.xlsx",sheet=2,colNames=T,
               detectDates = T)

#df5[4]<- gsub("&amp;", "&", df5[4])




df6= read.xlsx("I:\\upwork\\004_work with Jinu\\demo r prg\\ident_1.xlsx",sheet=1,colNames=T,
               detectDates = T)


#df6[40]= as.Date(unlist(df6[40]))

differences1 <- df3 != df5

# Print the indices or values where differences occur
if (any(differences1)) {
  cat("Differences found at the following indices:\n")
  print(which(differences1, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}










# Check if the datasets are identical
are_identical <- identical(df3,df5)

if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}











differences2 <- df1[1:23262,] != df6

# Print the indices or values where differences occur
if (any(differences2)) {
  cat("Differences found at the following indices:\n")
  print(which(differences2, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}

are_identical <- identical(df1[1:23262,] ,df6)

if (are_identical) {
  cat("The datasets are identical.\n")
} else {
  cat("The datasets are not identical.\n")
}




# Find elements that are in dataset1 but not in dataset2
differences3 <- setdiff(df1[1:23262,] ,df6)
differences7 <- setequal(df1[1:23262,] ,df6)
if (length(differences3) == 0) {
  cat("The datasets are identical.\n")
} else {
  cat("The following elements are not the same:\n")
  print(differences3)
}


differences5 <- setdiff(df3 ,df5)
differences6 <- setequal(df3 ,df5)

if (length(differences3) == 0) {
  cat("The datasets are identical.\n")
} else {
  cat("The following elements are not the same:\n")
  print(differences3)
}




# Create a logical matrix indicating where elements are not the same
differences7 <- df1[1:23262,] != df6

# Print the indices or values where differences occur
if (any(differences7)) {
  cat("Differences found at the following indices:\n")
  print(which(differences7, arr.ind = TRUE))
} else {
  cat("The datasets are identical.\n")
}