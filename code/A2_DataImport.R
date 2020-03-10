## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, warning = F,message = F)
ex_count <- 0


## ----echo=F,out.width="60%"---------------------------------------------------
knitr::include_graphics("figure/More_commands.png")


## ----eval=F-------------------------------------------------------------------
## ?read.csv
## ?read.csv2


## ----eval=F-------------------------------------------------------------------
## dat <- read.csv("2020-01-21-00-00.csv")


## ----echo=F,eval=F------------------------------------------------------------
## dat <- read.csv("https://raw.githubusercontent.com/Perishleaf/data-visualisation-scripts/master/dash-2019-coronavirus/2020-01-21-00-00.csv")


## ----eval=F-------------------------------------------------------------------
## datd <- read.csv2("ZA5666_v1-0-0.csv")


## ----echo=F,eval=F------------------------------------------------------------
## datd <- datd[1:10,1:4]
## save(datd,file="../data/ZA5666_v1-0-0_small.RData")


## ----echo=F,out.height="15%"--------------------------------------------------
knitr::include_graphics("figure/tab_key.png")


## ----echo=F,eval=T------------------------------------------------------------
dat <- read.csv("../data/datahub_refugee.csv")


## ----eval=F-------------------------------------------------------------------
## head(dat)


## ----echo=F-------------------------------------------------------------------
knitr::kable(head(dat),"html")


## ----eval=F-------------------------------------------------------------------
## install.packages("readxl")


## ----eval=T-------------------------------------------------------------------
library(readxl)
ab <- read_excel("../data/ma_stadtteile.xlsx")
head(ab)


## ----eval=F-------------------------------------------------------------------
## library(haven)
## dataset <- read_sav("../data/datahub_government_africa.sav")


## ----eval=F-------------------------------------------------------------------
## link <- "http://www.statistik.at/web_de/static/mz_2013_sds_-_datensatz_080469.sav"
## Dat <- rio::import(link)


## ----eval=F-------------------------------------------------------------------
## library(readstata13)
## dat_stata <- read.dta13("../data/ZA5666_v1-0-0_Stata14.dta")


## ----eval=F-------------------------------------------------------------------
## library(foreign)
## dat_stata12 <- read.dta("../data/example_gp_stata12.dta")


## -----------------------------------------------------------------------------
library(readstata13)


## ----eval=T-------------------------------------------------------------------
datf <- read.dta13("../data/ZA5666_v1-0-0_Stata14.dta",
                  convert.factors = F)
head(datf$bbzc007a)


## ----eval=T-------------------------------------------------------------------
dat <- read.dta13("../data/ZA5666_v1-0-0_Stata14.dta")
head(dat$bbzc007a)


## ----eval=F-------------------------------------------------------------------
## ?read.dta13


## ----eval=T-------------------------------------------------------------------
att_dat <- attributes(dat)
names(att_dat)


## -----------------------------------------------------------------------------
head(att_dat$names)


## ----eval=F-------------------------------------------------------------------
## View(datf)


## ----eval=F-------------------------------------------------------------------
## install.packages("rio")


## ----eval=F-------------------------------------------------------------------
## library("rio")
## x <- import("../data/ZA5666_v1-0-0.csv")
## y <- import("../data/ZA5666_v1-0-0_Stata12.dta")
## z <- import("../data/ZA5666_v1-0-0_Stata14.dta")


## ----eval=F-------------------------------------------------------------------
## library(Hmisc)
## mydata <- spss.get("c:/mydata.por", use.value.labels=TRUE)
## # last option converts value labels to R factors


## ----eval=F-------------------------------------------------------------------
## mydata <- sasxport.get("c:/mydata.xpt")
## # character variables are converted to R factors


## ----eval=F-------------------------------------------------------------------
## getwd()


## ----eval=F-------------------------------------------------------------------
## main.path <- "C:/" # Example for Windows
## main.path <- "/users/Name/" # Example for Mac
## main.path <- "/home/user/" # Example for Linux


## ----eval=F-------------------------------------------------------------------
## setwd(main.path)


## -----------------------------------------------------------------------------
getwd()
setwd("..")
getwd()


## -----------------------------------------------------------------------------
data(iris)


## ----eval=F-------------------------------------------------------------------
## install.packages("datasets.load")


## ----eval=F,echo=F------------------------------------------------------------
## ex_count <- ex_count+1
## exletter <- LETTERS[ex_count]


## ----eval=F-------------------------------------------------------------------
## devtools::install_github("lbusett/insert_table")


## ----eval=F-------------------------------------------------------------------
## dat <- read.csv(file.choose())


## -----------------------------------------------------------------------------
A <- 1:4
B <- LETTERS[1:4]
C <- letters[1:4]
D <- runif(4)

mydata <- data.frame(A,B,C,D)


## ----eval=F-------------------------------------------------------------------
## mydata


## ----eval=T,echo=F------------------------------------------------------------
library(knitr)
kable(mydata,"html")


## ----eval=F-------------------------------------------------------------------
## save(mydata, file="mydata.RData")
## saveRDS(mydata, "mydata.rds")


## ----eval=F-------------------------------------------------------------------
## load("mydata.RData")
## mydata <- readRDS("mydata.rds")


## ----eval=F,echo=F------------------------------------------------------------
## install.packages("tibble")


## -----------------------------------------------------------------------------
library(tibble)
ab <- tibble(a=1:4,b=4:1)


## ----eval=F-------------------------------------------------------------------
## library(xlsx)
## setwd("D:/Daten/GitLab/IntroDataAnalysis/data")
## write.xlsx(ab,file="ab.xlsx")


## ----eval=F-------------------------------------------------------------------
## devtools::install_github("dreamRs/viewxl")


## ----eval=F,echo=F------------------------------------------------------------
## iris


## ----eval=F-------------------------------------------------------------------
## write.csv(mydata,file="mydata.csv")


## ----eval=F-------------------------------------------------------------------
## write.csv2(mydata,file="mydata.csv")


## ----eval=F-------------------------------------------------------------------
## write.csv(mydata,file="mydata.csv", row.names=FALSE)


## ----eval=F-------------------------------------------------------------------
## write.csv2(mydata,file="mydata.csv", row.names=FALSE)


## ----eval=F-------------------------------------------------------------------
## write.csv(mydata,file="mydata.csv")


## ----eval=F-------------------------------------------------------------------
## write.csv2(mydata,file="mydata.csv")


## ----eval=F-------------------------------------------------------------------
## install.packages("rio")


## ----eval=F-------------------------------------------------------------------
## library("rio")
## # create file to convert
## 
## export(mtcars, "data/mtcars.sav")

