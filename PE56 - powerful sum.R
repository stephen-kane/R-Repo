library(gmp)

per <- function(x){
  y=as.character(as.bigz(x))
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  return(sum(z))
}

p=c(NULL)
for (i in 1:99){
  for (j in 1:99){
    p=c(p,per(as.bigz(i)^as.bigz(j)))
  }
}

