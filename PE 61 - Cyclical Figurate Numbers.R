Triangle <- (1:1000)*((1:1000)+1)/2
Square <- (1:1000)^2
Pentagonal <- (1:1000)*(3*(1:1000)-1)/2
Hexagonal <- (1:1000)*(2*(1:1000)-1)
Heptagonal <- (1:1000)*(5*(1:1000)-3)/2
Octagonal <- (1:1000)*(3*(1:1000)-2)

Tri4 <- c(NULL)
for(i in 1:1000){
  y=as.character(Triangle[i])
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  if(length(z)==4)
    Tri4 <- c(Tri4,Triangle[i])
}

Squ4 <- c(NULL)
for(i in 1:1000){
  y=as.character(Square[i])
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  if(length(z)==4)
    Squ4 <- c(Squ4,Square[i])
}

Pen4 <- c(NULL)
for(i in 1:1000){
  y=as.character(Pentagonal[i])
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  if(length(z)==4)
    Pen4 <- c(Pen4,Pentagonal[i])
}


Hex4 <- c(NULL)
for(i in 1:1000){
  y=as.character(Hexagonal[i])
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  if(length(z)==4)
    Hex4 <- c(Hex4,Hexagonal[i])
}

Hep4 <- c(NULL)
for(i in 1:1000){
  y=as.character(Heptagonal[i])
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  if(length(z)==4)
    Hep4 <- c(Hep4,Heptagonal[i])
}

Oct4 <- c(NULL)
for(i in 1:1000){
  y=as.character(Octagonal[i])
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  if(length(z)==4)
    Oct4 <- c(Oct4,Octagonal[i])
}




Check <- function(x,y){
  return(all(GetLast2(x)==GetFirst2(y)))
}
  

GetLast2 <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  w=z[(length(z)):(length(z)-1)]
  return(w)
 }

GetFirst2 <- function(x){
  y=as.character(x)
  q=unlist(strsplit(y,split = ""))
  z=as.numeric(q)
  w=z[1:2]
  return(w)
}

All4<-c(Tri4,Squ4,Pen4,Hex4,Hep4,Oct4)

p=c(NULL)
for(i in 1:length(All4)){
  for(j in 1:length(All4){
    if(Check(All4[i],All4[j]) && i != j){
      for(k in 1:length(All4[-c(All4[i],All4[j])])){
        if(Check(All4[j]All4[k])){
          for(l in 1:length(All4[-c(All4[i],All4[j],All4[k])])){
            if(Check(All4[k],All4[l])){
              for(m in 1:length(All4[-c(All4[i],All4[j],All4[k],All4[l])])){
                if(Check(All4[l],All4[m])){
                  for(n in 1:length(All4[-c(All4[i],All4[j],All4[k],All4[l]),All4[m]])){
                    if(Check(All4[m],All4[n])){
                      if(Check(All4[n],All4[i])){
                        p=c(All4[i],All4[j],All4[k],All4[l],All4[m],All4[n])
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
                        


