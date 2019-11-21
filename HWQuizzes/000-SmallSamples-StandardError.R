

xbar1=sample(20:40,1)*5
xbar2=xbar1 + sample(2:7,1)*5;

n1=sample(12:18,1);n2=n1+sample(-5:5,1);
while(n1+n2 >30){n1=sample(10:17,1);n2=n1+sample(-3:3,1)}

s1=sample(6:11,1);s2=sample(6:11,1);







PSD = sqrt(  (( (n1-1)*(s1^2) )+( (n2-1)*(s2^2) )) / (n1+n2-2) )

cat("\n","Suppose we have summary statistics for two samples:","\n","\n",										
"Sample 1","\n",	
"------------","\n",					
"The sample mean is: ",xbar1,"\n",				
"The sample standard deviation is :", s1,"\n",				
"The sample size is :", n1,"\n",					
"\n","Sample 2","\n",	
"------------","\n",					
"The sample mean is: ",xbar2,"\n",				
"The sample standard deviation is :", s2,"\n",				
"The sample size is :", n2,"\n","\n",					
"Compute the Pooled Standard Deviation", "\n","\n",						
"Write your answer here:	{  ",	round(0.98*PSD,3),"|",round(1.02*PSD,3),"}","\n","\n",
"Use three decimal places.","\n","\n")						
						
