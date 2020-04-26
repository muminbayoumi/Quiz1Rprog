complete <- function(directory,id=1:322){
  D <- paste0(getwd(),"/",directory,"/")
 monitorlist <-  dir(D)
 
 data <- matrix(data=NA,nrow = 322,ncol=2)
 colnames(data) <- c('ids','nobs')
 data[,'ids'] <- 1:322
 
 
 
 
 for(i in id){
 file <- paste0(D,monitorlist[i])
 readfile <- read.csv(file)
  nobs <-  length(complete.cases(na.omit(readfile)))
  data[i,2] <- nobs
  
 }
 na.omit(as.data.frame(data))
}
