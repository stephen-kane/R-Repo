x=1:10000
w=c(NULL)
for(i in 1:10000){
  if(isprime(x[i])>0){
    w=c(w,x[i])
  }
}

con <- function(x,y){
  s=c(x,y)
  w=as.numeric(paste(s, collapse = ""))
  return(w)
}

for(i in 1:length(w)){
  for(j in i:length(w)){
    a=w[i]
    b=w[j]
      if(isprime(con(a,b))>0 && isprime(con(b,a))>0){
        #print(c(a,b))
        for(k in j:length(w)){
          c=w[k]
            if(isprime(con(a,c))>0 && isprime(con(c,a))>0
               && isprime(con(b,c))>0 && isprime(con(c,b))>0){
              for(l in k:length(w)){
                d=w[l]
                  if(isprime(con(d,c))>0 && isprime(con(c,d))>0 
                     && isprime(con(d,a))>0 && isprime(con(a,d))>0
                     && isprime(con(b,d))>0 && isprime(con(d,b))>0){
                    for(m in l:length(w)){
                      e=w[m]
                      if(isprime(con(e,a))>0 && isprime(con(a,e))>0 
                         && isprime(con(e,b))>0 && isprime(con(b,e))>0
                         && isprime(con(e,c))>0 && isprime(con(c,e))>0
                         && isprime(con(e,d))>0 && isprime(con(d,e))>0){
                        print(c(a,b,c,d,e))
             }
           }
         }
       }
     }
   }
  }
 }
}