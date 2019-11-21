 
 
myZ=sample(10:250/100,1) 
myProb = 1-pnorm(myZ)
 
cat(" XX Use Murdoch Barnes Tables 3 to determine the following probability:","\n","\n",
" P( Z > ", myZ ,")","\n",
"\n","XX Write your answer here: {", myProb-0.001,"|",myProb+0.001,"}","\n","\n")
 
