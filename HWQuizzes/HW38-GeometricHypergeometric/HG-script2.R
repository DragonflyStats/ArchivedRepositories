sink("HyperGeometric1.txt")
for (i in 1:25){
N  = sample(12:16,1)
n1 = sample(5:8,1)
n2 = N-n1


X  = sample(5:9,1)
x1 = sample(2:7,1)
while(x1 >= X){x1 = sample(2:7,1)}
x2 = X - x1

prob <- (choose(n1,x1) *choose(n2,x2))/choose(N,X)


while(prob<0.03)
{X  = sample(5:9,1)
x1 = sample(2:7,1)
while(x1 >= X){x1 = sample(2:7,1)}
x2 = X - x1

prob <- (choose(n1,x1) *choose(n2,x2))/choose(N,X)
}
prob <- round(prob,4)
cat("\n\n\n")
cat("\nA deck of cards contains",N,"cards: ",n1,"red cards and",n2,"black cards.") 
cat("\n\n")
cat(X,"cards are drawn randomly without replacement.")
cat("\n\nWhat is the probability that exactly",x1,"red cards are drawn?")

cat("\n\n")
cat("Write your answer here: {",(prob-0.002),"|",(prob+0.002),"}")
cat("\n(Write your answer as a proportion,(i.e. between 0 and 1). Use four decimal places.)")

}
sink()
