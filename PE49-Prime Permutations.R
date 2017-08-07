library(gmp)
library(combinat)

w=c(NULL)
x=1:10000
for(i in 1:10000){
  if(isprime(x[i])==2){
    w=c(w,x[i])
  }
}

per <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  z=permn(z)
  return(z)
}

for(x in 990:length(w)){
q = per(w[x])
s = c(NULL)
a = 0
for(j in 1:length(q)){
  v=as.numeric(paste(unlist(q[j]),collapse = ""))
  if(isprime(v)>0){
    a=a+1
    s=c(s,v)
  }
}
if(a >= 3){
  s=sort(s)
  out = outer(s,s,"-")
  for(k in 1:length(out[1,])){
    for(l in 1:length(out[1,])){
      for(u in l:length(out[1,])){
        if(out[l,k] == 2*out[u,k] && out[l,k] != 0){
          print(c(s[l],s[u],x,k,l,u))
        }
      }
    }
  }
 }
}