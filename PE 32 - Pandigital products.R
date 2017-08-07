library(combinat)
a=permn(c(1,2,3,4,5,6,7,8,9))

b=c(NULL)
for(i in 1:length(a)){
  a1=as.numeric(paste(as.numeric(unlist(a[i]))[1:2], collapse = ""))
  a2=as.numeric(paste(as.numeric(unlist(a[i]))[3:5], collapse = ""))
  a3=as.numeric(paste(as.numeric(unlist(a[i]))[6:9], collapse = ""))
  if(prod(a1,a2)==a3)
    b=c(b,a3)
}

for(i in 1:length(a)){
  a1=as.numeric(paste(as.numeric(unlist(a[i]))[1], collapse = ""))
  a2=as.numeric(paste(as.numeric(unlist(a[i]))[2:5], collapse = ""))
  a3=as.numeric(paste(as.numeric(unlist(a[i]))[6:9], collapse = ""))
  if(prod(a1,a2)==a3)
    b=c(b,a3)
}
 
sum(unique(b))