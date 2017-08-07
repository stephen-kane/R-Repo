DivisorsSearch <- function(n) {
  # helper function to find divisors
  if (n <= 3) {
    divisors <- 1
  }
  else {
    candidate <- 2:floor(sqrt(n))
    flag <- n %% candidate == 0
    divisors.half <- candidate[flag]
    divisors <- unique(c(1, divisors.half, n / divisors.half))
  }
  return(c(divisors,n))
}

x=c(1,NULL)
for(i in 2:100000){
  x[i]=x[i-1]+i
}

for(j in 1:100000){
  z=c(DivisorsSearch(x[j]),x[j])
  if(length(z)>500)
    print(x[j])
}
  