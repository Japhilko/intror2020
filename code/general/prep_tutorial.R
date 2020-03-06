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


for (i in 1:length(lof)){
  pagedown::chrome_print(paste0(slides_path,lof[i]))  
}



# Alle Pakete installieren ------------------------------------------------

myfiles <- dir(slides_path) %>% grep(pattern = ".Rmd",value=T)

for(i in 1:length(myfiles)){
  txt <- readLines(paste0(slides_path,myfiles[i]))
  grep("library",txt,value=T)
}


#####

