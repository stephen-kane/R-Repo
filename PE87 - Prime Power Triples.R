library(gmp)

w=c(NULL)
x=1:1000000
for(i in 1:1000000){
  if(isprime(x[i])>0){
    w=c(w,x[i])
  }
}

d=c(NULL)
for(i in 1:908){
  for(j in 1:74){
    for(k in 1:23){
      a=w[i]^2 + w[j]^3+w[k]^4
      d=c(d,a)
    }
  }
}
length(d)
e=d[(d < 50000000)]
length(unique(e))
