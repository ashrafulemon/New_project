
set1 <- data.frame(
  Name = c("John", "", "Bob"),
  Age = c(25, NA, 28),
  Score = c(90, 85, NA),
  Score1 = c(90, NA, NA)
)

set2 <- data.frame(
  Name = c("Alice", "Charlie", ""),
  Age = c(30, 22, NA),
  Score = c(95, 78, NA),
  Score1 = c(90, 100, 200)
)

names(set1)   # name of col
set1[, 1]     # first col element

set1[1, 1]    # 1,1 element
set1[, 1] [1] # 1,1 element
set1[, 1] [2] # 2,1 > 1st col but 2nd row element

set1[, 1] [c(F,T,F)]       # 1st col but only 2nd element

set1[, 1] == ""                        # FALSE  TRUE FALSE
is.na(set1[, 1])                       # FALSE FALSE FALSE

set1[, 1] == "" | is.na(set1[, 1])     # FALSE  TRUE FALSE

set1[, 1] [c(F,T,F)]     # 1st col but only 2nd element
set1[, 1] [c(T,T,F)]     # 1st col but  first & 2nd element

set1[, 1]  [ set1[, 1] == "" | is.na(set1[, 1]) ]  # set1[, 1] [c(F,T,F)]
                                                   # 1st col, 2nd element
#set1[, 1] [c(T,T,F)] = c("aa","bb","cc") #ok
set2[, 1]  [ set1[, 1] == "" | is.na(set1[, 1]) ]  # set2[, 1] [c(F,T,F)]
                                                   # 1st col, 2nd element
                                                   # but set2

# Replace blank cells in set1 with corresponding values from set2
for (col in names(set1)) {
    set1[, col]  [ set1[, col] == "" | is.na(set1[, col]) ] <- 
    set2[, col]  [ set1[, col] == "" | is.na(set1[, col]) ]
}
set1


length(set1) # length of col name
for (col in 1:length(set1)) {
  set1[, col]  [ set1[, col] == "" | is.na(set1[, col]) ] <- 
    set2[, col]  [ set1[, col] == "" | is.na(set1[, col]) ]
}
set1





nr= nrow(set1)
nc= ncol(set1)
for( i in 1:nr){
  for( j in 1:nc){
    if( set1[i,j] == "" | is.na(set1[i,j])){
      set1[i,j] =set2[i,j]
    }
  }
}
print(set1)




