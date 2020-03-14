# Tidyverse
# Jan-Philipp Kolb
# Wed Mar 11 10:06:17 2020

# Zufallszahlen ziehen
x <- runif(8)
x <- log(x) 
x <- round(x)

# Alternative
x <- round(log(runif(8)))

# tidyverse mit pipe
#install.packages("tidyverse")
library(tidyverse)

x <- runif(8) %>% log() %>%
  round(0)


# Daten einlesen ----------------------------------------------------------

setwd("E:/github/intror2020/data")

(load("tidy_data.RData"))

cases2 <- cases %>% gather("Jahr","n",2:3)

cases2 <- cases2[,-2]

storms


# Paket dplyr verwenden ---------------------------------------------------

library(nycflights13)

?dplyr::filter

# Had an arrival delay of two or more hours

fl2 <- filter(flights,arr_delay>=120)

max(fl2$arr_delay)
table(fl2$arr_delay)

table(flights$arr_delay>120)

summary(flights$arr_delay)

# Flew to Houston (IAH or HOU)

fl1 <- filter(flights,dest %in% c("HOU","IAH"))
fl2 <- filter(flights,dest=="HOU" | dest=="IAH")

# Arrived more than two hours late, but didn’t leave late

fl2 <- filter(flights,arr_delay>=120 & dep_delay <=0)

########################

library(psych)




