#### Complexity Indices & Sample Entropy

* *What are they?*
* *Which measure is more important?*

#### Testing for Differences: Univariated Paired Tests

The test for a significant difference between measurements before and after fatigue training is carried out by univariate procedures (i.e. the well-known paired t-test) for each 
variable.



#### Multivariate Procedures

To account for correlated nature of the variables, multiavariate procedure are used to jointly test for significant difference at each region (i.e. pelvis, thorax and ankles).
Two procedures are used to test for significant difference.
1. The Hotelling Multivariate Paired Test
2. A Paired T-test on the Mahalanobis Distances.

(As the validity of the nornality assumption is open to scrutiny, the paired t-test procedure is complemented by it's non parametric counterpart, the Wilcoxon Sign Test.)

The Hotelling Paired T-test is implemented using the MVTest R package (using the MPaired function).

As the Left and Right tibia measurements are identical, only one set of measurements is included.

#### Results of Hotelling Procedure

* CI - all three regions  - no significant difference
* CI - for tibia (left)  - no significant difference
* CI - for pelvis  -  ***significant difference****
* CI - for thorax  - no significant difference

* SE - all three regions  - no significant difference
* SE - for tibia (left)  - no significant difference
* SE - for pelvis  -  ***significant difference***
* SE - for thorax  - no significant difference

#### Mahalanobis Procedure

(What is the Mahalanobis Distance?)

Both Pre and Post measurements are combined into a single matrix of measurements, creating a 30 x 9 matrix. Using the vector of column means, and the covariance
matrix, a set of 30 Mahalanobis Distances are calculated using the mahalanobis funtion in R. 
These Mahalanobis distances are split into two paired values, on which the conventional paired t-test can be applied. 
This approach is a useful complement to the Hotelling test as it would allow 
analysts to determine if any particular athletes are influential in the outcome of the procedure.

#### Summary of Results of Mahalanobis Paired Test Procedure

* CI - all three regions  - no significant difference
* CI - for tibia (left)  - no significant difference
* CI - for pelvis  -  ***significant difference****
* CI - for thorax  - no significant difference

#### Test for Tibia Variables (No Significant Difference)

<pre><code>

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

#### Test for Pelvis Variables (Significant Difference)

<pre><code>

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

</code><pre>

#### Test for Thorax Variables (No Significant Difference)

<pre><code>

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

#### Sample Entropy 

* SE - all three regions  - no significant difference
* SE - for tibia (left)  - no significant difference
* SE - for pelvis  -  ***significant difference***
* SE - for thorax  - no significant difference

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

#### Sample Entropy for Tibia

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
</code><pre>

#### Sample Entropy  - Pelvis 

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

#### Sample Entropy for Thorax

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
