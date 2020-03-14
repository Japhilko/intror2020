# Regression
# Jan-Philipp Kolb


data(mtcars)

# effect of cyl and interaction effect:
m3a<-lm(mpg~wt*cyl,data=mtcars) 
# only interaction effect:
m3b<-lm(mpg~wt:cyl,data=mtcars)


sum_m3a <- summary(m3a)

sum_m3a$coefficients["wt",]


# Regressionsdiagnostikplots ----------------------------------------------

plot(m3b)
plot(m3b,1)

m1 <- lm(mpg~cyl,data=mtcars)
summary(m1)

m1 <- lm(mpg~as.factor(cyl),data=mtcars)
summary(m1)


# Regressionsaufgabe ------------------------------------------------------


ames_data <- AmesHousing::make_ames()
ames_data$TotRms_AbvGrd

m1 <- lm(Sale_Price~TotRms_AbvGrd,data=ames_data)
summary(m1)$coefficient

m2 <- lm(Sale_Price~Gr_Liv_Area,data=ames_data)
summary(m2)$coefficient

m3 <- lm(Sale_Price~Gr_Liv_Area + TotRms_AbvGrd,data=ames_data)
summary(m3)$coefficient


# logistische Regression --------------------------------------------------

x <- c(2,1,3,-11,-22,4,5)

transform_missings <- function(var){
  misvals <- c(-11,-22,-33,-44,-55,-66,-77,-88,-99,-111)
  var[var %in% misvals] <- NA
  return(var)
}

x1 <- transform_missings(var=x)
