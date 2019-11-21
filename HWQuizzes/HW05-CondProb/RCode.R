
sink("condprob.txt")
for(i in 1:5){
LB = 0
UB = 0

PS = sample((10:16)*5,1)
PE = 100-PS
P3 = sample(3:5,1)
P4 = sample(3:5,1)

LB = round( ( ((PE/100)*(P3/100) + (PS/100)*(P4/100)) * 0.99),3)
UB = round( ( ((PE/100)*(P3/100) + (PS/100)*(P4/100)) * 1.01),3)

cat("\n")
cat("An assembly plant has two suppliers, one based in England (E) and the other in Spain (S).")
cat("\n")
cat(PS, "% of the components are supplied by the Spanish factory.") 
cat("\n")
cat("The remaining", PE,"% by the English factory.") 
cat("\nThe defect rate in the English plant is",P3, "% and in the Spanish plant is",P4,"%.")

cat("\n\n")
cat("If a component is randomly selected from the production floor, what is the probability that it will fail?")
cat("\n\n")
cat("Write your answer here {", LB , "|" , UB ,"}")
cat("\n\n")
cat("Use three decimal places.")
cat("\n")
}
sink()
