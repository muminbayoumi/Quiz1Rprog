complete <- function(directory,id=1:332){
  D <- paste0(getwd(),"/",directory,"/")
 monitorlist <-  dir(D)
 
 data <- matrix(data=NA,nrow = 332,ncol=2)
 colnames(data) <- c('ids','nobs')
 data[,'ids'] <- 1:332
 
 
 
 
 for(i in id){
 file <- paste0(D,monitorlist[i])
 readfile <- read.csv(file)
  nobs <-  length(complete.cases(na.omit(readfile)))
  data[i,2] <- nobs
  
 }
 as.data.frame(na.omit(data))
}




