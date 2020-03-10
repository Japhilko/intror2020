## ----eval=F,echo=F----------------------------------------------
## knitr::purl("slides/GettingStarted.Rmd",documentation = 2)


## ----echo=F-----------------------------------------------------
#git_path <- getwd()
#path <- paste0(git_path,"/figure/rlogo.png")
path <- "figure/rlogo.png"
# https://bookdown.org/yihui/rmarkdown/xaringan-format.html
#getwd()


## ----echo=F, out.width = "20%",eval=F---------------------------
## img1_path <- "figure/opensource1.PNG"
## knitr::include_graphics(img1_path)
## # https://d-64.org/fuenf-gruende-fuer-open-source-software/
## # http://matthewlincoln.net/2014/12/20/adjacency-matrix-plots-with-r-and-ggplot2.html
## knitr::include_graphics(img1_path)


## ----echo=F, out.width = "100%"---------------------------------
knitr::include_graphics("figure/customizeRstduio.png")
#https://www.garrickadenbuie.com/blog/decouple-code-and-output-in-xaringan-slides/
# https://towardsdatascience.com/customize-your-rstudio-theme-914cca8b04b1


## ---------------------------------------------------------------
3 + 2 / 10^2 # Uses PEMDAS convention (order of operations)
3 + (2 / 10^2)
(3 + 2) / 10^2


## ---------------------------------------------------------------
1 /19^4 # scientific notation is used for large numbers
1/0 # Undefined calculations
Inf - Inf


## ----eval=F-----------------------------------------------------
## 3*2


## ----eval=F-----------------------------------------------------
## date()


## ----eval=F-----------------------------------------------------
## sessionInfo()


## ----eval=F-----------------------------------------------------
## mtcars
## ?sum
## hist(mtcars$mpg)
## random_numbers <- runif(40)
## history()


## ---------------------------------------------------------------
b <- c(1,2) # create an object with the numbers 1 and 2


## ---------------------------------------------------------------
mean(b) # computes the mean


## ---------------------------------------------------------------
length(b) # b has the length 2
sqrt(b) # the square root of b


## ---------------------------------------------------------------
quantile(b,.9)
sample(b,1) 


## ---------------------------------------------------------------
max(b)
min(b)


## ---------------------------------------------------------------
sd(b)
var(b)


## ---------------------------------------------------------------
mean(b)
median(b)


## ----echo=F, out.width = "120%",eval=T--------------------------
img1_path <- "figure/Economic_order_quant.PNG"
knitr::include_graphics(img1_path)


## ---------------------------------------------------------------
x <- c(3,7, 1, 2)
x > 2
x == 2
!(x < 3)


## ----echo=F,eval=F----------------------------------------------
## which(x > 2)


## ---------------------------------------------------------------
y <- c("a","bc","def")
length(y)
nchar(y)
y == "a"
y == "b"


## ---------------------------------------------------------------
str(b) # b is a numeric vector


## ---------------------------------------------------------------
a <- letters
length(letters)
a[1:4]
str(a)


## ---------------------------------------------------------------
mean(b)


## ----warning=T--------------------------------------------------
(b1 <- c(b,"a"))
mean(b1)


## ---------------------------------------------------------------
x <- c(TRUE,FALSE,TRUE)
c(1.2,x)


## ---------------------------------------------------------------
y <- c("2","3",".2")
c(1.2,y, x)


## ---------------------------------------------------------------
1 + x


## ---------------------------------------------------------------
c(1.2,y)
c(1.2,as.numeric(y))


## ---------------------------------------------------------------
x <- c("1",2,"one","1plus","2_and")
as.numeric(x)


## ----eval=F-----------------------------------------------------
## help.start()


## ----eval=F-----------------------------------------------------
## ?mean


## ----eval=F-----------------------------------------------------
## example(lm)


## ----eval=F-----------------------------------------------------
## ?paste


## ----eval=F-----------------------------------------------------
## browseVignettes()


## ----eval=F-----------------------------------------------------
## vignette("osmdata")


## ----eval=F-----------------------------------------------------
## demo() # shows all available demos
## demo(package = "httr") # Show all demos in a package
## 
## # Run a specific demo:
## demo("oauth1-twitter", package = "httr")


## ----eval=F-----------------------------------------------------
## demo(nlm)


## ---------------------------------------------------------------
apropos("lm")


## ----eval=F-----------------------------------------------------
## RSiteSearch("glm")


## ----eval=T,echo=F----------------------------------------------
# http://blog.revolutionanalytics.com/2015/06/how-many-packages-are-there-really-on-cran.html
CRANmirror <- "https://cloud.r-project.org/"
cran <- contrib.url(repos = CRANmirror, 
                      type = "source")
info <- available.packages(contriburl = cran, type = "source")
# nrow(info)


## ----echo=F, out.width = "50%"----------------------------------
knitr::include_graphics("figure/Packages.PNG")


## ----eval=F-----------------------------------------------------
## install.packages("lme4")
## 
## library(lme4)


## ----eval=F-----------------------------------------------------
## install.packages("lme4")


## ----eval=F-----------------------------------------------------
## source("https://bioconductor.org/biocLite.R")
## biocLite(c("GenomicFeatures", "AnnotationDbi"))


## ----eval=F-----------------------------------------------------
## install.packages("devtools")
## library(devtools)
## 
## install_github("hadley/ggplot2")


## ----eval=F-----------------------------------------------------
## # load the package to use in the current R session
## library(stringr)
## 
## # use a particular function within a package
## # without loading the package
## ?stringr::str_replace


## ----eval=F-----------------------------------------------------
## # provides details regarding contents of a package
## help(package = "tidyr")
## # list vignettes available for a specific package
## vignette(package="tidyr")
## # view specific vignette
## vignette("tidy-data")


## ----eval=F-----------------------------------------------------
## install.packages("ctv")
## library("ctv")
## install.views("Bayesian")


## ---- out.width="70%",echo=F------------------------------------
knitr::include_graphics("figure/changing_stuff.PNG")


## ----eval=F-----------------------------------------------------
## install.packages("swirl")


## ----eval=F-----------------------------------------------------
## library(swirl)
## # type the following into the console:
## swirl()


## ----eval=F-----------------------------------------------------
## install.packages("learnr")

