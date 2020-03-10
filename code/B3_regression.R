## ----setupregression, include=FALSE-----------------------------
knitr::opts_chunk$set(echo = T,warning = F,message = F)
pres=T


## ----eval=F-----------------------------------------------------
## ?mtcars


## ----echo=F-----------------------------------------------------
library(knitr)
kable(mtcars,"html")


## ---------------------------------------------------------------
par(mfrow=c(1,2))
plot(density(mtcars$wt)); plot(density(mtcars$mpg))


## ---------------------------------------------------------------
m1 <- lm(mpg ~ wt,data=mtcars)
m1


## ---------------------------------------------------------------
summary(m1) 


## ---------------------------------------------------------------
m2 <- lm(mpg ~ - 1 + wt,data=mtcars)
summary(m2)$coefficients


## ---------------------------------------------------------------
m3 <- lm(mpg ~ wt + cyl,data=mtcars)
summary(m3)$coefficients


## ---------------------------------------------------------------
lm(mpg~wt+disp, data=mtcars, subset=(wt>3))


## ----eval=F-----------------------------------------------------
## ?as.formula


## ---------------------------------------------------------------
fo <- mpg ~ wt + cyl


## ---------------------------------------------------------------
class(fo)


## ---------------------------------------------------------------
# The formula object can be used in the regression:
m3 <- lm(fo,data=mtcars)


## ---------------------------------------------------------------
m3_a<-lm(mpg~.,data=mtcars) 


## ---------------------------------------------------------------
# effect of cyl and interaction effect:
m3a<-lm(mpg~wt*cyl,data=mtcars) 

# only interaction effect:
m3b<-lm(mpg~wt:cyl,data=mtcars) 


## ----eval=F,echo=F----------------------------------------------
## m3c<-lm(mpg~cyl|wt,data=mtcars)
## 
## m3c<-lm(mpg~cyl/wt,data=mtcars)
## 
## summary(m3b)
## summary(m3c)


## ---------------------------------------------------------------
m3d<-lm(mpg~log(wt),data=mtcars) 


## ---------------------------------------------------------------
fo2 <- I(log(mpg))~wt+I(wt^2)+disp
lm(fo2, data=mtcars)


## ---------------------------------------------------------------
names(mtcars)
features <- setdiff(names(mtcars), "mpg")
features


## ---------------------------------------------------------------
featdat <- mtcars[,features]


## ----eval=F-----------------------------------------------------
## ?model.matrix


## ---------------------------------------------------------------
model.matrix(m3d)


## ---------------------------------------------------------------
ff <- mpg ~ log(wt):cyl
m <- model.frame(ff, mtcars)


## ---------------------------------------------------------------
(mat <- model.matrix(ff, m))


## ---------------------------------------------------------------
# disp	-  Displacement (cu.in.)
m3d<-lm(mpg~wt*disp,data=mtcars) 
m3dsum <- summary(m3d)
m3dsum$coefficients


## ----eval=pres--------------------------------------------------
plot(m3,1)


## ---------------------------------------------------------------
plot(m3,2)


## ----eval=F-----------------------------------------------------
## predict(m3) # Prediction
## resid(m3) # Residuals


## ----echo=F-----------------------------------------------------
head(predict(m3)) # Prediction
head(resid(m3)) # Residuals


## ---------------------------------------------------------------
pre <- predict(m1)
head(mtcars$mpg)
head(pre)


## ----eval=F-----------------------------------------------------
## plot(mtcars$wt,mtcars$mpg)
## abline(m1)
## segments(mtcars$wt, mtcars$mpg, mtcars$wt, pre, col="red")


## ----echo=F,out.width="70%"-------------------------------------
knitr::include_graphics("figure/bias_variance_tradeoff.PNG")


## ---------------------------------------------------------------
(mse5 <- mean((mtcars$mpg -  pre)^2)) # model 5
(mse3 <- mean((mtcars$mpg -  predict(m3))^2)) 


## ----eval=F,echo=F----------------------------------------------
## install.packages("Metrics")


## ---------------------------------------------------------------
library(Metrics)
mse(mtcars$mpg,predict(m3))


## ----eval=F,echo=F----------------------------------------------
## install.packages("visreg")
## install.packages("Metrics")


## ---------------------------------------------------------------
library(visreg)


## ----eval=F-----------------------------------------------------
## visreg(m1, "wt", type = "conditional")


## ----eval=F,echo=F----------------------------------------------
## visreg(m1, "wt", type = "conditional",
##       line=list(col="red"),
##        fill=list(col="#473C8B"),points=list(cex=1.5,col=rgb(0,1,0,.5)))


## ---------------------------------------------------------------
mtcars$cyl <- as.factor(mtcars$cyl)
m4 <- lm(mpg ~ cyl + wt, data = mtcars)
# summary(m4)


## ----echo=F-----------------------------------------------------
sum_m4 <- summary(m4)
sum_m4$coefficients


## ----eval=F-----------------------------------------------------
## par(mfrow=c(1,2))
## visreg(m4, "cyl", type = "contrast")
## visreg(m4, "cyl", type = "conditional")


## ----eval=F,echo=F----------------------------------------------
## par(mfrow=c(1,2))
## visreg(m4, "cyl", type = "contrast",fill=list(col=c("#00FFFF")),points=list(cex=1.5,col=rgb(.4,.4,.4,.5)))
## visreg(m4, "cyl", type = "conditional",fill=list(col=c("#00FFFF")),points=list(cex=1.5,col=rgb(.4,.4,.4,.5)))


## ---------------------------------------------------------------
m5 <- lm(mpg ~ cyl*wt, data = mtcars)
# summary(m5)


## ----echo=F-----------------------------------------------------
sum_m5 <- summary(m5)
sum_m5$coefficients


## ----eval=pres--------------------------------------------------
visreg(m5, "wt", by = "cyl",layout=c(3,1))


## ----eval=pres,echo=F-------------------------------------------
visreg(m5, "wt", by = "cyl",layout=c(3,1),fill=list(col=c("#00FFFF")),points=list(cex=1.5,col=rgb(.4,.4,.4,.5)))


## ---------------------------------------------------------------
m6 <- lm(mpg ~ hp + wt * cyl, data = mtcars)


## ----eval=pres--------------------------------------------------
visreg(m6, "wt", by="cyl", overlay=TRUE, partial=FALSE)


## ---------------------------------------------------------------
visreg2d(m6, "wt", "hp", plot.type = "image")


## ---------------------------------------------------------------
ames_data <- AmesHousing::make_ames()


## ----echo=F-----------------------------------------------------
library(AmesHousing) 
ames_data <- AmesHousing::make_ames()


## ---------------------------------------------------------------
ames_data <- AmesHousing::make_ames()
cor(ames_data[,c("Sale_Price","Gr_Liv_Area","TotRms_AbvGrd")])


## ---------------------------------------------------------------
lm(Sale_Price ~ Gr_Liv_Area + TotRms_AbvGrd, data = ames_data)


## ---------------------------------------------------------------
lm(Sale_Price ~ Gr_Liv_Area, data = ames_data)$coefficients


## ---------------------------------------------------------------
lm(Sale_Price ~ TotRms_AbvGrd, data = ames_data)$coefficients


## ----echo=F-----------------------------------------------------
path <- "figure/logreg.PNG"
path <- "figure/logReg2.PNG"
# https://www.youtube.com/watch?v=yIYKR4sgzI8
# https://stats.stackexchange.com/questions/140447/why-logistic-regression-cannot-be-solved-by-ols
# https://www.educba.com/linear-regression-vs-logistic-regression/


## ----echo=F-----------------------------------------------------
dat <- readstata13::read.dta13("../data/ZA5666_v1-0-0_Stata14.dta")
datf <- readstata13::read.dta13("../data/ZA5666_v1-0-0_Stata14.dta",
                  convert.factors = F)



## ----eval=F-----------------------------------------------------
## library(readstata13)
## datf <- read.dta13("../data/ZA5666_v1-0-0_Stata14.dta",
##                   convert.factors = F)


## ----echo=T-----------------------------------------------------
transform_missings <- function(var){
  misvals <- c(-11,-22,-33,-44,-55,-66,-77,-88,-99,-111)
  var[var %in% misvals] <- NA
  return(var)
}


## ---------------------------------------------------------------
table(datf$a11d056z)


## ---------------------------------------------------------------
age <- transform_missings(datf$a11d056z)


## ---------------------------------------------------------------
table(age)


## ---------------------------------------------------------------
children <- as.factor(transform_missings(datf$a11d094a))
table(children)


## ---------------------------------------------------------------
cdplot(children ~ age, data = dat)


## ---------------------------------------------------------------
glm_1 <- glm(children ~ age, 
                    family = binomial())


## ---------------------------------------------------------------
sum_glm1 <- summary(glm_1)
sum_glm1$coefficients


## ---------------------------------------------------------------
sum_glm1$coefficients


## ---------------------------------------------------------------
sum_glm1$coefficients


## ----echo=F-----------------------------------------------------
library(faraway)


## ---------------------------------------------------------------
library(faraway)
ilogit(sum_glm1$coefficients[1,1])


## ----eval=F,echo=F----------------------------------------------
## fit_prob <- exp(predict(glm_1))/(1+exp(predict(glm_1)))
## 
## library(ggplot2)
## dfex <- data.frame(age,fit_prob)
## ggplot(aes(x=age, y=fit_prob))  +
##   geom_line(aes(x=age, y=fit_prob))


## ----echo=F-----------------------------------------------------
res1 <- sum_glm1$coefficients[1,1] + sum_glm1$coefficients[2,1]*5


## ---------------------------------------------------------------
ilogit(0.3935251)


## ---------------------------------------------------------------
anova(glm_1, test="Chisq")


## ---------------------------------------------------------------
library(pscl)
pR2(glm_1) 


## ---------------------------------------------------------------
summary(sum_glm1$deviance.resid)


## ---------------------------------------------------------------
region <- transform_missings(datf$bczd001a)
table(region)


## ---------------------------------------------------------------
satisfactionplace <- datf$a11c019a
table(satisfactionplace)


## ----eval=T,echo=T----------------------------------------------
glm_2 <- glm(children ~ age + satisfactionplace*region, 
                    family = binomial())


## ----eval=F,echo=F----------------------------------------------
## # https://www.r-bloggers.com/evaluating-logistic-regression-models/
## anova(glm_2, test="Chisq")


## ---------------------------------------------------------------
pseudor2 <- pR2(glm_2) 
pseudor2["McFadden"]


## ---------------------------------------------------------------
Tatoos <- transform_missings(datf$bdao067a)
Tatoos[Tatoos==97]<-0


## ---------------------------------------------------------------
table(Tatoos)


## ----eval=F,echo=F----------------------------------------------
## table(datf$bczd001a)


## ---------------------------------------------------------------
probitmod <- glm(children ~ age, 
	family=binomial(link=probit))


## ---------------------------------------------------------------
modp <- glm(Tatoos ~ age,family=poisson)


## ---------------------------------------------------------------
library("MASS")
mod_plr<-polr(a11c020a ~ a11d096b ,data=dat)


## ----eval=F,echo=F----------------------------------------------
## install.packages("stargazer")


## ----eval=F-----------------------------------------------------
## library(stargazer)
## stargazer(m3, type="html")


## ----echo=F,out.width="40%"-------------------------------------
knitr::include_graphics("figure/stargazertabex.PNG")

