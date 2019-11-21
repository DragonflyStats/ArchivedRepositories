
X = c( sample(100:112,1,T),sample(130:170,11,T)) 
X = sort(X)
Gap = X[2]-X[1]; Range = diff(range(X)); TS = round(Gap/Range,3)

cat("Compute the Dixon Q Test Statistic for the following data set","\n","\n",sample(X),"\n\n","XX Write the Test Statistic here : ","{",0.99*TS,"|" , 1.01*TS,"}",
"\n","\n", "XX Write your answer to three decimal places", "\n","\n","\n")
