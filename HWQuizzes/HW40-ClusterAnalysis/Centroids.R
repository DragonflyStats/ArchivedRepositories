
sink("clustercentroids.txt")
for (i in 1:30){
ncases <- 8

nvars  <- 3

dim    <- ncases * nvars

obs <- matrix( sample(-9:9,(ncases*nvars),TRUE),nrow = ncases)

centroid <- colMeans(obs)

cat("\nA cluster contains 8 cases, labelled A to H.") 

cat("\nEach case is measured on three variables: [X,Y,Z].")

for(i in 1:nrow(obs)){
cat("\n * ",LETTERS[i]," = [", paste(as.character(obs[i,]), sep="' '", collapse=", ")  ,"]")
}

cat("\n")


cat("\n")

cat("Calculate the centroid of the cluster.")

cat("\n")
cat("\n")
cat("Write the X co-ordinate of the centroid here: {",(centroid[1]-0.05),"|", (centroid[1]+0.05) ,"}.")
cat("\n")
cat("Write the Y co-ordinate of the centroid here: {",(centroid[2]-0.05),"|", (centroid[2]+0.05) ,"}.")
cat("\n")
cat("Write the Z co-ordinate of the centroid here: {",(centroid[3]-0.05),"|", (centroid[3]+0.05) ,"}.")
cat("\n\n")
cat("Use three decimal places in writing your answer.")

cat("\n")
cat("\n")
cat("\n")
cat("\n")
}

sink()

