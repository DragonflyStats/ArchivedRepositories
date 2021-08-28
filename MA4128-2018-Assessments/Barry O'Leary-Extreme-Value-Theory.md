Extreme Value Theory
==========================
***Barry O'Leary***

***Introduction***

Extreme value theory or extreme value analysis (EVA) is a branch of statistics dealing with the extreme deviations from the median of probability distributions. It seeks to assess, from a given ordered sample of a given random variable, the probability of events that are more extreme than any previously observed. Extreme value analysis is widely used in many disciplines such as structural engineering, finance, earth sciences, traffic prediction, and geological engineering. For example, EVA might be used in the field of hydrology to estimate the probability of an unusually large flooding event, such as the 100-year flood. Similarly, for the design of a breakwater, a coastal engineer would seek to estimate the 50-year wave and design the structure accordingly.

![](http://image3.slideserve.com/6409900/extreme-value-theory1-n.jpg)

***Data Analysis***

Two approaches exist for practical extreme value analysis.The first method relies on deriving block maxima (minima) series as a preliminary step. In many situations it is customary and convenient to extract the annual maxima (minima), generating an "Annual Maxima Series" (AMS).The second method relies on extracting, from a continuous record, the peak values reached for any period during which values exceed a certain threshold (falls below a certain threshold). This method is generally referred to as the "Peak Over Threshold"  method (POT). For AMS data, the analysis may partly rely on the results of the Fisher–Tippett–Gnedenko theorem, leading to the generalized extreme value distribution being selected for fitting. However, in practice, various procedures are applied to select between a wider range of distributions. The theorem here relates to the limiting distributions for the minimum or the maximum of a very large collection of independent random variables from the same distribution. Given that the number of relevant random events within a year may be rather limited, it is unsurprising that analyses of observed AMS data often lead to distributions other than the generalized extreme value distribution (GEVD) being selected. For POT data, the analysis may involve fitting two distributions: one for the number of events in a time period considered and a second for the size of the exceedances.A common assumption for the first is the Poisson distribution, with the generalized Pareto distribution being used for the exceedances. A tail-fitting can be based on the Pickands–Balkema–de Haan theorem. Novak reserves the term “POT method” to the case where the threshold is non-random, and distinguishes it from the case where one deals with exceedances of a random threshold.

![](http://slideplayer.com/9340132/28/images/30/Generalized+Pareto+Distribution+Shapes+of+GPD.jpg)

***Application***

Applications of extreme value theory include predicting the probability distribution of:
* Extreme floods; The size of freak wavesMaximum sizes of ecological populations 
* Side effects of drugs (e.g., Ximelagatran)
* The amounts of large insurance lossesEquity risks;
* Day to day market risk
* Mutational events during evolution
* Large wildfires 
* Environmental loads on structures
* It can be applied to some characterization of the distribution of the maxima of incomes, like in some surveys done in virtually all the National Offices of Statistics
* Estimate fastest time humans are capable of running the 100 metres sprint and performances in other athletic disciplines.
* Pipeline failures due to pitting corrosion.
* Anomalous IT network traffic, prevent attackers from reaching important data

![](http://4.bp.blogspot.com/-YAhPu5BmA4E/T-u0SlrUlkI/AAAAAAAAAYQ/gSM5cbxGmpE/s1600/Usain+Bolt+Running.jpg)

*** R Packages ***



***History***

The field of extreme value theory was pioneered by Leonard Tippett (1902–1985). Tippett was employed by the British Cotton Industry Research Association, where he worked to make cotton thread stronger. In his studies, he realized that the strength of a thread was controlled by the strength of its weakest fibres. With the help of R. A. Fisher, Tippet obtained three asymptotic limits describing the distributions of extremes assuming independent variables. Emil Julius Gumbel codified this theory in his 1958 book Statistics of Extremes, including the Gumbel distributions that bear his name. These results can be extended to allowing for slight correlations between variables, but the classical theory does not extend to strong correlations of the order of the variance. One universality class of particular interest is that of log-correlated fields, where the correlations decay logarithmically with the distance.


* https://cran.r-project.org/web/views/ExtremeValue.html
* https://cran.r-project.org/web/packages/evd/index.html
