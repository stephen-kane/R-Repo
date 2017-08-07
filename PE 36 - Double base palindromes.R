x=1:1000000

B10P <- function(x){
y=as.character(x)
q=unlist(strsplit(y,split = ""))
return(all(q==rev(q)))
}

BinCheck <- function(x){
  y=as.character(intToBin(x))
  q=unlist(strsplit(y,split = ""))
  return(all(q==rev(q)))
}

s=0
for(i in 1:1000000){
  if(B10P(x[i])&&BinCheck(x[i]))
    s=s+x[i]
}
    