library(magrittr)

pollutantmean <- function(directory,pollutant,id,narm=T){
  D <-  paste0(getwd(),"/",directory,"/")
  
  datalist <- dir(D)
  combined <- NA
  for(i in id){
    file.name <- paste0(D,datalist[i])
    readfile <- read.csv(file.name)
    combined %<>%  rbind(readfile)
  }
  mean(combined[[pollutant]],na.rm=narm)
}

##Trials
cat(pollutantmean("specdata", "sulfate", 1:10))

cat(pollutantmean("specdata", "nitrate", 70:72))
