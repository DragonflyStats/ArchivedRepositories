n=sample(6:8,1)

X <- sample(10:25,n,T)

while( var(X) != floor(var(X)) ){X <- sample(10:25,n,T) }

cat("\n","XX Compute the variance of the following data set X:","\n","\n",
"X :", X,"\n", "\n",
"XX Write your answer here:	{  ",	0.99*var(X),"|",var(X)*1.01,"}","\n",
"XX (Your answer should be an integer)",
"\n")						
				
 