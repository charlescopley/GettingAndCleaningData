## Course Project for getting and cleaning data.
##read in the training data
dataTrainSubject <- read.table("./projectDataset/train/subject_train.txt")
dataTrainX <- read.table("./projectDataset/train/X_train.txt")
dataTrainy <- read.table("./projectDataset/train/y_train.txt")
##read in the test data
dataTestSubject <- read.table("./projectDataset/test/subject_test.txt") ## the subject numbers
dataTestX <- read.table("./projectDataset/test/X_test.txt") ## the training X data which is the actual readings
dataTesty <- read.table("./projectDataset/test/y_test.txt") ##the training y data set which is basically what type of exercise subject was doing

##combine the data from test and train
dataFullSubject<- rbind(dataTrainSubject,dataTestSubject) ## the combined subject numbers
dataFullX <-rbind(dataTrainX,dataTestX) ## the combined X data set which is the actual readings
dataFully <-rbind(dataTrainy,dataTesty) ## the combined y data set which is basically what type of exercise subject was doing


##and now make a new dataframe that combines all the data together into one dataframe.
combinedData<-cbind(dataFullSubject,dataFullX,dataFully)

##from features.txt we extract the means and standard deviations


##now we find the values that are means and standards by grepping through the features.txt description file
ddFeatures<-read.table('./projectDataset/features.txt')
tt<-dim(ddFeatures) ## get the size of ddFeatures
meanVals<-which(sapply(1:tt[1], function(x) {as.logical(grep("mean",ddFeatures[x,2]))})==1) ##extract the mean vals
stdVals<-which(sapply(1:tt[1], function(x) {as.logical(grep("std",ddFeatures[x,2]))})==1) ##extract the std vals

##and now we extract the mean data for each to a new variable and assign names from the features.txt filename
meanValData<-dataFullX[,meanVals]
namesMeans<-ddFeatures[,2][meanVals]
colnames(meanValData)<-namesMeans
##and now we extract the std deviation data for each to a new variable and assign names from the features.txt filename
stdValData<-dataFullX[,stdVals]
namesStd<-ddFeatures[,2][stdVals]
colnames(stdValData)<-namesStd

## get the labels for the different activities in preparation for factorising
ddActivities<-read.table('./projectDataset/activity_labels.txt')
##use factors to label the activities with readable names
dataFully2<-cbind(dataFully,factor(as.numeric(dataFully[,1]),labels=ddActivities[,2]))
##and now make a new dataframe
combinedData<-cbind(dataFullSubject,dataFullX,dataFully2)
## and the extracted data?
activities<-factor(as.numeric(dataFully[,1]),labels=ddActivities[,2])
extractedData<-cbind(dataFullSubject,meanValData,stdValData,activities)
##and label the columns approproiately
colnames(extractedData)[1]<-'SubjectID'
colnames(extractedData)[81]<-'Activities'

##now lets separate things out! I'll use a for loop and then sapply just for readability
finalMeanData<-NULL
for(x in 1:max(extractedData$SubjectID))
{
  a<-subset(extractedData,extractedData$SubjectID==x)
  tt<-split(a,a$Activities)
  average<-sapply(1:6, function(x) {colMeans(tt[[x]][,2:80])})
  dimAve<-dim(average)
  subject<-rep(x,dimAve[1])
  average<-cbind(subject,average)
  subjectName<-sprintf('Subject_%d',x)
  colnames(average)<-c('Subject','LAYING','SITTING','STANDING','WALKING','WALKING_DOWNSTAIRS','WALKING_UPSTAIRS')
  csvFile<-sprintf('Subject_%d.csv',x)
  write.csv(average,csvFile)
  finalMeanData<-rbind(finalMeanData,average)
}



