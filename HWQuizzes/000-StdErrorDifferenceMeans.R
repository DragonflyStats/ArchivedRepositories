
xbar1=sample(20:40,1)*5
xbar2=xbar1 + sample(2:7,1)*5;

n1=sample(9:20,1)*5;n2=n1+sample(-3:3,1)*5;s1=sample(6:11,1);s2=sample(6:11,1);
SE = sqrt( (s1^2/n1) + (s2^2/n2) )

cat("\n","Suppose we have two statistical information on two samples:","\n","\n",										
"Sample 1","\n",	
"------------","\n",					
"The sample mean is: ",xbar1,"\n",				
"The sample standard deviation is :", s1,"\n",				
"The sample size is :", n1,"\n",					
"\n","Sample 2","\n",	
"------------","\n",					
"The sample mean is: ",xbar2,"\n",				
"The sample standard deviation is :", s2,"\n",				
"The sample size is :", n2,"\n",					
"Compute the Standard Error for the difference in Means", "\n","\n",						
"Write your answer here:	{  ",	round(0.96*SE,3),"|",round(1.04*SE,3),"}","\n","\n",
"Use three decimal places.")						
						
