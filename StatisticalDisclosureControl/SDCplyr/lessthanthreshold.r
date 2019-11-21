############################################################

lessthanthresholdcat = character()

for( i in 1: length(Temp))
  {
  lessthanthresholdcat[i]<- names(Temp[[i]][1])
  }

###########################################################

threshold <-5 

for( i in 1: length(Temp))
  {
  print(any(Temp[[i]]<=threshold))
  }


threshold <-5 

for( i in 1: length(Temp))
  {
  print(sum(Temp[[i]]<=threshold))
  }
