library(readr)
library(dplyr)
library(MVTests)
Jerk_SE <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/Jerk/LoadingRate_SE.csv")
Jerk_SE <- Jerk_SE %>% select(1:4)

Jerk_SE_Pre <- Jerk_SE[1:15,]
Jerk_SE_Post <- Jerk_SE[18:32,]
Jerk_SE <- bind_rows(Jerk_SE_Pre,Jerk_SE_Post)


t.test(Jerk_SE_Post$SE_LTibX - Jerk_SE_Pre$SE_LTibX)
t.test(Jerk_SE_Post$SE_RTibX - Jerk_SE_Pre$SE_RTibX)
t.test(Jerk_SE_Post$SE_PelvisX - Jerk_SE_Pre$SE_PelvisX)
t.test(Jerk_SE_Post$SE_ThorX - Jerk_SE_Pre$SE_ThorX)

Jerk_NonDominant_post <- Jerk_SE_Post$SE_LTibX
Jerk_Dominant_post <- Jerk_SE_Post$SE_RTibX
Jerk_NonDominant_post[c(1,9)] <- Jerk_SE_Post$SE_RTibX[c(1,9)]
Jerk_Dominant_post[c(1,9)] <- Jerk_SE_Post$SE_LTibX[c(1,9)]
Jerk_NonDominant_pre <- Jerk_SE_Pre$SE_LTibX
Jerk_Dominant_pre  <- Jerk_SE_Pre$SE_RTibX
Jerk_NonDominant_pre[c(1,9)] <- Jerk_SE_Pre$SE_RTibX[c(1,9)]
Jerk_Dominant_pre[c(1,9)] <- Jerk_SE_Pre$SE_LTibX[c(1,9)]

t.test(Jerk_Dominant_post - Jerk_Dominant_pre)
t.test(Jerk_NonDominant_post - Jerk_NonDominant_pre)

Jerk_SE_2 <- data.frame(
  Dominant =c(Jerk_Dominant_pre, Jerk_Dominant_post),
  NonDominant =c(Jerk_NonDominant_pre, Jerk_NonDominant_post),
  Pelvis = Jerk_SE$SE_PelvisX,
  Thorax = Jerk_SE$SE_ThorX
)

  
MDs <- mahalanobis(Jerk_SE_2,colMeans(Jerk_SE_2),cov(Jerk_SE_2))

MDsPre <- MDs[1:15]
MDsPost <- MDs[16:30]
shapiro.test(MDsPost-MDsPre)
t.test(MDsPost,MDsPre,paired=TRUE,alternative="greater")
wilcox.test(MDsPost,MDsPre,paired=TRUE,alternative="greater")

Mpaired(Post,Pre)
