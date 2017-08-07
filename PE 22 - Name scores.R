list <- scan("names.txt",what = "", sep = ",")
list[is.na(list)] <- "NA"
list <- sort(list)
list.len <- length(list)

let2num <- data.frame(row.names = LETTERS, NUM = 1:26)

NameScore <- function(name) {
  name.char <- unlist(strsplit(name,split = ""))
  score <- sum(let2num[name.char,"NUM"])
  return(score)
}

name.scores <- numeric(list.len)
for( i in 1:list.len) {
  name.scores[i] <- NameScore(list[i])
}

result <- sum(name.scores * (1:list.len))

cat("The result is:", result)




  
  
  
    
  