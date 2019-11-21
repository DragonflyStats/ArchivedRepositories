beta0 = sample(-30:50,1)/10
beta1 = sample(-30:50,1)/10
X = sample(5:20,1)
Ypred = beta0 + beta1*X

while(Ypred <0){

beta0 = sample(-30:50,1)/10
beta1 = sample(-30:50,1)/10
X = sample(5:20,1)
Ypred = beta0 + beta1*X
}

cat("\n","XX Suppose that a regression equation has the following estimates:","\n","\n",
"Intercept Estimate (b0) :", beta0,"\n", 
"Slope Estimate (b1) :", beta1,"\n","\n",
"XX Estimate the value for Y when the value for X is :",X,
"\n","\n",
"XX Write your answer here:	{  ",	Ypred*0.98,"|",Ypred*1.02,"}","\n","\n",
"XX Use three decimal places.","\n","\n")	
