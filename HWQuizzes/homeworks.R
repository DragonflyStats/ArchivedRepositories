sink("AdditionRule.txt")
for (i in 1:15){
pA <- sample(27:40,1)*0.02
pB <- sample(5:22,1)*0.02
pBoth <- sample(3:18,1)*0.02
pAorB <- pA + pB - pBoth
pNeither <- 1 - pAorB
cat("\nConsider the events A and B. ")
cat("\n\n * The probability of event A is " , sprintf("%0.2f",pA))
cat("\n * The probability of event B is" ,sprintf("%0.2f",pB))

cat("\n * The probability of both events occuring (i.e. A and B) is" , sprintf("%0.2f",pBoth))
cat("\n\nWhat is the probability of either event occuring (i.e. A or B) ?")
cat("\n\nWrite your answer here : {", pAorB-0.01, "|" ,  pAorB+0.01,"}.")
}
sink()
##################################
sink("CokePepsiNeither.txt")
for (i in 1:15){
pC <- sample(27:40,1)*0.02
pP <- sample(7:22,1)*0.02
pBoth <- sample(3:18,1)*0.2
pPorC <- pC + pP - pBoth
pNeither <- 1 - pPorC
cat("\nThe probability that a randomly selected person: ")
cat("\n\n * drinks Coca-Cola is" , pC)
cat("\n * drinks Pepsi is" , pP)

cat("\n * drinks both brands is" , pBoth)
cat("\n\nWhat is the probability of a randomly selected person drinking neither?")
cat("\n\nWrite your answer here : {", pNeither-0.01, "|" ,  pNeither+0.01,"}.")
}
sink()

##################################

sink("TwoComponents.txt")

for (i in 1:15){
Aworks <- sample(92:99/100,1)
Bworks <- sample(92:99/100,1)

Bothwork <- Aworks * Bworks
BothBroken <- (1-Aworks) * (1-Bworks)


cat("\nWhat is the probability of the machine working?")
cat("\n\nWrite your answer here : {", Bothwork-0.01, "|" ,  Bothwork+0.01,"}.")
}
sink()
##############################
