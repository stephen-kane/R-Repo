NextTerm <- function(x){
  a=as.character(x)
  q=unlist(strsplit(a,split = ""))
  b=as.numeric(q)
  d=sum(b^2)
  return(d)
}
  
s=0
for(i in 1:10000000){
  if(i == 89){
    s=s+1
    next
  }
  if(i == 1)
    next
  y=NextTerm(i)
  while(y != 1 && y != 89){
    y=NextTerm(y)
}
if(y == 1)
  next
if(y == 89){
  s=s+1
  next
}
}
  
    
    
    
    
  
  