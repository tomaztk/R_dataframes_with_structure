# R_dataframes_with_structure
Creating data frame using structure() function in R.

Simple example: 
```
dd3 <- structure(list(
   v1 = as.factor(c(2001, 2002, 2004, 2006))
  ,v2 = I(c(2001, 2002, 2004, 2006))
  ,v3 = ordered(c(2001, 2002, 2004, 2006))
  ,v4 = as.double(c(366.3240, 365.4124, 366.5323423, 364.9573234)))
  ,.Names = c("year", "AsIs Year","yearO", "length of days")
  ,.typeOf = c("factor", "numeric", "ordered","numeric")
  ,row.names = c(NA, -4L)
  ,class = "data.frame"
  ,comment = "Ordered YearO for categorical analysis and other variables")

```
