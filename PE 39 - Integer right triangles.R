fun <- function(p){ #number of solutions for a given perimeter
  s=0
  for(i in 1:p/2){
    for(j in i:(p-i)){
      if(i^2+j^2 == (p-i-j)^2){
        s=s+1
      
    }
  } 
 }
return(s)
}

x <- sapply(1:1000,fun)
which(x==max(x))