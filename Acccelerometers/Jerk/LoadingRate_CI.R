## Loading Rate

library(readr)
library(dplyr)
library(MVTests)
Jerk_CI <- read_csv("https://raw.githubusercontent.com/DragonflyStats/Accelerometers/master/Jerk/LoadingRate_CI.csv")

Jerk_CI_Pre <- Jerk_CI[1:15,]
Jerk_CI_Post <- Jerk_CI[18:32,]
Jerk_CI <- bind_rows(Jerk_CI_Pre,Jerk_CI_Post)


t.test(Jerk_CI_Post$CI_LTibX - Jerk_CI_Pre$CI_LTibX)
t.test(Jerk_CI_Post$CI_RTibX - Jerk_CI_Pre$CI_RTibX)
t.test(Jerk_CI_Post$CI_PelvisX - Jerk_CI_Pre$CI_PelvisX)
t.test(Jerk_CI_Post$CI_ThorX - Jerk_CI_Pre$CI_ThorX)

Jerk_NonDominant_post <- Jerk_CI_Post$CI_LTibX
Jerk_Dominant_post <- Jerk_CI_Post$CI_RTibX
Jerk_NonDominant_post[c(1,9)] <- Jerk_CI_Post$CI_RTibX[c(1,9)]
Jerk_Dominant_post[c(1,9)] <- Jerk_CI_Post$CI_LTibX[c(1,9)]
Jerk_NonDominant_pre <- Jerk_CI_Pre$CI_LTibX
Jerk_Dominant_pre  <- Jerk_CI_Pre$CI_RTibX
Jerk_NonDominant_pre[c(1,9)] <- Jerk_CI_Pre$CI_RTibX[c(1,9)]
Jerk_Dominant_pre[c(1,9)] <- Jerk_CI_Pre$CI_LTibX[c(1,9)]

t.test(Jerk_Dominant_post - Jerk_Dominant_pre)
t.test(Jerk_NonDominant_post - Jerk_NonDominant_pre)

Jerk_CI_2 <- data.frame(
  Dominant =c(Jerk_Dominant_pre, Jerk_Dominant_post),
  NonDominant =c(Jerk_NonDominant_pre, Jerk_NonDominant_post),
  Pelvis = Jerk_CI$CI_PelvisX,
  Thorax = Jerk_CI$CI_ThorX
)

  
MDs <- mahalanobis(Jerk_CI_2,colMeans(Jerk_CI_2),cov(Jerk_CI_2))

MDsPre <- MDs[1:15]
MDsPost <- MDs[16:30]
shapiro.test(MDsPost-MDsPre)
t.test(MDsPost,MDsPre,paired=TRUE,alternative="greater")
wilcox.test(MDsPost,MDsPre,paired=TRUE,alternative="greater")

Mpaired(Post,Pre)
