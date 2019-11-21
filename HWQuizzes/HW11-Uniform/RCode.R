sink("unif1.txt")
for( i in 1:20){
mydata <- sort(sample(3:14,2))
a <- mydata[1]
b <- mydata[2]

k <- a + (b-a) * sample(30:100/100,1)
Prob <- punif(k,a,b)

cat('\n')
cat('\n')
cat('\n Suppose that X is a uniform random variable with the following parameters:')
cat("\n")
cat("\n * minimium : a =",a )
cat("\n * maximium : b =",b )
cat('\n')
cat("\n Compute P(X <", k ,")" )
cat('\n')
cat('\n')

cat(" Write your answer here : {", (Prob-0.005),"|",(Prob+0.005),"}.") 
cat('\n')
cat('\n')
cat(" Use 3 decimal places when writing your answer.")
cat('\n')
cat('\n')
}

sink("unif2.txt")
for( i in 1:20){
mydata <- sort(sample(3:14,2))
a <- mydata[1]
b <- mydata[2]

k <- a + (b-a) * sample(30:100/100,1)
Prob <- (1- punif(k,a,b))

cat('\n')
cat('\n')
cat('\n Suppose that X is a uniform random variable with the following parameters:')
cat("\n")
cat("\n * minimium : a =",a )
cat("\n * maximium : b =",b )
cat('\n')
cat("\n Compute P(X >", k ,")" )
cat('\n')
cat('\n')

cat(" Write your answer here : {", (Prob-0.005),"|",(Prob+0.005),"}.") 
cat('\n')
cat('\n')
cat(" Use 3 decimal places when writing your answer.")
cat('\n')
cat('\n')
}



sink("unif3.txt")
for( i in 1:20){
mydata <- sort(sample(3:14,2))
while(diff(mydata)<3){mydata <- sort(sample(3:14,2))}
a <- mydata[1]
b <- mydata[2]

k1 <- a + (b-a) * sample(20:50/100,1)
k2 <- a + (b-a) * sample(55:95/100,1)
Prob <- punif(k2,a,b)-punif(k1,a,b)

cat('\n')
cat('\n')
cat('\n Suppose that X is a uniform random variable with the following parameters:')
cat("\n")
cat("\n * minimium : a =",a )
cat("\n * maximium : b =",b )
cat('\n')
cat("\n Compute P(",k1,"< X <", k2 ,")" )
cat('\n')
cat('\n')

cat(" Write your answer here : {", (Prob-0.005),"|",(Prob+0.005),"}.") 
cat('\n')
cat('\n')
cat(" Use 3 decimal places when writing your answer.")
cat('\n')
cat('\n')
}
