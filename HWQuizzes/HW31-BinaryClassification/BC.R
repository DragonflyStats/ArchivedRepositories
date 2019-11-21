sink("binaryclass1.txt")
for( i in 1:20){
mydata <- sort(sample(3:15,3))
N=10000
tp <- mydata[1] *25
fp <- mydata[2] *25
fn <- mydata[3] *25

tn = N-(tp+fp+fn)

Acc = round(((tp+tn)/N),4)
Recall =  round((tp/(tp+fn)),4)
Prec =  round((tp/(tp+fp)),4)
Fmeas = round( ((2 * Recall * Prec)/(Recall + Prec)),4)
cat('\n')
cat('\n')
cat("The performance of a binary classification procedure can be assessed by the confusion matrix below.")
cat("\n")
cat("\n * TN =",sprintf("%4.0f",tn),"     * FP = ",sprintf("%4.0f",fp))
cat("\n * FN =",sprintf("%4.0f",fn),"     * TP = ",sprintf("%4.0f",tp) )
cat('\n')
cat("\n")
cat("Compute the accuracy value." )
cat('\n')
cat('\n')

cat("Write your answer here : {", (Acc-0.002),"|",(Acc+0.002),"}.") 
cat('\n')
cat('\n')
cat("Use 4 decimal places when writing your answer.")
cat('\n')
cat("Express your answer as a proportion, between 0 and 1.")
cat('\n')
}

sink("binaryclass2.txt")
for( i in 1:20){
mydata <- sort(sample(3:15,3))
N=10000
tp <- mydata[1] *25
fp <- mydata[2] *25
fn <- mydata[3] *25

tn = N-(tp+fp+fn)

Acc = round(((tp+tn)/N),4)
Recall =  round((tp/(tp+fn)),4)
Prec =  round((tp/(tp+fp)),4)
Fmeas = round( ((2 * Recall * Prec)/(Recall + Prec)),4)
cat('\n')
cat('\n')
cat("The performance of a binary classification procedure can be assessed by the confusion matrix below.")
cat("\n")
cat("\n * TN =",sprintf("%4.0f",tn),"     * FP = ",sprintf("%4.0f",fp))
cat("\n * FN =",sprintf("%4.0f",fn),"     * TP = ",sprintf("%4.0f",tp) )
cat('\n')
cat("\n")
cat("Compute the recall value." )
cat('\n')
cat('\n')

cat("Write your answer here : {", (Recall-0.002),"|",(Recall+0.002),"}.") 
cat('\n')
cat('\n')
cat("Use 4 decimal places when writing your answer.")
cat('\n')
cat("Express your answer as a proportion, between 0 and 1.")
cat('\n')
}

###############################################################################

sink("binaryclass3.txt")
for( i in 1:20){
mydata <- sort(sample(3:15,3))
N=10000
tp <- mydata[1] *25
fp <- mydata[2] *25
fn <- mydata[3] *25

tn = N-(tp+fp+fn)
Acc = round(((tp+tn)/N),4)
Recall =  round((tp/(tp+fn)),4)
Prec =  round((tp/(tp+fp)),4)
Fmeas = round( ((2 * Recall * Prec)/(Recall + Prec)),4)

cat('\n')
cat('\n')
cat("The performance of a binary classification procedure can be assessed by the confusion matrix below.")
cat("\n")
cat("\n * TN =",sprintf("%4.0f",tn),"     * FP = ",sprintf("%4.0f",fp))
cat("\n * FN =",sprintf("%4.0f",fn),"     * TP = ",sprintf("%4.0f",tp) )
cat('\n')
cat("\n")
cat("Compute the Precision value." )
cat('\n')
cat('\n')

cat("Write your answer here : {", (Prec - 0.002),"|",(Prec + 0.002),"}.") 
cat('\n')
cat('\n')
cat("Use 4 decimal places when writing your answer.")
cat('\n')
cat("Express your answer as a proportion, between 0 and 1.")
cat('\n')
}


#####################
sink("binaryclass4.txt")
for( i in 1:20){
mydata <- sort(sample(3:15,3))
N=10000
tp <- mydata[1] *25
fp <- mydata[2] *25
fn <- mydata[3] *25

tn = N-(tp+fp+fn)

Acc = round(((tp+tn)/N),4)
Recall =  round((tp/(tp+fn)),4)
Prec =  round(  (tp/(tp+fp)) , 4 )
Fmeas = round( ((2 * Recall * Prec)/(Recall + Prec)),4)

cat('\n')
cat('\n')
cat("The performance of a binary classification procedure can be assessed by the confusion matrix below.")
cat("\n")
cat("\n * TN =",sprintf("%4.0f",tn),"     * FP = ",sprintf("%4.0f",fp))
cat("\n * FN =",sprintf("%4.0f",fn),"     * TP = ",sprintf("%4.0f",tp) )
cat('\n')
cat("\n")
cat("Compute the F-measure value." )
cat('\n')
cat('\n')

cat("Write your answer here : {", (Fmeas-0.005),"|",(Fmeas+0.005),"}.") 
cat('\n')
cat('\n')
cat("Use 4 decimal places when writing your answer.")
cat('\n')
cat("Express your answer as a proportion, between 0 and 1.")
cat('\n')
}
