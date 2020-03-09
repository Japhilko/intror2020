## Rcode for Intro R 2020 course
# Jan-Philipp Kolb



# Getting started ---------------------------------------------------------


















# Economic Order Quantity Model -------------------------------------------

D = 1000
K = 5
h = 0.25

(Q = sqrt(2*D*K/h))



# Exercise: Vectors and Indexing ------------------------------------------

height <- c(1.80, 1.65, 1.60, 1.93)
weight <- c(87, 58, 65, 100)

weight/height^2




# Exercise: Advanced Base Graphics ----------------------------------------

data(cars)
plot(cars)
plot(cars,lab=c(25,25,25))

plot(cars,lab=c(25,25,25), cex.axis=.6)

plot(cars, lab=c(20,10,6), cex.axis=.6, las=1)

points(x=c(23,26), y=c(60,61), col="red")