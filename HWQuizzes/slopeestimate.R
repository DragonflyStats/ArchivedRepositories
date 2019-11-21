 
 
n=10

 X <- sample(20:60,n,T)
 Y <- sample(10:40,n,T)

while( cor(X,Y) < 0.7){
Y <- sample(10:40,n,T)
} 
 

Sxx = var(X)*(n-1)
Syy = var(Y)*(n-1)
Sxy = cov(X,Y)*(n-1)
beta1 = Sxy/Sxx
cat("XX A regression model was fitted using the following data sets:","\n","\n",
"X:",X,"\n",
"Y:",Y,"\n","\n",
"XX Suppose you are given the following pieces of information","\n","\n",
" - Sxx : ", Sxx, "\n",
" - Syy : ", Syy, "\n",
" - Sxy : ", Sxy, "\n",
" - Sample size (n) : ", n , "\n",
" - Sample mean of X : ", round(mean(X),3) , "\n",
" - Sample mean of Y : ", round(mean(Y),3) , "\n","\n",
"XX Compute the slope estimate (denoted b1)", "\n",
"XX Write your answer here:	{  ",	beta1 *0.98,"|", beta1 * 1.02,"}","\n","\n",
"XX Use three decimal places.","\n","\n")						
				
 
