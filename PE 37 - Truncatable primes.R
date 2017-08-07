x=1:1000000
w=c(NULL)
for(i in 1:1000000){
  if(isprime(x[i])==2){
    w=c(w,x[i])
  }
}


TFR <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  s=z[-length(z)]
  w=as.numeric(paste(s, collapse = ""))
  return(w)
}

TFL <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  s=z[-1]
  w=as.numeric(paste(s, collapse = ""))
  return(w)
}

TruncateR <- function(x){
  v=c(x,NULL)
  for(i in 1:(length(unlist(strsplit(as.character(x),split = "")))-1)){
      v=c(v,TFR(v[i]))
  }
    return(v)
}

TruncateL <- function(x){
  v=c(x,NULL)
  for(i in 1:(length(unlist(strsplit(as.character(x),split = "")))-1)){
      v=c(v,TFL(v[i]))    
  }
  return(v)
}


s=0
for(i in 1:100000){
  if(all(isprime(TruncateR(w[i]))==2) && all(isprime(TruncateL(w[i]))==2)){
     s=s+w[i]
  }
  
}

   
    
  