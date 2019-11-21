n=12

 X <- sample(20:90,n,T)
 Y <- sample(10:50,n,T)

beta0 = coef(lm(Y~X))[1]

while( (cor(X,Y) < 0.7)|(beta0<0)){
Y <- sample(10:50,n,T)
beta0 = coef(lm(Y~X))[1]
} 
 

Sxx = var(X)*(n-1)
Syy = var(Y)*(n-1)
Sxy = cov(X,Y)*(n-1)
beta0 = coef(lm(Y~X))[1]
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
"XX Compute the intercept estimate (denoted b0)", "\n",
"XX Write your answer here:	{  ",	beta0 *0.98,"|", beta0 * 1.02,"}","\n","\n",
"XX Use three decimal places.","\n","\n")						
				