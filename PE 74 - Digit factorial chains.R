FacDig <- function(x){
  z=strsplit(as.character(x),split="")
  y=sum(factorial(as.numeric(unlist(z))))
  return(y)
}

x=c(NULL)
for(i in 1:1000000){
  v=c(i,NULL)
  for(j in 1:60){
    if(!any(FacDig(v[j])==v))
      v[j+1]=FacDig(v[j])
    else{
      x=c(x,length(v))
      break
  }
 }
}

length(which(x==60))
  
  