Strides
=============

* No significant difference
* plots are given over to JK
* discussion of plots is required: density and ecdf
* need a paragraph on why we use those plots
* properly compare the distributions.
* send over test results


Using the assumption that inter-stride times from both legs can be treated as a single sample, we utilize standard techniques such as the
two t-test and the wilcoxon rank-sum test to test for a significant difference of centrality before and after fatigue treatment.

<pre><code>
> shapiro.test(Strides$Stride)

	Shapiro-Wilk normality test

data:  Strides$Stride
W = 0.92013, p-value = 0.000329
</code></pre>

The twp sample t-test yields the following results. The conclusion of this test is that there is no
significant difference in the means inter-stride time between fatigure treatments. This procedure is undermined
by the violation of the normality assumption.

<pre><code>
> t.test(Stride ~ Treatment, data=Strides)

	Welch Two Sample t-test

data:  Stride by Treatment
t = 0.79485, df = 59.557, p-value = 0.4299
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.01155559  0.02679088
sample estimates:
 mean in group PRE mean in group POST 
         0.6715882          0.6639706 
</code></pre>

In light of the violation of the normality assumption, the non-parametric analogue of the two sample t-test, the wilcoxon rank-sum test, can test
a significant difference in location between the two populations. The outcome of this procedure accords with that of the two sample t-test, in
asserting negligible difference between populations.

<pre><code>
> wilcox.test(Stride ~ Treatment, data=Strides)

	Wilcoxon rank sum test with continuity correction

data:  Stride by Treatment
W = 614.5, p-value = 0.6586
alternative hypothesis: true location shift is not equal to 0
</code></pre>

Graphical methods of comparing two independent populations can usefully complement standard hypothesis tests. 
Here we use the empirical density plot and the empirical cumulative distribution function plot to visually assess any discrepancies 
in the distribution of both populations, in addition to the boxplot. We note from the boxplot the presence of an outlier, which would explain
the neglible difference in the other plots. The correspondence of
