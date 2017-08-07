library(gmp)

for(i in seq(3,40000,2)){
z=seq(1,i,2)
a=seq(0,i,2)
# isprime returns 0.5 for big numbers so I replaced them with 1s
b=sum(replace(isprime(z^2-a)/2,which(isprime(z^2-a)/2==0.5),1))+sum(replace(isprime(z^2-2*a)/2,which(isprime(z^2-2*a)/2==0.5),1))+sum(replace(isprime(z^2-3*a)/2,which(isprime(z^2-3*a)/2==0.5),1))
s=b/(2*i-1) # 2*i-1 is the total number of diagonal numbers
if(s<0.1){
  print(i)
  break
   }
}
 

  
  
  
  
