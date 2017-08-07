library(gmp)

check <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  a = 0
  b = 0
  for(j in 1:7){
    if(any(z == j)){a = a + 1
    z = z[-which(z == j)]}
  }
  
  if (a == 7){
    b=1
  }
  return(b)
}

for(i in 1:9999999){
  if(isprime(i)>0 && check(i)){
    print(i)
  } 
}

