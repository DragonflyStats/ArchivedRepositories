sink("sigmoid.txt")


values <- sample(-10:10/1000,25)

sigmoid <- function(x = 0) {



sigvalue <- ( exp(x) )/( 1+exp(x) )

  ## Fraction: 
  ## numerator : exp(x)
  ## denominator : 1 + exp(x)

sigvalue <- round(sigvalue,4)
return( sigvalue )


for(i in 1:length(values)){

answer = sigmoid(values[i])

cat("\n\n")
cat("Compute the output of the sigmoid function when the input is ",value[i],".")
cat("\n\n")
cat("Write your answer here : {",(sigvalue-0.01),"|" ,(sigvalue+0.01),"}.")
cat("\nUse three decimal places in writing your answer.")
cat("\n\n\n")
}




sink()
