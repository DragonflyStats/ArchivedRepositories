library(readr)
library(dplyr)
library(MVTests)
Dominant <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/Jerk/Dominant_SE.csv")



Vars <- Dominant %>% select(Dom,Non_Dom)
Pre <- Vars[1:15,]
Post <- Vars[16:30,]

t.test(Post$Dom - Pre$Dom)
t.test(Post$Non_Dom - Pre$Non_Dom)



MDs <- mahalanobis(Vars,colMeans(Vars),cov(Vars))

MDsPre <- MDs[1:15]
MDsPost <- MDs[16:30]
shapiro.test(MDsPost-MDsPre)
t.test(MDsPost,MDsPre,paired=TRUE,alternative="greater")
wilcox.test(MDsPost,MDsPre,paired=TRUE,alternative="greater")

Mpaired(Post,Pre)
