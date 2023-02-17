---
title: "DATA 606 Fall 2022 - Final Exam"
author: "Alex Khaykin"
output: pdf_document
---




```
## Warning: package 'tidyverse' was built under R version 4.2.2
```

```
## -- Attaching packages --------------------------------------- tidyverse 1.3.2 --
## v ggplot2 3.3.6     v purrr   0.3.4
## v tibble  3.1.8     v dplyr   1.0.9
## v tidyr   1.2.0     v stringr 1.4.1
## v readr   2.1.2     v forcats 0.5.2
## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

# Part I

Please put the answers for Part I next to the question number (please enter only the letter options; 4 points each):

1.  B) 3.01 ± 2.977(0.534/ sqrt(15)
2.  A) Deciding that the absorption rates are different, when in fact they are not.
3.  D) 0.070
4.  B) 2-proportion z-test
5.  B) II only
6.  E) 1600
7.  D) the probability of the observed statistic given that the null hypothesis is true.
8.  D) They fail to reject H0 , making a Type I error
9.  B) there is a strong linear relationship between the two variables
10. C) the expected y value when x is zero

# Part II

Consider the three datasets, each with two columns (x and y), provided below. Be sure to replace the `NA` with your answer for each part (e.g. assign the mean of `x` for `data1` to the `data1.x.mean` variable). When you Knit your answer document, a table will be generated with all the answers.



For each column, calculate (to four decimal places):

#### a. The mean (for x and y separately; 5 pt).


```r
data1.x.mean <- round(mean(data1$x), digits = 4)
data1.y.mean <- round(mean(data1$y), digits = 4)
data2.x.mean <- round(mean(data2$x), digits = 4)
data2.y.mean <- round(mean(data2$y), digits = 4)
data3.x.mean <- round(mean(data3$x), digits = 4)
data3.y.mean <- round(mean(data3$y), digits = 4)
```

#### b. The median (for x and y separately; 5 pt).


```r
data1.x.median <- round(median(data1$x), digits = 4)
data1.y.median <- round(median(data1$y), digits = 4)
data2.x.median <- round(median(data2$x), digits = 4)
data2.y.median <- round(median(data2$y), digits = 4)
data3.x.median <- round(median(data3$x), digits = 4)
data3.y.median <- round(median(data3$y), digits = 4)
```

#### c. The standard deviation (for x and y separately; 5 pt).


```r
data1.x.sd <- round(sd(data1$x), digits = 4)
data1.y.sd <- round(sd(data1$y), digits = 4)
data2.x.sd <- round(sd(data2$x), digits = 4)
data2.y.sd <- round(sd(data2$y), digits = 4)
data3.x.sd <- round(sd(data3$x), digits = 4)
data3.y.sd <- round(sd(data3$y), digits = 4)
```

#### For each x and y pair, calculate (also to two decimal places):

#### d. The correlation (5 pt).


```r
options(digits = 2)
data1.correlation <- round(cor(data1$x, data1$y), digits = 2)
data2.correlation <- round(cor(data2$x, data2$y), digits = 2)
data3.correlation <- round(cor(data3$x, data3$y), digits = 2)
```

#### e. Linear regression equation (5 points).


```r
data1.slope <- round(coef(lm(y ~x, data = data1))[2], digits = 2)
data2.slope <- round(coef(lm(y ~x, data = data2))[2], digits = 2)
data3.slope <- round(coef(lm(y ~x, data = data3))[2], digits = 2)

data1.intercept <- round(coef(lm(y ~x, data = data1))[1], digits = 2)
data2.intercept <- round(coef(lm(y ~x, data = data2))[1], digits = 2)
data3.intercept <- round(coef(lm(y ~x, data = data3))[1], digits = 2)
```

#### f. R-Squared (5 points).


```r
data1.rsquared <- round(summary(lm(y ~ x, data = data1))$r.squared, digits = 2)
data2.rsquared <- round(summary(lm(y ~ x, data = data2))$r.squared, digits = 2)
data3.rsquared <- round(summary(lm(y ~ x, data = data3))$r.squared, digits = 2)
```

Summary Table


```
## Warning: package 'kableExtra' was built under R version 4.2.2
```

```
## 
## Attaching package: 'kableExtra'
```

```
## The following object is masked from 'package:dplyr':
## 
##     group_rows
```


\begin{tabular}{l|>{\raggedleft\arraybackslash}p{.5in}|>{\raggedleft\arraybackslash}p{.5in}|>{\raggedleft\arraybackslash}p{.5in}|>{\raggedleft\arraybackslash}p{.5in}|>{\raggedleft\arraybackslash}p{.5in}|>{\raggedleft\arraybackslash}p{.5in}}
\hline
\multicolumn{1}{c|}{ } & \multicolumn{2}{c|}{Data 1} & \multicolumn{2}{c|}{Data 2} & \multicolumn{2}{c}{Data 3} \\
\cline{2-3} \cline{4-5} \cline{6-7}
  & x & y & x & y & x & y\\
\hline
Mean & 54.2633 & 47.8323 & 54.2678 & 47.8359 & 54.2661 & 47.8347\\
\hline
Median & 53.3333 & 46.0256 & 53.1352 & 46.4013 & 53.3403 & 47.5353\\
\hline
SD & 16.7651 & 26.9354 & 16.7668 & 26.9361 & 16.7698 & 26.9397\\
\hline
r & -0.0600 &  & -0.0700 &  & -0.0600 & \\
\hline
Intercept & 53.4500 &  & 53.8500 &  & 53.4300 & \\
\hline
Slope & -0.1000 &  & -0.1100 &  & -0.1000 & \\
\hline
R-Squared & 0.0000 &  & 0.0000 &  & 0.0000 & \\
\hline
\end{tabular}

#### g. For each pair, is it appropriate to estimate a linear regression model? Why or why not? Be specific as to why for each pair and include appropriate plots! (15 points)

#Answer
It is not appropriated to 


```r
ggplot(data1, aes(x = x, y = y)) +
  geom_point() +
  stat_smooth(formula = "y ~ x", se = FALSE, method = "lm")
```

![](Final_Exam_Answers_in_Progress_files/figure-latex/unnamed-chunk-11-1.pdf)<!-- --> 

```r
ggplot(data2, aes(x = x, y = y)) +
  geom_point() +
  stat_smooth(formula = "y ~ x", se = FALSE, method = "lm")
```

![](Final_Exam_Answers_in_Progress_files/figure-latex/unnamed-chunk-11-2.pdf)<!-- --> 

```r
ggplot(data3, aes(x = x, y = y)) +
  geom_point() +
  stat_smooth(formula = "y ~ x", se = FALSE, method = "lm")
```

![](Final_Exam_Answers_in_Progress_files/figure-latex/unnamed-chunk-11-3.pdf)<!-- --> 


#### h. Explain why it is important to include appropriate visualizations when analyzing data. Include any visualization(s) you create. (15 points)

