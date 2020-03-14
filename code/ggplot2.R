# Graphiken mit ggplot2
# Jan-Philipp Kolb
# Wed Mar 11 11:46:02 2020


# Bibliotheken laden ------------------------------------------------------

library(ggplot2)


# Daten laden -------------------------------------------------------------

data(mtcars)

mtcars <- mtcars
rownames(mtcars)

colnames(mtcars)

ggplot(mtcars) + aes(wt, mpg) + geom_point(col="blue")

ggplot(mtcars) + aes(wt, mpg,col=as.factor(cyl)) + geom_point()

  # Legende ändern
ggplot(mtcars) + aes(wt, mpg,col=as.factor(cyl)) + geom_point() +
  labs(col="Cylinder")

car.graph <- ggplot(mtcars) + aes(wt, mpg,col=as.factor(cyl),size=disp) 
+ geom_point() +  labs(col="Cylinder",size="Displacement")


ggplot(mtcars)+aes(gear)+geom_bar(fill=c("#FFB90F"),col="royalblue")

# Karten mit ggplot erzeugen
# install.packages("ggspatial")

###

# install.packages("maps")
library(maps)
world_map <- map_data("world")
ggplot(world_map, aes(x = long, y = lat, group = group)) +
  geom_polygon(fill="lightgray", colour = "white")

#####

library(ggspatial)
data(honey2008)
ggplot(data = honey2008) +
  geom_sf(aes(fill = Price_per_lb))

# Graphik abspeichern

ggsave(car.graph, file="car_graph.svg")
