
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



#way1
length(set1) # length of col name
for (col in 1:length(set1)) {
    set1[, col]  [ set1[, col] == "" | is.na(set1[, col]) ] <- 
    set2[, col]  [ set1[, col] == "" | is.na(set1[, col]) ]
}
set1



#way2
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



#way3 in new set3
set3= set1
length(set3) # length of col name
for (col in 1:length(set3)) {
    set3[, col]  [ set3[, col] == "" | is.na(set3[, col]) ] <- 
    set2[, col]  [ set3[, col] == "" | is.na(set3[, col]) ]
}
set3



#way4 in new set3
new_set <- set1
new_set[] <- NA  # Initialize all values to NA

num_rows <- nrow(set1)
num_cols <- ncol(set1)

for (i in 1:num_rows) {
  for (j in 1:num_cols) {
    if (set1[i, j] == "" || is.na(set1[i, j])) {
      new_set[i, j] <- set2[i, j]
    } else {
      new_set[i, j] <- set1[i, j]
    }
  }
}

new_set


