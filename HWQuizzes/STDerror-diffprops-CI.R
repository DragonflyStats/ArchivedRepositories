sink("STDerror-diffprops-CI.txt")
for (i in 1:40){
n1=sample(5:10,1)*20
n2=n1 + sample(-4:7,1)*10;

x1=sample(7:15,1)*10;
x2=x1+sample(-3:3,1)*10;

while(x1>n1){x1=sample(5:15,1)*10}
while(x2>n2){x2=x1+sample(-3:3,1)*10}

p1 = (x1/n1)*100
p2 = (x2/n2)*100

SE = sqrt( ((p1*(100-p1))/n1) + ((p2*(100-p2))/n2) )

cat("\n\n\n")
cat("\n","Suppose we have the following information on two samples:","\n","\n",										
"Sample 1","\n",	
"------------","\n",					
"The sample size is :", n1,"\n",			
"The number of successes is :", x1,"\n"	,"\n",
"Sample 2","\n",	
"------------","\n",					
"The sample size is :", n2,"\n",			
"The number of successes is :", x2,"\n")				
cat("\n",
"Suppose we have to compute a 95% confidence interval for the Difference in Proportions.","\n",
"We will work in terms of percentages.","\n",		
"Compute the Standard Error for the Difference in Proportions.", "\n","\n",						
"Write your answer here:	{  ",	round(0.98*SE,3),"|",round(1.02*SE,3),"}","\n","\n",
"Use three decimal places.")						
}
sink()
