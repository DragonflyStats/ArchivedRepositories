myZ1 = - 1*sample(10:180/100,1); 
myZ2 = sample(10:180/100,1);
mu = sample(c(100,120,150,180),1);
sigma = sample(c(10,15,20,25),1);
L = mu+myZ1*sigma;
U = mu+myZ2*sigma;


myProb1 = round( (pnorm(myZ1)),4)
myProb2 = round( (1-pnorm(myZ2)),4)
myProb = 1-(myProb1+myProb2)


 
cat(" XX Suppose that we are given the following pieces of information:","\n","\n",
" P( X < ", L ,") = ", myProb1, "\n",
" P( X > ", U ,") = ", myProb2, "\n","\n",
"XX Use the interval Rule to compute : P(",L,"< X <", U,")"      ,"\n",
"\n","XX Write your answer here: {", myProb-0.001,"|",myProb+0.001,"}","\n","\n")
 