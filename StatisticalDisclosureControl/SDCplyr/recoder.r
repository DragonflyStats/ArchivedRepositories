df2$carb
levels[df2$carb]
level[df2$carb]
levels(df2$carb)
which(levels(df2$carb)==6)
which(levels(df2$carb)==6)-1
which(levels(df2$carb)=="6")-1
levels(df2$carb)[5]
levels(df2$carb)[4]
n=5
levels(df2$carb)[n-1:n]
levels(df2$carb)[c(n-1,n)]
paste(levels(df2$carb)[n-1],levels(df2$carb)[n])
paste(levels(df2$carb)[n-1]," and ", levels(df2$carb)[n])
paste(levels(df2$carb)[n-1],"and", levels(df2$carb)[n])
joinword="and"
paste(levels(df2$carb)[n-1],joinword, levels(df2$carb)[n])
