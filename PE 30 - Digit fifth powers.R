
x=1:5000000

y=numeric(length(1:5000000))
power <- function(x){
  z=strsplit(as.character(x),split="")
  return(sum((as.numeric(unlist(z)))^5))
}

for(i in 1:5000000){
  if(power(i)==x[i])
    y[i]=x[i]
}
    
