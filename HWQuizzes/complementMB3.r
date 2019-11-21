 
 
myZ=sample(10:280/100,1) 
myProb = pnorm(myZ)
 
cat(" XX Use Murdoch Barnes Tables 3 to determine the following probability:","\n","\n",
" P( Z > ", myZ ,")","\n","\n",
"(Hint: use complement rule)","\n",
"\n","XX Write your answer here: {", myProb-0.001,"|",myProb+0.001,"}","\n","\n")
 
