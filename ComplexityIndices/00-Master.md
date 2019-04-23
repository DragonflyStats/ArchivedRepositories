### Summary 

Significant difference in Complexity Index for Pelvis Area 


### Statement of your hypothesis


### Complexity Indices & Sample Entropy

* *What are they?*
* *Which measure is more important?*
* *How they are active in literature*.

### Testing for Differences: Univariated Paired Tests

The test for a significant difference between measurements before and after fatigue training is carried out by univariate procedures (i.e. the well-known paired t-test) for each variable.

### Results of univariate paired t-test

* *Bonferrroni Correction*


Bonferroni correction would commonbly feature in significance testing of families of hypotheses to provide an aggregated indication of significance.
In multivariate statistics, a single hypothesis test would be carried out on a set of variables, yielding one significance value, with no necessity to carry out a correction. 



### Multivariate Procedures

To account for correlated nature of the variables, multiavariate procedure are used to jointly test for significant difference at each region (i.e. pelvis, thorax and ankles).
Two procedures are used to test for significant difference.

1. The Hotelling Multivariate Paired Test
2. A Paired T-test on the Mahalanobis Distances.




As the Left and Right tibia measurements are identical, only one set of measurements is included (we pick Left).


### Description of Hotelling Paired Test

The Hotelling Paired T-test is implemented using the MVTest R package (using the MPaired function).

### Part A : MVTests - Complexity Index - Results of Hotelling Procedure

* A1: CI - all three regions  - p-value: 0.2598553 - no significant difference
* A2: CI - for tibia (left)  - p-value: 0.282157 - no significant difference
* A3: CI - for pelvis  - p-value:  0.01274736 -  ***significant difference****
* A4: CI - for thorax  - p-value: 0.4543853 -  no significant difference

### Part B : MVTests - Sample Entropy - Results of Hotelling Procedure

* B1: SE - all three regions  - p-value: 0.537562 -  no significant difference
* B2: SE - for tibia (left)  - p-value: 0.2134127 -  no significant difference
* B3: SE - for pelvis  - p-value: 0.678382 -  no significant difference
* B4: SE - for thorax  - p-value: 0.3566413 -  no significant difference


### Mahalanobis Procedure

(What is the Mahalanobis Distance?)

Both Pre and Post measurements are combined into a single matrix of measurements, creating a 30 x 9 matrix. Using the vector of column means, and the covariance matrix, a set of 30 Mahalanobis Distances are calculated using the "mahalanobis" funtion in R. 
These Mahalanobis distances are split into two paired values, on which the conventional paired t-test can be applied. 
This approach is a useful complement to the Hotelling test as it would allow 
analysts to determine if any particular athletes are influential in the outcome of the procedure.

### PART C Summary of Results of Mahalanobis Paired Test Procedure

Compelxity Indices

* C1: CI - all three regions  - ***significant difference****
* C2: CI - for tibia (left)  - no significant difference
* C3: CI - for pelvis  -  ***significant difference****
* C4: CI - for thorax  - no significant difference


The assumption of normality for the Casewise Differences is tested with the Shapiro Wilk Test. In the cases where validity of the nornality assumption is not valid, the paired t-test procedure is superseded by it's non parametric counterpart, the Wilcoxon Sign Test. 

#### C1 Test for all 9 Variables (Significant Difference)

<pre><code>

       Shapiro-Wilk normality test

data:  CIMD_POST - CIMD_PRE
W = 0.94448, p-value = 0.442

	Paired t-test

data:  CIMD_POST and CIMD_PRE
t = 1.7899, df = 14, p-value = 0.04756
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 0.02244618        Inf
sample estimates:
mean of the differences 
               1.407416 



	Wilcoxon signed rank test

data:  CIMD_POST and CIMD_PRE
V = 87, p-value = 0.06769
alternative hypothesis: true location shift is greater than 0

</code></pre>

#### C2 Test for Tibia Variables (No Significant Difference)

<pre><code>

	Shapiro-Wilk normality test

data:  CIMD_POST - CIMD_PRE
W = 0.97489, p-value = 0.9227

	Paired t-test

data:  CIMD_POST and CIMD_PRE
t = 1.0157, df = 14, p-value = 0.1635
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -0.4263781        Inf
sample estimates:
mean of the differences 
              0.5808437 


	Wilcoxon signed rank test

data:  CIMD_POST and CIMD_PRE
V = 75, p-value = 0.2106
alternative hypothesis: true location shift is greater than 0

</code></pre>


#### C3 Test for Pelvis Variables (Significant Difference)

<pre><code>

	Shapiro-Wilk normality test

data:  CIMD_POST - CIMD_PRE
W = 0.94023, p-value = 0.3853

	Paired t-test

data:  CIMD_POST and CIMD_PRE
t = 2.2834, df = 14, p-value = 0.01927
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 0.255188      Inf
sample estimates:
mean of the differences 
               1.116083 


	Wilcoxon signed rank test

data:  CIMD_POST and CIMD_PRE
V = 96, p-value = 0.02063
alternative hypothesis: true location shift is greater than 0

</code></pre>

#### C4 Test for Thorax Variables (No Significant Difference)

<pre><code>

	Shapiro-Wilk normality test

data:  CIMD_POST - CIMD_PRE
W = 0.96848, p-value = 0.8349


	Paired t-test

data:  CIMD_POST and CIMD_PRE
t = 0.076116, df = 14, p-value = 0.4702
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -1.000622       Inf
sample estimates:
mean of the differences 
             0.04519575 

	Wilcoxon signed rank test

data:  CIMD_POST and CIMD_PRE
V = 67, p-value = 0.3599
alternative hypothesis: true location shift is greater than 0

</code></pre>

#### Part D Sample Entropy 

* SE - all three regions  - no significant difference
* SE - for tibia (left)  - no significant difference
* SE - for pelvis  -  ***significant difference***
* SE - for thorax  - no significant difference


#### D1 : All Three Regions together (not significant)

<pre><code>

	Shapiro-Wilk normality test

data:  SEMD_POST - SEMD_PRE
W = 0.94618, p-value = 0.4665


	Paired t-test

data:  SEMD_POST and SEMD_PRE
t = 1.6623, df = 14, p-value = 0.05934
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -0.1508658        Inf
sample estimates:
mean of the differences 
                2.53229 


	Wilcoxon signed rank test

data:  SEMD_POST and SEMD_PRE
V = 88, p-value = 0.06027
alternative hypothesis: true location shift is greater than 0
</code></pre>

#### D2 : Sample Entropy for Tibia (Not Significant)

<pre><code>

	Shapiro-Wilk normality test

data:  SEMD_POST - SEMD_PRE
W = 0.54936, p-value = 9.052e-06


	Paired t-test

data:  SEMD_POST and SEMD_PRE
t = 1.4806, df = 14, p-value = 0.08044
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -0.4555543        Inf
sample estimates:
mean of the differences 
               2.402516 


	Wilcoxon signed rank test

data:  SEMD_POST and SEMD_PRE
V = 79, p-value = 0.1514
alternative hypothesis: true location shift is greater than 0
</code></pre>

#### D3 : Sample Entropy  - Pelvis 

<pre><code>

	Shapiro-Wilk normality test

data:  SEMD_POST - SEMD_PRE
W = 0.98465, p-value = 0.9917


	Paired t-test

data:  SEMD_POST and SEMD_PRE
t = 0.97507, df = 14, p-value = 0.173
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -0.6249946        Inf
sample estimates:
mean of the differences 
              0.7751054 


	Wilcoxon signed rank test

data:  SEMD_POST and SEMD_PRE
V = 79, p-value = 0.1514
alternative hypothesis: true location shift is greater than 0
</code></pre>

#### D4: Sample Entropy for Thorax (Not Significant)

<pre><code>

	Shapiro-Wilk normality test

data:  SEMD_POST - SEMD_PRE
W = 0.50128, p-value = 3.602e-06



	Paired t-test

data:  SEMD_POST and SEMD_PRE
t = 1.4184, df = 14, p-value = 0.08897
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -0.6259088        Inf
sample estimates:
mean of the differences 
               2.589343 


	Wilcoxon signed rank test

data:  SEMD_POST and SEMD_PRE
V = 49, p-value = 0.7378
alternative hypothesis: true location shift is greater than 0
</code></pre>
