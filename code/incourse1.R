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
