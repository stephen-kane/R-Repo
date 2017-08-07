x=1:9999

Rev <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  w=as.numeric(paste(rev(z), collapse = "")) 
  return(w)
}

B10P <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  return(all(q==rev(q)))
}

a=logical(length = 9999)
for(i in 1:9999){
  e=x[i]
  for(j in 1:49){
    e=as.bigz(e+Rev(e))
    if(B10P(e)){
      a[i]=TRUE
      break
   }
  }
} 

9999-sum(a) 
    
    