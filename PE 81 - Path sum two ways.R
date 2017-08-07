c=scan("matrix.txt",sep = ",")
a=matrix(0,sqrt(length(c)),sqrt(length(c)))
b=matrix(0,sqrt(length(c)),sqrt(length(c)))

s=0
for(i in 1:length(a[,1])){
  for(j in 1:length(a[1,])){
      s=s+1
      a[i,j]=c[s]
  }
}

b[length(a[1,]),length(a[,1])]=a[length(a[1,]),length(a[,1])]

for(i in (length(a[1,])-1):1){
  b[length(a[,1]),i]=b[length(a[,1]),i+1]+a[length(a[,1]),i]
}

for(i in (length(a[,1])-1):1){
  b[i,length(a[,1])]=b[i+1,length(a[,1])]+a[i,length(a[,1])]
}

for(i in (length(a[1,])-1):1){
  for(j in (length(a[,1])-1):1){
    b[i,j]=min(b[i+1,j],b[i,j+1])+a[i,j]
  }
}







