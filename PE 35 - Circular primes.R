library(gmp)

x=1:1000
y=isprime(x)
w=c(NULL)
for(i in 1:1000000){
  if(isprime(x[i])==2)
    w=c(w,x[i])
}

AllShifts <- function(r){ # r is a vector
e=(NULL)
for(i in 1:length(r)){ 
  r=c(r[length(r)],r[-length(r)])
  e=c(e,as.numeric(paste(r, collapse = "")))
 }
return(e)
}

s=0
for(j in 1:1000000){
  y=as.character(x[j])
  q=as.numeric(unlist(strsplit(y,split = "")))
  if(all(isprime(AllShifts(q))==2))
    s=s+1
}