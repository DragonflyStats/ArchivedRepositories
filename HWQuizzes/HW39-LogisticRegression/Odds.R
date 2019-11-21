

sink("odds.txt")


prob = 1:19/20

for(i in 1:length(prob)){

odds = round(prob[i]/(1-prob[i]),3)

cat("\n\n")
cat("Suppose that the probability that a certain event occurs is",prob[i],".")
cat("\n\n")
cat("How can we express that probability in terms of odds?")
cat("\n\n")
cat("Write your answer here : {",(odds-0.02),"|" ,(odds+0.02),"}.")
cat("\nUse three decimal places in writing your answer.")
cat("\n\n\n")
}

prob = 1:5/6

for(i in 1:length(prob)){

odds = round(prob[i]/(1-prob[i]),3)

cat("\n\n")
cat("Suppose that the probability that a certain event occurs is",prob[i],".")
cat("\n\n")
cat("How can we express that probability in terms of odds?")
cat("\n\n")
cat("Write your answer here : {",(odds-0.02),"|" ,(odds+0.02),"}.")
cat("\nUse three decimal places in writing your answer.")
cat("\n\n\n")
}


prob = 1:6/7

for(i in 1:length(prob)){

odds = round(prob[i]/(1-prob[i]),3)

cat("\n\n")
cat("Suppose that the probability that a certain event occurs is",prob[i],".")
cat("\n\n")
cat("How can we express that probability in terms of odds?")
cat("\n\n")
cat("Write your answer here : {",(odds-0.02),"|" ,(odds+0.02),"}.")
cat("\nUse three decimal places in writing your answer.")
cat("\n\n\n")
}


sink()
