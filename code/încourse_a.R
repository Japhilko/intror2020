1^3


date()
?date

ab <- date()
ab1 <- date() # datum erzeugen  

ab <- ab2

sessionInfo()


mtcars
?sum

hist(mtcars$mpg)

hist(x = mtcars$mpg,
     breaks = 100)

# Farbe hinzufügen
hist(mtcars$mpg,col="red")
hist(mtcars$mpg,col=2)

hist(mtcars$mpg,col="blue")
hist(mtcars$mpg,col="royalblue")

mtcars$cyl # Autovervollständigung nutzen

random_numbers <- runif(40)

# Für Simulationen
set.seed(10)
runif(10)

std_z <- runif(10)

history()


b <- c(2,3,1,3,4,5,8.9)

sqrt(b) # Quadratwurzel

length(b)

mean_b <- mean(b)

sqrt(mean_b)

b <- c(1,2)
sample(b,1)
sample(b,3) #funktioniert nicht
sample(b,3,replace=T) # hier wird ein drittes Argument benötigt

############

b <- c(1,2,3,4,5)

b <- seq(1,5) # gleiche Ergebnis
b1 <- seq(5,1)
b1 <- seq(from = 5,to = 1)
b1 <- seq(from = 1,to = 5)

b <- 1:5

?seq

mean(b)
var(b)
sd(b)
sqrt(mean(b))

#####

D=1000
K=5
h=.25

(Q <- sqrt(2*D*K/h) )

# 
D=1000:1200

(Q <- sqrt(2*D*K/h))
  
###################
# Datenstrukturen

b <- 1:5
str(b)

b1 <- c("a",123,"B")
str(b1)

b2 <- c(T,F,T)
str(b2)

#############

# Getting help ------------------------------------------------------------


# ein Paket installieren
install.packages("osmdata")

vignette("osmdata")

RSiteSearch("glm")

# Master Dokument
source("code/bibliotheken.R")


library(nycflights13)

airlines


installed.packages()


nycflights13::airlines

# install.packages("readxl")

# install.packages("Hmisc")

# install.packages("lubridate")


# install.packages("PythonInR")

# interagieren mit Datenbank
# install.packages("RPostgreSQL")

# Cran Task view databases

# https://cran.r-project.org/web/views/Databases.html

# Paralellisierung
install.packages("foreach")


# Daten importieren -------------------------------------------------------

library(readxl)
dat <- read_excel("data/datahub_names_sa.xlsx")





