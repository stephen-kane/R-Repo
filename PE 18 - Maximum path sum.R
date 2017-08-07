a=matrix(0,15,15)
b=matrix(0,15,15)
c=scan("clipboard")
s=0
for(i in 1:length(a[,1])){
  for(j in 1:i){
  if(sum(a[i,]>0)<i){
    s=s+1
    a[i,j]=c[s]
  }
 }
}

b[15,]=a[15,]

for(i in (length(b[,1])-1):1){
  for(j in 1:(sum(a[i,]>0))){
    b[i,j]=max(b[i+1,j],b[i+1,j+1])+a[i,j]
  }
}
    
  
  
    