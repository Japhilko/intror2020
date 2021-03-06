## ---- include=FALSE---------------------------------------------
knitr::opts_chunk$set(echo = TRUE,message=F,warning = F,cache=F,fig.width=12, fig.height=4)


## ----echo=F-----------------------------------------------------
# https://stackoverflow.com/questions/25646333/code-chunk-font-size-in-rmarkdown-with-knitr-and-latex
def.chunk.hook  <- knitr::knit_hooks$get("chunk")
knitr::knit_hooks$set(chunk = function(x, options) {
  x <- def.chunk.hook(x, options)
  ifelse(options$size != "normalsize", paste0("\\", options$size,"\n\n", x, "\n\n \\normalsize"), x)
})


## ----eval=F-----------------------------------------------------
## install.packages("AmesHousing")


## ---------------------------------------------------------------
ames_df <- AmesHousing::make_ames()


## ----eval=F-----------------------------------------------------
## ?hist


## ----eval=T-----------------------------------------------------
hist(ames_df$Lot_Area)


## ----eval=T-----------------------------------------------------
hist(ames_df$Lot_Area,col="blue",
     main="Lot size in square feet",ylab="Frequency", 
     xlab="Lot size")


## ----eval=F-----------------------------------------------------
## ?plot
## # or
## ?par


## ----echo=F-----------------------------------------------------
knitr::include_graphics("figure/helppagepar.PNG")


## ----eval=T,out.height="40%"------------------------------------
hist(ames_df$Lot_Area,col="blue",
     main="Lot size",ylab="Freq", xlab="Lot size",
     xlim=c(0,50000))



## ----eval=T,out.height="40%"------------------------------------
hist(ames_df$Lot_Area,col="red",
     main="Size of Lot", xlab="Lot Area",
     xlim=c(0,50000),breaks=60)


## ----eval=T,out.height="40%"------------------------------------
hist(ames_df$Lot_Area,col="purple",
     main="Size of Lot", xlab="Lot Area",breaks=c(0,5000,10000,22000,215245))


## ---------------------------------------------------------------
tab_alley <- table(ames_df$Alley)


## ----eval=T-----------------------------------------------------
barplot(tab_alley)


## ---------------------------------------------------------------
barplot(tab_alley,col=rgb(0,0,1))


## ---------------------------------------------------------------
barplot(tab_alley,col=rgb(0,1,0))


## ---------------------------------------------------------------
barplot(tab_alley,col=rgb(1,0,0))


## ---------------------------------------------------------------
barplot(tab_alley,col=rgb(1,0,0,.3))


## ----eval=F-----------------------------------------------------
## install.packages("colourpicker")


## ---------------------------------------------------------------
barplot(tab_alley,col=c(20,"#62D6C8", "darkorange"))


## ---------------------------------------------------------------
tab2dim <- table(ames_df$Alley,ames_df$Street)


## ---------------------------------------------------------------
tab2dim


## ----eval=T,out.height="20%"------------------------------------
barplot(tab2dim,col=1:3)


## ----eval=T,out.height="20%"------------------------------------
barplot(tab2dim,col=1:3,beside=T)


## ----echo=F-----------------------------------------------------
library(datasets)
data(VADeaths)
barplot(VADeaths, border = "dark blue",beside=T,
        col=c(1,2,3,4,5)) 


## ----eval=F-----------------------------------------------------
## ?boxplot


## ----eval=T-----------------------------------------------------
boxplot(ames_df$Sale_Price,horizontal=TRUE)


## ----eval=T-----------------------------------------------------
boxplot(ames_df$Sale_Price~ames_df$Alley,horizontal=TRUE)


## ----echo=F,eval=F----------------------------------------------
## install.packages("vioplot")


## ----eval=T-----------------------------------------------------
library(vioplot)
vioplot(na.omit(ames_df$Sale_Price),col="royalblue")


## ----message=F,eval=F,echo=F------------------------------------
## library(vioplot)
## plot(x, y, xlim=c(-5,5), ylim=c(-5,5))
## vioplot(x, col="tomato", horizontal=TRUE, at=-4,
##         add=TRUE,lty=2, rectCol="gray")
## vioplot(y, col="cyan", horizontal=FALSE, at=-4,
##         add=TRUE,lty=2)


## ----echo=F,eval=F----------------------------------------------
## install.packages("beanplot")


## ---------------------------------------------------------------
library(beanplot)
par(mfrow = c(1,2))
boxplot(Sale_Price~Alley,data=ames_df,col="blue")
beanplot(Sale_Price~Alley,data=ames_df,col="orange")


## ----eval=F,echo=F----------------------------------------------
## install.packages("mlmRev")


## ----eval=T-----------------------------------------------------
plot(ames_df$Sale_Price,ames_df$Lot_Area)


## ----eval=T-----------------------------------------------------
plot(ames_df$Sale_Price,ames_df$Lot_Area,
     pch="*", # changing the plotting symbol
     col=rgb(0,0,1,.2)) # make the points transparent


## ---------------------------------------------------------------
pairs(iris[,1:4])


## ----eval=F-----------------------------------------------------
## library("psych")
## pairs.panels(iris[,1:4],
##              bg=c("red","yellow","blue")[iris$Species],
##              pch=21,main="")
## 


## ----eval=T-----------------------------------------------------
(tab2 <- table(ames_df$Sale_Condition,ames_df$Alley))


## ----eval=T-----------------------------------------------------
mosaicplot(tab2, color = TRUE,main="")


## ---------------------------------------------------------------
mosaicplot(tab2, main=F,shade = TRUE)


## ---------------------------------------------------------------
plot(density(ames_df$Sale_Price))


## ---------------------------------------------------------------
data(airquality)
stem(airquality$Ozone)


## ----eval=F-----------------------------------------------------
## png("Histogramm.png")
##   hist(dat$duration)
## dev.off()


## ----eval=F-----------------------------------------------------
## pdf("Histogramm.pdf")
##   hist(dat$duration)
## dev.off()


## ----eval=F-----------------------------------------------------
## jpeg("Histogramm.jpeg")
##   hist(dat$duration)
## dev.off()


## ---------------------------------------------------------------
pairs(iris[,1:4])


## ----eval=F-----------------------------------------------------
## install.packages("psych")


## ----eval=T-----------------------------------------------------
library("psych")
bgcol <- c("red","yellow","blue")[iris$Species]
pairs.panels(iris[,1:4],bg=bgcol,pch=21,main="")



## ----message=F,eval=T-------------------------------------------
library("lattice")
levelplot(table(ames_df$MS_Zoning,ames_df$Alley),
          xlab="education",ylab="job")


## ----fig.width=12, fig.height=8---------------------------------
library(RColorBrewer)
display.brewer.all()


## ----eval=F,echo=F----------------------------------------------
## install.packages("corrplot")


## ---------------------------------------------------------------
library(corrplot)
corrplot(cor(ames_df[,c("Sale_Price",
            "Gr_Liv_Area","TotRms_AbvGrd")]))


## ----eval=F,echo=F----------------------------------------------
## install.packages("wordcloud")
## install.packages("tm")


## ---------------------------------------------------------------
load("../data/gp_studytab.RData") # load the data 
library(wordcloud) # load the package
wordcloud(studytab$Title) # create the wordcloud

