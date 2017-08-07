x=1:1000000
y=as.character(x)
q=unlist(strsplit(y,split = ""))
w=c(q[1],q[10],q[100],q[1000],q[10000],q[100000],q[1000000])
prod(as.numeric(w))