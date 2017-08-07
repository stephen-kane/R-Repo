library(gmp)

w=c(NULL)
x=1:1000000
for(i in 1:1000000){
  if(isprime(x[i])==2){
    w=c(w,x[i])
  }
}

z=c(NULL)
a=c(NULL)
for(i in 1:length(w)){
  for(j in i:(length(w)-i)){
    if(isprime(sum(w[i:j]))==2){
      z=c(z,sum(w[i:j]))
      a=c(a,j-i+1)
    }
  }
}

z[which(a==max(a))]
    
  
