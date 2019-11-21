
sink("DiceMeans1.txt")
for(i in 1:20){
cat("\n\n\n")
cat("An experiment consists of roll a fair die ten times, resulting in the following numbers.")
S1 <- sample(1:6,10,replace=T)
xbar1 <- mean(S1)
cat("\n\n   Numbers: ")
cat(S1,sep="  ")
cat("\n\n")
cat("Calculate the mean of these numbers.\n\n")
cat("Write your answer here:{",xbar1,"}.")
}
sink()


sink("DiceMeans2.txt")
for(i in 1:20){
cat("\n\n\n")
cat("An experiment consists of roll a fair die ten times, with the mean of the resulting numbers being computed.\n\n")
cat("This experiment was performed 10 times, and the following outcomes (i.e. means) were determined:")

S2 <- sample(1:6,100,replace=T)
S2 <- colMeans(matrix(S2,nrow=10))
xbar2 <- mean(S2)

cat("\n\n    Outcomes: ")
cat(S2,sep="  ")
cat("\n\n")
cat("Calculate the mean of these outcomes.\n\n")
cat("Write your answer here:{",xbar2,"}.")
}
sink()
