#############################################################

smallestcat= character()

for( i in 1: length(Temp))
  {
  smallestcat[i]<- names(Temp[[i]][1])
  }



hazard1level=numeric()

for( i in 1:nrow(df2) ){
hazard1level[i] <- sum(as.character(df2[i,])==smallestcat)/ncol(df2)
}

hazard1level = data.frame(Identifier = rownames(mtcars),Hazard1 = hazard1level)
hazard1level = hazard1level[order(hazard1level$Hazard1,decreasing = TRUE),]
