###########
# 1. Euclidean Distance

sink("EuclideanDistance.txt")
for(i in 1:40){


A = sample(-10:15,5,T)
B = sample(-10:15,5,T)

De = (sqrt(sum((A-B)^2)))
De = round(De,3)

cat("\n\n")
cat("\n\n")
cat("XX Suppose we describe observations using five numeric variables.","\n")
cat("XX Compute the Euclidean Distance between the following pair of cases: A and B.")
cat("\n\n")
cat("XX  Case A:",paste(A,sep="   ")) 
cat("\n")
cat("XX  Case B:",paste(B,sep="   ")) 
cat("\n\n")
cat("XX Write your answer here:{",(De-0.05),"|",(De+0.05),"}.")
cat("\n")
cat("XX (Use three decimal places in your answer.)")
}
sink()

###########
# 2. Squared Euclidean Distance

sink("SquaredEuclideanDistance.txt")
for(i in 1:20){


A = sample(-10:15,5,T)
B = sample(-10:15,5,T)

De = (sum((A-B)^2))
De = round(De,3)

cat("\n\n")
cat("\n\n")
cat("XX Suppose we describe observations using five numeric variables.","\n")
cat("XX Compute the Squared Euclidean Distance between the following pair of cases: C and D.")
cat("\n\n")
cat("XX  Case C:",paste(A,sep="   ")) 
cat("\n")
cat("XX  Case D:",paste(B,sep="   ")) 
cat("\n\n")
cat("XX Write your answer here:{",(De-2),"|",(De+2),"}.")
cat("\n")
}
sink()

###########
# 3. Manhattan Distance

sink("ManhattanDistance.txt")
for(i in 1:30){


A = sample(-10:15,6,T)
B = sample(-10:15,6,T)

De = (sum(abs(A-B)))
De = round(De,3)

cat("\n\n")
cat("\n\n")
cat("XX Suppose we describe observations using six numeric variables.","\n")
cat("XX Compute the Manhattan Distance between the following pair of cases: E and F.")
cat("\n\n")
cat("XX  Case E:",paste(A,sep="   ")) 
cat("\n")
cat("XX  Case F:",paste(B,sep="   ")) 
cat("\n\n")
cat("XX Write your answer here:{",(De-2),"|",(De+2),"}.")
cat("\n")
}
sink()

###########
# 4. Chebyshev Distance

sink("ChebyshevDistance.txt")
for(i in 1:30){


A = sample(-10:15,6,T)
B = sample(-10:15,6,T)

De = (max(abs(A-B)))
De = round(De,3)

cat("\n\n")
cat("\n\n")
cat("XX Suppose we describe observations using six numeric variables.","\n")
cat("XX Compute the Chebyshev Distance between the following pair of cases: G and H.")
cat("\n\n")
cat("XX  Case G:",paste(A,sep="   ")) 
cat("\n")
cat("XX  Case H:",paste(B,sep="   ")) 
cat("\n\n")
cat("XX Write your answer here:{",(De-1),"|",(De+1),"}.")
cat("\n")
}
sink()

###########
# 5. Minkowski Distance

sink("MinkowskiDistance.txt")
for(i in 1:30){


A = sample(-10:15,4,T)
B = sample(-10:15,4,T)

De = sum((abs(A-B))^(3))^(1/3)
De = round(De,3)

cat("\n\n")
cat("\n\n")
cat("XX Suppose we describe observations using four numeric variables.","\n")
cat("XX Compute the Minkowski Distance, with p = 3, between the following pair of cases: I and J.")
cat("\n\n")
cat("XX  Case I:",paste(A,sep="   ")) 
cat("\n")
cat("XX  Case J:",paste(B,sep="   ")) 
cat("\n\n")
cat("XX Write your answer here:{",(De-0.05),"|",(De+0.05),"}.")
cat("\n")
cat("XX (Use three decimal places in your answer.)")
}
sink()

###########
# 6. Log Transformed Distance

sink("LogDistance.txt")
for(i in 1:30){


A = sample(-10:15,4,T)
A = c(A,sample(600,700,1))
B = sample(-10:15,4,T)
B = c(B,sample(500,600,1))

Acalc = A
Acalc[5] = log(Acalc[5])
Bcalc = B
Bcalc[5] = log(Bcalc[5])
De = (sum((Acalc-Bcalc)^2))^(1/2)
De = round(De,3)

cat("\n\n")
cat("\n\n")
cat("XX Suppose we describe observations using five numeric variables.","\n")
cat("XX We are required to compute the logarithm transformation of the last variable, using the natural logarithm","\n")
cat("XX Compute the Euclidean Distance between the pair of cases: I and J.")

cat("\n\n")
cat("XX  Case I:",paste(A,sep="   ")) 
cat("\n")
cat("XX  Case J:",paste(B,sep="   ")) 
cat("\n\n")
cat("XX Write your answer here:{",(De-0.05),"|",(De+0.05),"}.")
cat("\n")
cat("XX (Use three decimal places in your answer.)")
}
sink()
