
sink("computeExp.txt")

for(i in 1:25){
X = -sample(3:80,1)/20

Ans = round(exp(X),4)


cat('\n')
cat('\n Use your calculator to compute the exponent of the following value :',X)
cat('\n')
cat('\n Compute exp(',X,').')
cat('\n')
cat('\n')

cat(" Write your answer here : {", (Ans-0.002),"|",(Ans+0.002),"}.") 
cat('\n')
cat('\n')
cat(" Use 4 decimal places when writing your answer.")
cat('\n')
cat('\n')
}
sink()
