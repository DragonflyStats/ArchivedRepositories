

sink("information.txt")
for(i in 1:20){
Plist = c(10:990)/1000

P = round(runif(1),3)

I = round(-1*log(P,2),3)


cat("\n\nSuppose that probability of an event is",P,".")
cat("\n\n")
cat("What is the corresponding information? (Use base 2).")
cat("\n\n")
cat("Write your answer here:{",(I-0.01),"|",(I+0.01),"}.")
cat("\n")
cat("(Use three decimal places.)")
cat("\n\n")

}
