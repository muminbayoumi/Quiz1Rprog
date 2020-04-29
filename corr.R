library(magrittr)
library(dplyr)
corr <- function(directory,Threshold=0,id=1:332){
  D <- paste0(getwd(),"/",directory,"/")
  monitorlist <-  dir(D)
  
  screening <- complete(directory)
  screening %<>% filter(nobs>=Threshold)
  
  data <- data.frame(ids=1:332,Corelations=NA)
  
  for(i in screening$ids){
    file <- paste0(D,monitorlist[i])
    fileread <- read.csv(file)
    
    corelation  <- with(na.omit(fileread),cor(sulfate,nitrate))
      data[i,'Corelations'] <- corelation
      }
  
 as.vector(na.omit(data)[,2])
  
  
  
}
