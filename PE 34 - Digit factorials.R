FacDig <- function(x){
  z=strsplit(as.character(x),split="")
  y=sum(factorial(as.numeric(unlist(z))))
      if(x == y)
        return(y)
}

p=0
for(i in 1:1500000){
  p=p+sum(FacDig(i))
}