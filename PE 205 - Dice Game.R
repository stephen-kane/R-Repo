library(dice)
p=getTotalProbs(9,4,perDieMinOfOne=TRUE)$probabilities
c=getTotalProbs(6,6,perDieMinOfOne=TRUE)$probabilities

p=rbind(c(8,0,0),p) 
p=rbind(c(7,0,0),p)
p=rbind(c(6,0,0),p)

# thought I needed the same number of rows...could've been (for i in 1:28){
r=0
for(i in 4:31){
  for(j in 1:31){
    if(p[i,1]>c[j,1])
      r=r+p[i,2]*c[j,2]
  }
}
