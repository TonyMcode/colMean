# colMean calculates the mean of column data in csv
# files given the dir, column name & file ids. For example,
# colMean("specdata","sulfate",1:10) returns the mean
# of the sulfate col in specdata/001.csv...specdata/010.csv
# After constructing the path strings, columns are combined
# into one vector, whose mean is then calculated
colMean<-function(dir, pollutant, ids=1:332) {
  datTot<-numeric(0)                            # empty numeric vector
  for(i in 1:length(ids)) {                     # loop thru all ids to
    if(ids[i]<10) {                             # make each file path
      fileNum<-paste("00",ids[i],sep="")        # make file names by
    } else if(ids[i]<100) {                     # adding 0's to ids<100
      fileNum<-paste("0",ids[i],sep="")
    } else {
      fileNum<-ids[i]
    }
    idPath<-paste(dir,"/",fileNum,".csv",sep="") # construct path string
    dat<-read.csv(idPath)                        # read in data for 1 file
    datTot<-c(datTot,dat[,pollutant])            # combine data into vector
  }
  mean(datTot,na.rm=TRUE)                        # return mean, ignoring NA's
}