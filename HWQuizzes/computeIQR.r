n=sample(9:13,1)

X <- sample(10:80,n,T)

if (n == 9){IQR = mean(sort(X)[7:8]) - mean(sort(X)[2:3]) };
if (n == 10){IQR = mean(sort(X)[8]) - mean(sort(X)[3]) };
if (n == 11){IQR = mean(sort(X)[9]) - mean(sort(X)[3]) };
if (n == 12){IQR = mean(sort(X)[9:10]) - mean(sort(X)[3:4]) };
if (n == 13){IQR = mean(sort(X)[10:11]) - mean(sort(X)[3:4]) };

cat("\n","XX Compute the Inter Quartile Range (IQR) of the following data set X:","\n","\n",
"X :", X,"\n","\n", 
"XX Write your answer here:	{  ",	0.98*IQR,"|",IQR*1.02,"}","\n","\n")						
				
 