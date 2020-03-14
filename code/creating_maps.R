# Karten erstellen
# Jan-Philipp Kolb

library(tmap)

data(World)

qtm(World)

table(World$economy)

qtm(World,fill="economy")

colnames(World)

qtm(World,fill="continent")

qtm(World,fill="pop_est")

library(raster)

deu1 <- raster::getData(name="GADM", country='DEU', level=1)

qtm(deu1)

deu1@data

####################################

install.packages("DT")

DT::datatable(World)

###########################

install.packages("leaflet")
library(leaflet)
library(tidyverse)

leaflet() %>%
  addTiles()

# Routing
# https://cmhh.github.io/post/routing/
# https://rstudio.github.io/leaflet/

################################

install.packages("flexdashboard")
