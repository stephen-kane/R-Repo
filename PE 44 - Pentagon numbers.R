a=numeric(length=5000)
for(i in 1:5000){
  a[i]=i*(3*i-1)/2
}

b=unique(outer(a,a,"+"))
c=unique(outer(a,a,"-"))

d=c(NULL)
for(i in 1:length(b)){
  if(any(b[i]==a))
     if(any(c[i]==a))
       d=c(d,abs(c[i]))
}

min(d)
       