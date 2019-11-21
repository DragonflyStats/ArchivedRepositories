

mu <- sample(c(60,75,90,100,120,140,150,180,200,250,280,300,400,500),1)
sigma <- sample(c(15,20,24,25,28,30,32,36,45,50),1)
Zscore <- -1* sample(10:400/100,1)
testValue <- mu + Zscore*sigma


cat("XX Suppose that X is a normally distributed random variable.","\n",
"XX This distribution is defined by :", "\n",
" - Mean (mu) : ", mu , "\n",
" - Std. deviation (sigma) : ", sigma , "\n","\n",
"XX Compute the z-score for X =",testValue,".", "\n",
"XX Write your answer here: { ",	Zscore,"}.","\n","\n",
"XX Use two decimal places.","\n","\n")						
				
 
