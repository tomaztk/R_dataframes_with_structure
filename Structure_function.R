#######################################################
# #####################################################
# Structure function with attribute specification
# Author: Tomaz Kastrun
# Date: 27.05.2019
# Blog Website: http://tomaztsql.wordpress.com 
# #####################################################
#######################################################


## Using stucture() function

dd <- structure(list( 
         year = as.factor(c(2001, 2002, 2004, 2006))
        ,length_days = c(366.3240, 365.4124, 366.5323423, 364.9573234)) 
        ,.Names = c("year", "length of days") 
        ,row.names = c(NA, -4L) 
        ,class = "data.frame")


## many-steps way

year = c(2001, 2002, 2004, 2006) 
length_days = c(366.3240, 365.4124, 366.5323423, 364.9573234) 
dd2 <- data.frame(year,length_days) 
dd2$year <- as.factor(dd2$year)



## Using Structure() with comments

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


attributes(dd3)$comment

attr(dd3, which="comment")
