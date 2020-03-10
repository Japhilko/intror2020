# Aufgaben automatisch auslesen
# Jan-Philipp Kolb
# Fri Feb 28 11:26:04 2020

git_path <- getwd()
sysInfo <- Sys.info()

if (sysInfo["nodename"]=="MAC14026"){
  new.folder <- "D:/github/intror2020/slides/"
  path_wherepicslive <- "D:/github/summerschool_uganda/slides/"
}

setwd(new.folder)

myfiles <- dir(new.folder) %>% grep(pattern = ".Rmd",value=T)

i<-1
myfile <- myfiles[i]
txt <- readLines(myfile)




ind_ex <- grep("## Exercise:",txt)

txt[ind_ex]

txt[ind_ex[2]:ind_ex[2]+grep("## ",txt[ind_ex[2]:length(txt)])[2]]


########################################
# Gliederung erstellen

myfiles2 <- gsub(".Rmd","",myfiles)
myfiles3 <- strsplit(myfiles2,"_")

#######################################
# 

#install.packages("webshot")



git_path <- getwd()
slides_path <- paste0(git_path,"/slides/")

lof <- list.files(slides_path)
lof <- grep(".Rmd",lof,value=T)
lof3 <- gsub(".Rmd",".html",lof)
lof2 <-gsub("md","",lof)

for (i in 7:length(lof)){
  pagedown::chrome_print(paste0(slides_path,lof3[i]))  
  knitr::purl(paste0(slides_path,lof[i]),output=paste0(git_path,"/code/",lof2[i]))  
}


# pagedown::chrome_print(input="https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/paste",
#                        output="D:/github/intror2020/slides/figure/paste_help.png")


# Alle Pakete installieren ------------------------------------------------

myfiles <- dir(slides_path) %>% grep(pattern = ".Rmd",value=T)

for(i in 1:length(myfiles)){
  txt <- readLines(paste0(slides_path,myfiles[i]))
  grep("library",txt,value=T)
}


#####


(load("D:/gitlab/presentations/ps20_gor_automated_reporting/data/studytab.RData"))

studytab <- studytab[,c("Study","Waves","Title")]

save(studytab,file="data/gp_studytab.RData")

### 
# Final steps



git_path <- getwd()
slides_path <- paste0(git_path,"/slides/")

lof <- list.files(slides_path)
lof <- grep(".Rmd",lof,value=T)
lof2 <- gsub(".Rmd","",lof)

for (i in 1:length(lof)){
  pagedown::chrome_print(paste0(slides_path,lof[i]))  
  knitr::purl(paste0(slides_path,lof[i]),
              output=paste0(git_path,"/code/",lof2[i],".R"))
}






# xaringan links ----------------------------------------------------------

# https://slides.yihui.org/xaringan/#15
# https://remarkjs.com/#2
# https://github.com/yihui/xaringan/issues/71
# https://bookdown.org/yihui/rmarkdown/xaringan-format.html
# https://bookdown.org/yihui/rmarkdown/xaringan.html
# https://github.com/yihui/xaringan/issues/50
# https://bookdown.org/yihui/rmarkdown/xaringan-format.html
# https://community.rstudio.com/t/figure-caption-in-r-markdown/6951/3

# https://stackoverflow.com/questions/31926623/figures-captions-and-labels-in-knitr
# https://www.r-bloggers.com/wrapper-of-knitrinclude_graphics-to-handle-urls-pdf-outputs/
# https://bookdown.org/yihui/bookdown/markdown-extensions-by-bookdown.html#text-references
# https://stackoverflow.com/questions/51181684/figure-captions-for-knitr-blocks-that-include-links-in-pdf-documents
# https://danilofreire.github.io/xaringan-metropolis/xaringan-metropolis.html#2

# Themes in xaringan
# https://github.com/yihui/xaringan/wiki/Themes
# https://community.rstudio.com/t/using-multiple-font-sizes-for-code-chunks/26405/5
# https://yongfu.name/2019/04/29/xaringan_tips.html

# https://stackoverflow.com/questions/52656548/xaringan-changing-code-background-for-specific-chunks/52663290#52663290