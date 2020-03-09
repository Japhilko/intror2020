## ---- include=FALSE-----------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = T, message = FALSE,warning=F)


## -----------------------------------------------------------------------------------------------------
library(ggplot2)
car.graph <- ggplot(mtcars)


## -----------------------------------------------------------------------------------------------------
car.graph <- car.graph + aes(wt, mpg)


## -----------------------------------------------------------------------------------------------------
## Specifying the plot "geometry" in this case, a scatter plot.
car.graph + geom_point()


## -----------------------------------------------------------------------------------------------------
ggplot(mtcars) + aes(wt, mpg) + geom_point()


## -----------------------------------------------------------------------------------------------------
ames_df <- AmesHousing::make_ames()


## ---- echo=T,fig.width=12, fig.height=4---------------------------------------------------------------
ggplot(ames_df) +
    aes(x=ames_df$Sale_Price, y=ames_df$Lot_Area) +
    geom_point(aes(col=as.factor(ames_df$MS_Zoning))) + 
    labs(title="Scatterplot", color="MS Zoning") +
    theme(legend.title=element_text(color="black")) 


## ---- echo=T------------------------------------------------------------------------------------------
## Minimal theme
ggplot(mtcars) + aes(wt, mpg) + geom_point() + 
    theme_minimal()


## ----eval=F,echo=T------------------------------------------------------------------------------------
## ## the default
## ggplot(mtcars) + aes(wt, mpg) + geom_point() + theme_gray()
## ## Dark, usually not recommended.
## ggplot(mtcars) + aes(wt, mpg) + geom_point() + theme_dark()
## ## Very traditional
## ggplot(mtcars) + aes(wt, mpg) + geom_point() + theme_classic()
## ## Use if you don't want an axis.
## ggplot(mtcars) + aes(wt, mpg) + geom_point() + theme_void()


## ---- echo=T------------------------------------------------------------------------------------------
car.graph <- ggplot(mtcars) + aes(wt, mpg) + 
    geom_point(color="red")
car.graph


## ---- echo=T------------------------------------------------------------------------------------------
car.graph <- ggplot(mtcars) + aes(wt, mpg) + 
    geom_point(shape=21) + geom_line(linetype=2)
car.graph


## ---- echo=T------------------------------------------------------------------------------------------

ggplot(mtcars) + aes(as.factor(gear), mpg) +geom_boxplot()



## ---- echo=T------------------------------------------------------------------------------------------

ggplot(mtcars) + aes(as.factor(gear), mpg) +
    geom_boxplot() +
    geom_text(aes(label=as.factor(gear), col="red")) +
    geom_label(aes(label=as.factor(gear), col="red"))+
    labs(x="A different label than earlier.", title="A boxplot, with observations labeled according to their number of gears") +
    theme(legend.position="none")



## ---- echo=T, eval=F----------------------------------------------------------------------------------
## 
## ## Saving to pdf
## ggsave(car.graph, file="car_graph.pdf")
## 
## ## Saving to pdf, while specifying dimensions of plot
## ggsave(car.graph, file="car_graph.pdf", width = 20,
##        height = 20, units = "cm")
## 
## ## Saving to png
## ggsave(car.graph, file="car_graph.png")
## 
## ## Other formats are possible.
## # See ?ggsave for more information.
## 


## ---- echo=T------------------------------------------------------------------------------------------
## Data + aesthetics + geometry.
ggplot(mtcars)+aes(gear)+geom_bar()


## ---- echo=T------------------------------------------------------------------------------------------

## Data + aesthetics + geometry.
ggplot(mtcars)+aes(mpg)+geom_histogram()



## ---- echo=T------------------------------------------------------------------------------------------
ggplot(mtcars)+aes(mpg)+geom_density()


## ---- echo=FALSE, eval=FALSE--------------------------------------------------------------------------
## ggplot(simulated.dataset) + geom_histogram()+
##     aes(x=cont.var.x)
## 
## ggplot(simulated.dataset) + geom_density()+
##     aes(x=cont.var.y)
## 

