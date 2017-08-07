for(i in 1:1000000){
y1=as.character(i)
q1=unlist(strsplit(y1,split = ""))
z1=as.numeric(q1)
y2=as.character(2*i)
q2=unlist(strsplit(y2,split = ""))
z2=as.numeric(q2)
y3=as.character(3*i)
q3=unlist(strsplit(y3,split = ""))
z3=as.numeric(q3)
y4=as.character(4*i)
q4=unlist(strsplit(y4,split = ""))
z4=as.numeric(q4)
y5=as.character(5*i)
q5=unlist(strsplit(y5,split = ""))
z5=as.numeric(q5)
y6=as.character(6*i)
q6=unlist(strsplit(y6,split = ""))
z6=as.numeric(q6)
if(length(sort(z1))==length(sort(z2)) && length(sort(z1))==length(sort(z3)) && length(sort(z1))==length(sort(z4)) && length(sort(z1))==length(sort(z5))&& length(sort(z1))==length(sort(z6))){
if(identical(sort(z1),sort(z2)) && identical(sort(z1),sort(z3)) && identical(sort(z1),sort(z4)) && identical(sort(z1),sort(z5)) && identical(sort(z1),sort(z6)))
  print(i)
}
}