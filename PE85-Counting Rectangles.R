p = c(NULL)
for(q in 40:70){
  for(w in q:70){
d = 0
a = matrix(rep(0,q*w),q,w,byrow = TRUE)
for(i in 1:length(a[,1])){
  for(j in 1:length(a[1,])){
    b = a
    for(k in j:length(a[1,])){
     for(l in i:length(a[,1])){
      b[l,k] = 1
      d = d + 1
     }
    }
  }
}
p=c(p,c(d,q,w))
  }
}

p1 = sort(p)
which(p == 1996533)
p[256:258]
