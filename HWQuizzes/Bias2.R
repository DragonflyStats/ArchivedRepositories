n=9
Before <- 100+sample(480:530,n,T)/5
diff <- sample(-40:30,n,T)
while( mean(diff) != floor(mean(diff)) ) { diff <- sample(-4:8,n,T)}
After=Before+diff
Before = round(Before/10,2)
Before = sprintf("%4.2f",Before)
After = round(After/10,2)
After = sprintf("%4.2f",After)
Bias = diff/10

cat("\n","Compute the Mean of the Case-wise Differences:","\n","\n","(Work on the basis of After-Before)","\n","\n",
"Before :", Before,"\n", 
"After  :", After,"\n",
"Write your answer here:	{  ",	mean(Bias)-0.005,"|",mean(Bias)+0.005,"}","\n","\n",
"Use three decimal places.","\n","\n")						
				
 