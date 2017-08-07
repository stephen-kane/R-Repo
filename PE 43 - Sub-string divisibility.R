a=permn(c(0,1,2,3,4,5,6,7,8,9))
e=c(NULL)
for(i in 1:length(a)){
  if(as.numeric(unlist(a[i]))[4] %% 2 == 0)
    if(sum(as.numeric(unlist(a[i]))[3:5]) %% 3 == 0)
      if(as.numeric(unlist(a[i]))[6] %% 5 == 0)
        if((as.numeric(paste(as.numeric(unlist(a[i]))[5:6], collapse = ""))-2*as.numeric(unlist(a[i]))[7]) %% 7 == 0)
          if((as.numeric(paste(as.numeric(unlist(a[i]))[6:8], collapse = ""))) %% 11 == 0 )
            if((as.numeric(paste(as.numeric(unlist(a[i]))[7:9], collapse = ""))) %% 13 == 0 )
              if((as.numeric(paste(as.numeric(unlist(a[i]))[8:10], collapse = ""))) %% 17 == 0 )
                e=c(e,as.numeric(paste(as.numeric(unlist(a[i])),collapse = "")))
}
            
  