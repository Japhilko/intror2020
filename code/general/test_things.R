# Jan-Philipp Kolb
# Mon Feb 24 12:58:04 2020


# install.packages("latticeExtra")
library(latticeExtra)
lattice.options(default.theme = ggplot2like())
lattice.options(default.theme = "col.whitebg")


# http://latticeextra.r-forge.r-project.org/man/custom.theme.html

library(RColorBrewer)

myColours <- brewer.pal(6,"Blues")
lattice.options(default.theme = myColours)




# https://magesblog.com/post/2012-12-04-changing-colours-and-legends-in-lattice/
levelplot(table(ames_df$MS_Zoning,ames_df$Alley),
          xlab="education",ylab="job",col.regions=brewer.pal(9,"Blues"))


# https://www.stat.ubc.ca/~jenny/STAT545A/block16_colorsLattice.html



library(viridis)

lattice.options(default.theme =scale_color_viridis())

levelplot(table(ames_df$MS_Zoning,ames_df$Alley),xlab="education",ylab="job")


# color coding
# https://www.datanovia.com/en/blog/top-r-color-palettes-to-know-for-great-data-visualization/

# https://stackoverflow.com/questions/3712402/r-how-to-change-lattice-levelplot-color-theme

# https://gist.github.com/hadley/c430501804349d382ce90754936ab8ec
