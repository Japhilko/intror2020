# Rscript zweiter Tag
# Jan-Philipp Kolb
# Wed Mar 11 08:57:53 2020


# Bibliotheken laden ------------------------------------------------------

# install.packages("car")

library(car)
library(rio)

# Datensatz einlesen ------------------------------------------------------

data("airquality")


# Überblick über die Daten bekommen ---------------------------------------

head(airquality)

airquality$Ozone2 <- airquality$Ozone

airquality$Ozone2[is.na(airquality$Ozone)] <- 0

airquality$Ozone2[is.na(airquality$Ozone)]

airquality$Month3 <- airquality$Month 
airquality$Month3[airquality$Month==5] <- "Mai"
airquality$Month3[airquality$Month>5] <- "Anderer Monat"

head(airquality)

?recode

table(airquality$Month)

airquality$Month2 <- recode(airquality$Month,"5 = 'Mai';else='Anderer Monat'")

head(airquality)


# Daten abspeichern -------------------------------------------------------

# R Format 
setwd("E:/github/intror2020/data")

save(airquality,file="airq.RData")

# wenn ich die Datei wieder einlesen möchte:
setwd("E:/github/intror2020/data")
(load("airq.RData"))

# Dublette erzeugen:
airq2 <- airquality

# Alles abspeichern, was in der Umgebung ist

save.image("Rworkspace_2020.RData")

# kann wieder eingelesen werden mit:
(load("Rworkspace_2020.RData"))


# Daten exportieren -------------------------------------------------------

# Dateipfad setzen
setwd("E:/github/intror2020/data")
# abspeichern
write.csv2(airquality,file="airq.csv")

# in spss weiterarbeiten - als .sav abspeichern

export(airquality,file="airq.sav")

# als .dta abspeichern
library(readstata13)

save.dta13(airquality,file="airq.dta")



#
?seq

Sys.setenv(LANG = "en")

