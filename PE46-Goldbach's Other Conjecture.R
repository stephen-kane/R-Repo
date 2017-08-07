library(gmp)

w=c(NULL)
x=1:1000000
for(i in 1:1000000){
  if(isprime(x[i])>0){
    w=c(w,x[i])
  }
}

vec <- (NULL)
for(i in 1:10000){
  a=2*i+1
  j=1
  while(w[j] < a){
    k=1
    while(2*k^2 <= a - w[j]){
      l=2*k^2 + w[j]
      if(l %% 2 == 1 && isprime(l) == 0){
      if(!any(l == vec)){
      vec <- c(vec,l)
      }
      }
      k=k+1
    }
    j=j+1
  }
}

bi <- (NULL)
for(i in 1:10000){
  a = 2*i + 1
  if(isprime(a)==0){
    bi <- c(bi,a)
  }
}

for(i in 1:length(bi)){
  if(!any(bi[i]==vec)){
    print(bi[i])
  }
}