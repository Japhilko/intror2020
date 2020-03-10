## Rcode for Intro R 2020 course
# Jan-Philipp Kolb



# ch: Getting started ---------------------------------------------------------


















# Exercise: Economic Order Quantity Model -------------------------------------------

D = 1000
K = 5
h = 0.25

(Q = sqrt(2*D*K/h))



# ch: Data Processing ---------------------------------------------------------



# Ames Housing data -------------------------------------------------------



ames_df <- AmesHousing::make_ames()


# Exercise: Compute the price per area ------------------------------------

price_area <- ames_df$Lot_Area/ames_df$Sale_Price
max(price_area)


# Exercise: Missing values ------------------------------------------------

data("airquality")

# How many missing values are in the built-in data set airquality?

sum(is.na(airquality))


# Which variables are the missing values concentrated in?

sum(is.na(airquality$Ozone))
sum(is.na(airquality$Solar.R))
sum(is.na(airquality$Wind))
sum(is.na(airquality$Temp))
sum(is.na(airquality$Month))
sum(is.na(airquality$Day))


# How would you impute the mean or median for these values?

airquality$Ozone[is.na(airquality$Day)] <- mean(airquality$Day,na.rm=T)


# How would you omit all rows containing missing values?

airq <- na.omit(airquality)



# Exercise: using the tapply() command ------------------------------------

# Calculate the average ozone value by month using the airquality dataset 
# and the tapply command.

tapply(airquality$Ozone,airquality$Month,mean,na.rm=T)


# ch: basic graphics ------------------------------------------------------


# Exercise: simple graphics -----------------------------------------------



# Load the dataset `VADeaths` and create the following plot:
  
library(datasets)
data(VADeaths)
barplot(VADeaths, border = "dark blue",beside=T,
        col=c(1,2,3,4,5)) 


# Exercise: Advanced Base Graphics ----------------------------------------

data(cars)
plot(cars)
plot(cars,lab=c(25,25,25))

plot(cars,lab=c(25,25,25), cex.axis=.6)

plot(cars, lab=c(20,10,6), cex.axis=.6, las=1)

points(x=c(23,26), y=c(60,61), col="red")



# ch: Datawrangling tidyverse ---------------------------------------------


# Exercise: random numbers ------------------------------------------------

# 1) Draw 8 random numbers from the uniform distribution (`rnorm`) and save them in a vector `x`

x <- runif(8)

# 2) Compute the natural logarithm of `x`,  

x <- log(x)

# 3) and round the result

round(x)


# Exercise: Vignette and additional documentation -------------------------

# Are there vignettes for the `dplyr` package?

vignette("dplyr")

# Can you find additional documentation explaining the `flights`data set?

# https://www.r-project.org/nosvn/pandoc/nycflights13.html



# Exercise: `dplyr` and `flights` dataset ---------------------------------

### Find the number of flights that:

# (a) Had an arrival delay of two or more hours

# (b) Flew to Houston (IAH or HOU)

# (c) Arrived more than two hours late, but didn’t leave late



# Add on ------------------------------------------------------------------

ames_df <- AmesHousing::make_ames()
DT::datatable(ames_df)

