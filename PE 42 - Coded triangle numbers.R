list <- scan("https://projecteuler.net/project/words.txt",what = "", sep = ",")
list[is.na(list)] <- "NA"
list <- sort(list)
list.len <- length(list)

let2num <- data.frame(row.names = LETTERS, NUM = 1:26)

WordScore <- function(name) {
  name.char <- unlist(strsplit(name,split = ""))
  score <- sum(let2num[name.char,"NUM"])
  return(score)
}

d=numeric(length=1000)
for(j in 1:1000){
  d[j]=j*(j+1)/2
}

s=0
for(i in 1:1786){
  if(any(WordScore(list[i])==d))
     s=s+1
}
  