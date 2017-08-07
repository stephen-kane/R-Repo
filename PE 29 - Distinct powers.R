x=1:9999
z=isprime(x)/2
y=c(NULL)
for(i in 1:9999){
  if(z[i]==1)
    y=c(y,i)
}

ToLowestPrime <- function(x){
m=strsplit(as.character(x),split = "")
n=as.numeric(unlist(m))
w= as.numeric(paste(sort(n), collapse = ""))
return(w)
}

z=c(NULL)
r=0
for(i in 1:1229){
  r=ToLowestPrime(w[i])
  if(any(r==w)){
   f=(w[i]-r)/2
   a=w[i]-f
   if(isprime(a) && r == ToLowestPrime(a))
   z=c(z,r,w[i]-f,w[i])
   }
  }

    
  
