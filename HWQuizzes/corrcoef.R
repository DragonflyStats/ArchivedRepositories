 
 

myCorr <- round(2*runif(1)-1,3)

CorrType = 1;
if(myCorr <0.9){CorrType = 2};
if(myCorr <0.7){CorrType = 3};
if(myCorr <0.4){CorrType = 4};
if(myCorr <0.1){CorrType = 5};
if(myCorr < -0.1){CorrType = 6};
if(myCorr < -0.4){CorrType = 7};
if(myCorr < -0.7){CorrType = 8};
if(myCorr < -0.9){CorrType = 9};



cat("\n",
"XX Interpret the following Pearson Correlation Coefficient: ",myCorr,"\n","\n",
"XX Use the following classification system: ","\n",
" 1 - Very Strong Positive Linear Relationship","\n",
" 2 - Strong Positive Linear Relationship","\n",
" 3 - Mildly Strong Positive Linear Relationship","\n",
" 4 - Weak Positive Linear Relationship","\n",
" 5 - No evidence of Linear Relationsip","\n",
" 6 - Weak Negative Linear Relationship","\n",
" 7 - Mildly Strong Negative Linear Relationship","\n",
" 8 - Strong Negative Linear Relationship","\n",
" 9 - Very Strong Negative Linear Relationship","\n","\n",
"XX Write Your Answer Here: {",CorrType,"}.","\n",
"XX Your answer should be an integer between 1 and 9",
"\n","\n")


 

