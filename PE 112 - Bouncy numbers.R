a=0
Inc <- function(x){
  y=as.character(x)
  q=as.numeric(unlist(strsplit(y,split = "")))
  a=logical(length=(length(q)-1))
  for(i in 1:length(a)){
    a[i]=(q[i] <= q[i+1])
  }
  return(all(a))
}

Dec <- function(x){
  y=as.character(x)
  q=as.numeric(unlist(strsplit(y,split = "")))
  a=logical(length=(length(q)-1))
  for(i in 1:length(a)){
    a[i]=(q[i] >= q[i+1])
  }
  return(all(a))
}

u=0 # counter for bouncy
s=99 # counter for loop
repeat {
  s=as.bigz(s+1)
  if(!(Inc(s) || Dec(s)))
    u=u+1
  if(as.numeric(u/s)==0.99){
  print(s)
  break
  }
}


