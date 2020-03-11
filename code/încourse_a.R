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


# Stata Daten importieren -------------------------------------------------

dat <- readstata13::read.dta13("data/ZA5666_v1-0-0_Stata14.dta")

View(dat)

att_dat <- attributes(dat)

str(att_dat$val.labels)


# Pfade angeben -----------------------------------------------------------

path <- "E:/github/intror2020/data/"

setwd(path)
dat <- read.csv("datahub_refugee.csv")


dat <- read.csv(paste0(path,"datahub_refugee.csv"))

paste("A","B")

paste0("A","B")

paste0("A",1:7)


# Data Processing ---------------------------------------------------------

# install.packages("AmesHousing")
ames_df <- AmesHousing::make_ames()

View(ames_df)


ames_df$Half_Bath

dim(ames_df)

summary(ames_df$MS_Zoning) # Character Vector deshalb Tabelle 

summary(ames_df$Sale_Price)

ames_df$Sale_Price[1:3]
ames_df$Sale_Price[c(2,1,3)]
ames_df[1:2,1:3]
# ames_df[1:2,c(1:3)]

head(ames_df[,c("Sale_Price","Street")])


ames_df[,c(2,3,1)]




adf <- ames_df[ames_df$Lot_Area>9000,]

nrow(ames_df)
nrow(adf)


max(ames_df$Sale_Price/ames_df$Lot_Area)

# sehr umstritten
attach(ames_df)

# rückgängig machen
detach(ames_df)

Sale_Price

x=1

x==1 | x<0

# install.packages("naniar)
library(naniar)
vis_miss(airquality)

naniar::vis_miss(airquality)

naniar::vis_miss(ames_df)

########

dirnamen <- dir()

for (i in 1:length(dirnamen)){
  load(dirnamen[i])
}


# Farben in R -------------------------------------------------------------

install.packages("colourpicker")


barplot(1:4,col=c("#FFB90F", "#FF8C00", "#00BFFF", "#1874CD"))


myseq <- c(0.6,0.6,0.8)
barplot(1:4,col=rgb(myseq,0,0))


data("VADeaths")
VADeaths

barplot(VADeaths, beside = TRUE,col=1:5)
legend("topleft",c("A","B","c"),text.col = 1:3)

barplot(VADeaths[,"Urban Female"])

        