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


# Exercise: Advanced Base Graphics ----------------------------------------

data(cars)
plot(cars)
plot(cars,lab=c(25,25,25))

plot(cars,lab=c(25,25,25), cex.axis=.6)

plot(cars, lab=c(20,10,6), cex.axis=.6, las=1)

points(x=c(23,26), y=c(60,61), col="red")




# Add on ------------------------------------------------------------------

ames_df <- AmesHousing::make_ames()
DT::datatable(ames_df)

