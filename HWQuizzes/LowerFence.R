
myQs = sort(sample(90:190,3));
IQR = diff(range(myQs));
LF = myQs[1] -(1.5*IQR);
UF = myQs[3] +(1.5*IQR);
 
cat(" XX Suppose that we are given the following pieces of information about a dataset:","\n","\n",
" First Quartile (Q1) = ", myQs[1], "\n",
" Median (Q2) = ", myQs[2], "\n",
" Third Quartile (Q1) = ", myQs[3], "\n","\n",
"XX Compute the Lower Fence."   ,"\n",
"\n","XX Write your answer here: {", LF ,"}","\n","\n")
 
