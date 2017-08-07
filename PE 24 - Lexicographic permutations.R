library(combinat)
a=permn(c(0,1,3,4,5,6,7,8,9))
b=c(NULL)
for(i in 1:length(a)){
  b=c(b,as.numeric(paste(as.numeric(unlist(a[i])), collapse = "")))
}

u=sort(b)[274240]
answer <- c(2,u)


# entry that we want is
factorial(10)-2*factorial(9)