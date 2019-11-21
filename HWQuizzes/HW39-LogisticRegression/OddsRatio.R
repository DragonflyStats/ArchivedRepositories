sink("OddsRatio.txt")
for (i in 1:3){

n1=sample(12:25,1)*5
n2=sample(12:25,1)*5
x1=sample(2:12,1)*5
x2=sample(2:12,1)*5

while(x1==x2){x2=sample(2:12,1)*5}


oddsratio = (x1/n1)/(x2/n2)
oddsratio = round(oddsratio,4)
cat("Suppose that, out of a samle of", n1, "women and", n2,"men,",x2,"men drank alcohol in the last
week, while",x1,"women drank alcohol in past week.") 
cat("\n\nCompute the odds ratio for Women to men.
")
cat("\n\n")
cat("Write your answer here : {",(oddsratio-0.01),"|" ,(oddsratio+0.01),"}.")
cat("\nUse three decimal places in writing your answer.")
cat("\n\n\n")
}




sink()
