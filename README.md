GettingAndCleaningData
======================

#Getting and Cleaning Data Coursera Course

##Description
This repo contains code to clean a series of data files that include information about smartphone tests of subject fitness and movements. 

Further information can be found in the *projectDataset* directory.

To reproduce the data 

1. make sure you have the appropriate raw data files (described below)
2. Run  *project.R* at a level above *projectDataset*

This will read in the appropriate data files.

It will then 

1. combine the training and test data sets, 
2. extract only the values related to means and relevant standard deviations (using the *features.txt* file)
3. Will generate human readable descriptions of the different activities (e.g. WALKING, LAYING etc.)
4. Will split the data by Subject, and calculate the average mean and average standard deviation for each subject during each activity.
5. Will produce a data frame saved to text file (*tidyMeanData.txt*). This data frame will include the mean values of each of the observations and their standard deviations separated by exercise activity (See column 81)  and subject ID (see column 1).

The data can be read back in using

```
aa<-read.table("tidyMeanData.txt")
```

##Data Structure
The data in *tidyMeanData.txt* are organized as follows:
###Columns

1. Subject ID
2. Average when LAYING
3. Average when SITTING
4. Average when STANDING
5. Average when WALKING
6. Average when WALKING_DOWNSTAIRS
7. Average when WALKING_UPSTAIRS


###Rows (this pattern is then repeated until end of data file)
[1] "tBodyAcc-mean()-X"              
[2] "tBodyAcc-mean()-Y"              
[3] "tBodyAcc-mean()-Z"              
[4] "tGravityAcc-mean()-X"           
[5] "tGravityAcc-mean()-Y"           
[6] "tGravityAcc-mean()-Z"           
[7] "tBodyAccJerk-mean()-X"          
[8] "tBodyAccJerk-mean()-Y"          
[9] "tBodyAccJerk-mean()-Z"          
[10  "tBodyGyro-mean()-X"             
[11] "tBodyGyro-mean()-Y"             
[12] "tBodyGyro-mean()-Z"             
[13] "tBodyGyroJerk-mean()-X"         
[14] "tBodyGyroJerk-mean()-Y"         
[15] "tBodyGyroJerk-mean()-Z"         
[16] "tBodyAccMag-mean()"             
[17] "tGravityAccMag-mean()"          
[18] "tBodyAccJerkMag-mean()"         
[19] "tBodyGyroMag-mean()"            
[20] "tBodyGyroJerkMag-mean()"        
[21] "fBodyAcc-mean()-X"              
[22] "fBodyAcc-mean()-Y"              
[23] "fBodyAcc-mean()-Z"              
[24] "fBodyAcc-meanFreq()-X"          
[25] "fBodyAcc-meanFreq()-Y"          
[26] "fBodyAcc-meanFreq()-Z"          
[27] "fBodyAccJerk-mean()-X"          
[28] "fBodyAccJerk-mean()-Y"          
[29] "fBodyAccJerk-mean()-Z"          
[30] "fBodyAccJerk-meanFreq()-X"      
[31] "fBodyAccJerk-meanFreq()-Y"      
[32] "fBodyAccJerk-meanFreq()-Z"      
[33] "fBodyGyro-mean()-X"             
[34] "fBodyGyro-mean()-Y"             
[35] "fBodyGyro-mean()-Z"             
[36] "fBodyGyro-meanFreq()-X"         
[37] "fBodyGyro-meanFreq()-Y"         
[38] "fBodyGyro-meanFreq()-Z"         
[39] "fBodyAccMag-mean()"             
[40] "fBodyAccMag-meanFreq()"         
[41] "fBodyBodyAccJerkMag-mean()"     
[42] "fBodyBodyAccJerkMag-meanFreq()" 
[43] "fBodyBodyGyroMag-mean()"        
[44] "fBodyBodyGyroMag-meanFreq()"    
[45] "fBodyBodyGyroJerkMag-mean()"    
[46] "fBodyBodyGyroJerkMag-meanFreq()"
[47] "tBodyAcc-std()-X"               
[48] "tBodyAcc-std()-Y"               
[49] "tBodyAcc-std()-Z"               
[50] "tGravityAcc-std()-X"            
[51] "tGravityAcc-std()-Y"            
[52] "tGravityAcc-std()-Z"            
[53] "tBodyAccJerk-std()-X"           
[54] "tBodyAccJerk-std()-Y"           
[55] "tBodyAccJerk-std()-Z"           
[56] "tBodyGyro-std()-X"              
[57] "tBodyGyro-std()-Y"              
[58] "tBodyGyro-std()-Z"              
[59] "tBodyGyroJerk-std()-X"          
[60] "tBodyGyroJerk-std()-Y"          
[61] "tBodyGyroJerk-std()-Z"          
[62] "tBodyAccMag-std()"              
[63] "tGravityAccMag-std()"           
[64] "tBodyAccJerkMag-std()"          
[65] "tBodyGyroMag-std()"             
[66] "tBodyGyroJerkMag-std()"         
[67] "fBodyAcc-std()-X"               
[68] "fBodyAcc-std()-Y"               
[69] "fBodyAcc-std()-Z"               
[70] "fBodyAccJerk-std()-X"           
[71] "fBodyAccJerk-std()-Y"           
[72] "fBodyAccJerk-std()-Z"           
[73] "fBodyGyro-std()-X"              
[74] "fBodyGyro-std()-Y"              
[75] "fBodyGyro-std()-Z"              
[76] "fBodyAccMag-std()"              
[77] "fBodyBodyAccJerkMag-std()"      
[78] "fBodyBodyGyroMag-std()"         
[79] "fBodyBodyGyroJerkMag-std()"    

##Running the script
The script (*project.R*) is run at the highest level and relies on the availability of the following files:

1. *"./projectDataset/train/subject_train.txt"*
2. *"./projectDataset/train/X_train.txt"*
3. *"./projectDataset/train/y_train.txt"*
4. *"./projectDataset/test/subject_test.txt"* 
5. *"./projectDataset/test/X_test.txt"* 
6. *"./projectDataset/test/y_test.txt"*
7. *"./projectDataset/features.txt"* 
8. *"./projectDataset/activity_labels.txt"*

These are data files containing training and test data from smartphones. 

File Descriptions
--------------------
1. *subject_train.txt* and *subject_test.txt*  data files that contain the number of the subject being measured.
2. *X_train.txt* and *X_test.txt*  are the sensor values recorded
3. *y_train.txt* and *y_test.txt*  are descriptions of the type of exercise the subject was undergoing.
4. *features.txt*  describes the layout of the individual raw data files
5. *activity_labels.txt*  describes the type of activity the subject underwent
6. *tidyMeanData.txt* is the output of the *project.R* script and will read through the above files and create averaged data. 
7. *project.R* is the highest level script that will produce *tidyMeanData.txt* from the raw files.
8. *Subject_x.txt* the data separated into individual filenames for each participant
