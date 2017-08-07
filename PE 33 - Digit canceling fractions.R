## could be improved to actually spit out the answer, but it's there. am lazy

q2=c(NULL)
q3=c(NULL)
for(d in 10:99){
  y=as.character(d)
  q=as.numeric(unlist(strsplit(y,split = "")))
  for(n in 1:d){
    
    w=as.numeric(n/d)
    if(w==1)
      next
    y1=as.character(n)
    q1=as.numeric(unlist(strsplit(y1,split = "")))
    for(i in 1:2){
      if(any(q[i]==q1)){
        q2=q1[-which(q[i]==q1)]
        if(length(q2)==0 || is.null(q2))
          q2=c(1)
        q3=q[-which(q[i]==q)]
        if(is.null(q3) || length(q3)==0)
          q3=c(1)
      }
      if(as.numeric(q2/q3)==w )
        print(c(q1,q,q2,q3))
    }
  }
}
        
        
      
    
    