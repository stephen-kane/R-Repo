y2=c(NULL)
for(i in 1:100000){
  y=c(NULL)
  z=0
  p=0
  s=0
  z2=c(NULL)
  repeat{
    s=s+1
    z=i*s
    y1=as.character(z)
    y=c(y,y1)
    q=length(as.numeric(unlist(strsplit(y1,split = ""))))
    p=p+q
    if(p>=9){
      z2=as.numeric(paste(as.numeric(unlist(strsplit(y,split = ""))), collapse = ""))
      if(identical(sort(as.numeric(paste(as.numeric(unlist(strsplit(y,split = "")))))),c(1,2,3,4,5,6,7,8,9))){  
        y2=c(y2,z2)
      }
    break
  
  }
 }
}

max(y2)
    
    
      
    