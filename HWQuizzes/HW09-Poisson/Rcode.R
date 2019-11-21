


sink("Poiss1.txt")
for ( i in 0:7)
{
lambda = 4
cat("\n\n")
cat("Suppose we are told that the expected number of occurrences in a unit time period is",lambda,".")
cat("\n\n")
cat("What is the probability of", i ,"occurrences in a unit time period?")
cat("\n\n")
LB = round(dpois(i,lambda)-0.005,4)
UB = round(dpois(i,lambda)+0.005,4)
cat("Write your answer here: {",LB ,"|",UB,"}" )
cat("\n\n")
cat("Use four decimal places.")
}
sink()



sink("Poiss2.txt")
for ( i in 2:8)
{
lambda = 5
cat("\n\n")
cat("Suppose we are told that the expected number of occurrences in a unit time period is",lambda,".")
cat("\n\n")
cat("What is the probability of", i ,"occurrences in a unit time period?")
cat("\n\n")
LB = round(dpois(i,lambda)-0.005,4)
UB = round(dpois(i,lambda)+0.005,4)
cat("Write your answer here: {",LB ,"|",UB,"}" )
cat("\n\n")
cat("Use four decimal places.")
}
sink()



sink("Poiss3.txt")
for ( i in 0:6)
{
lambda = 3
cat("\n\n")
cat("Suppose we are told that the expected number of occurrences in a unit time period is",lambda,".")
cat("\n\n")
cat("What is the probability of", i ,"occurrences in a unit time period?")
cat("\n\n")
LB = round(dpois(i,lambda)-0.005,4)
UB = round(dpois(i,lambda)+0.005,4)
cat("Write your answer here: {",LB ,"|",UB,"}" )
cat("\n\n")
cat("Use four decimal places.")
}
sink()
