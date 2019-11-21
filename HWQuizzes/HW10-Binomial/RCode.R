
for ( i in 0:7)
{
cat("\n\n")
cat("Suppose we are told that the probability of success in each independent trial is 0.25.")
cat("\n\n")
cat("What is the probability of", i ,"successes in 7 trials?")
cat("\n\n")
LB = round(dbinom(i,7,0.25)-0.005,4)
UB = round(dbinom(i,7,0.25)+0.005,4)
cat("Write your answer here: {",LB ,"|",UB,"}" )
cat("\n\n")
cat("Use four decimal places.")
}
