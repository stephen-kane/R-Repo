FindNofUP <- function(x){
  z=length(unique(factorize(x)))
   return(z)
}

x=numeric(length=1000000)
for(i in 1:1000000){
  x[i]=FindNofUP(i)
  if(x[i]==4 && x[i]==x[i-1] && x[i-1]==x[i-2] && x[i-2]==x[i-3])
    print(i-3)
}

  