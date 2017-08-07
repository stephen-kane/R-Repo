a=numeric(length=100000)
b=numeric(length=100000)
c=numeric(length=100000)

for(i in 1:length(a)){
  a[i]=i*(i+1)/2
}
for(i in 1:length(b)){
  b[i]=i*(3*i-1)/2
}
for(i in 1:length(c)){
  c[i]=i*(2*i-1)
}

for(i in 1:length(a)){
  if(any(a[i]==b))
    if(any(a[i]==c))
      print(a[i])
}
