## ----setup, include=FALSE---------------------------------------
knitr::opts_chunk$set(echo = T,message=F,warning = F,size="small")


## ----echo=F,out.height="40%"------------------------------------
knitr::include_graphics("figure/tidydata.PNG")


## ---------------------------------------------------------------
library(tidyverse)


## ---------------------------------------------------------------
library(magrittr)


## ----echo=F-----------------------------------------------------
x <- c(0.109, 0.359, 0.63, 0.996, 0.515, 0.142, 0.017, 
       0.829, 0.907)
x <- runif(8)


## ----echo=F,eval=F----------------------------------------------
## round(log(x), 1)


## ----eval=F,echo=F----------------------------------------------
## x <- runif(1000)
## summary(x)
## summary(diff(x))
## 
## y <- c(1,4,5)
## log(exp(5))


## ---------------------------------------------------------------
library(magrittr)

# Perform the same computations on `x` as above
x %>% log() %>%
    round(1)


## ---------------------------------------------------------------
load("../data/tidy_data.RData")
cases %>% gather(Year,n,2:4)


## ----eval=F-----------------------------------------------------
## # These all produce the same results:
## cases %>% gather(Year, n, "2011":"2013")
## cases %>% gather(Year, n, "2011", "2012", "2013")
## cases %>% gather(Year, n, 2:4)
## cases %>% gather(Year, n, -country)


## ---------------------------------------------------------------
storms <- storms %>% 
  separate(date, c("year", "month", "day"))


## ----eval=F-----------------------------------------------------
## storms %>%
##   separate(date, c("year", "month", "day"), sep = "-")


## ----eval=F-----------------------------------------------------
## # same results:
## storms %>% unite(date, year, month, day, sep = "_")
## storms %>% unite(date, year, month, day)
## # If no separator is identified,
## # "_" will automatically be used


## ---------------------------------------------------------------
data(airquality)
head(airquality)


## ---------------------------------------------------------------
library(data.table)
(airq <- data.table(airquality))


## ---------------------------------------------------------------
library(dplyr)


## ----eval=F,echo=F----------------------------------------------
## install.packages("nycflights13")


## ---------------------------------------------------------------
library(nycflights13)


## ----eval=F-----------------------------------------------------
## flights


## ----eval=F-----------------------------------------------------
## filter(flights,month==1)


## ----eval=F-----------------------------------------------------
## filter(flights,month==1,day==1)


## ----eval=F-----------------------------------------------------
## filter(flights,month==1,day==1,dep_delay > 0)


## ----eval=F-----------------------------------------------------
## filter(flights,month==12)
## filter(flights,month!=12)
## filter(flights,month %in% c(11,12))
## filter(flights,arr_delay <= 120)
## filter(flights,!(arr_delay <= 120))
## filter(flights,is.na(tailnum))


## ----eval=F-----------------------------------------------------
## filter(flights,month==12, day==25)
## filter(flights,month==12 & day==25)


## ----eval=F-----------------------------------------------------
## filter(flights,month==11 | month==12)
## filter(flights,month %in% c(11,12))


## ----eval=F-----------------------------------------------------
## filter(flights, !(arr_delay > 120 | dep_delay > 120))
## filter(flights, arr_delay <= 120,dep_delay <= 120)


## ----eval=F-----------------------------------------------------
## arrange(flights, dep_delay)


## ----eval=F-----------------------------------------------------
## arrange(flights, dep_delay, arr_delay)


## ----eval=F-----------------------------------------------------
## arrange(flights, desc(dep_delay))


## ----eval=F-----------------------------------------------------
## select(flights, year, month, day)


## ----eval=F-----------------------------------------------------
## select(flights, -(year:day))


## ----eval=F-----------------------------------------------------
## rename(flights, ANNOYING = dep_delay)


## ---------------------------------------------------------------
vars <- c("MONTH","month","day","dep_delay","arr_delay")


## ----eval=F-----------------------------------------------------
## select(flights,contains("TIME"))


## ----eval=F-----------------------------------------------------
## (flights_sml <- select(flights,year:day,
##                       ends_with("delay"),
##                       distance,air_time))


## ----eval=F-----------------------------------------------------
## mutate(flights_sml,gain=arr_delay - dep_delay,
##        speed = distance/air_time * 60)


## ----eval=F-----------------------------------------------------
## mutate(flights_sml,gain=arr_delay - dep_delay,
##        hours = air_time / 60, gain_per_hour = gain / hours)
## 


## ----eval=F-----------------------------------------------------
## ?dplyr::mutate


## ---------------------------------------------------------------
airq %>%
  mutate(Temp / max(Temp, na.rm = TRUE)) 


## ---------------------------------------------------------------
library(dplyr)
mtcars %>%  mutate_all(as.character)


## ---------------------------------------------------------------
library(dplyr)
group_by(iris, Species) %>%
  summarise(
    count = n(),
    mean = mean(Sepal.Length, na.rm = TRUE),
    sd = sd(Sepal.Length, na.rm = TRUE)
  )

