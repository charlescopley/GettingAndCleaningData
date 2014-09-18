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
[Columns Number] "Description"

[1] Subject ID
[2] Average when LAYING
[3] Average when SITTING
[4] Average when STANDING
[5] Average when WALKING
[6] Average when WALKING_DOWNSTAIRS
[7] Average when WALKING_UPSTAIRS

[Rows Number] "Description"

[1] "Subject ID Number"
[2] "tBodyAcc-mean()-X"              
[3] "tBodyAcc-mean()-Y"              
[4] "tBodyAcc-mean()-Z"              
[5] "tGravityAcc-mean()-X"           
[6] "tGravityAcc-mean()-Y"           
[7] "tGravityAcc-mean()-Z"           
[8] "tBodyAccJerk-mean()-X"          
[9] "tBodyAccJerk-mean()-Y"          
[10 "tBodyAccJerk-mean()-Z"          
[11] "tBodyGyro-mean()-X"             
[12] "tBodyGyro-mean()-Y"             
[13] "tBodyGyro-mean()-Z"             
[14] "tBodyGyroJerk-mean()-X"         
[15] "tBodyGyroJerk-mean()-Y"         
[16] "tBodyGyroJerk-mean()-Z"         
[17] "tBodyAccMag-mean()"             
[18] "tGravityAccMag-mean()"          
[19] "tBodyAccJerkMag-mean()"         
[20] "tBodyGyroMag-mean()"            
[21] "tBodyGyroJerkMag-mean()"        
[22] "fBodyAcc-mean()-X"              
[23] "fBodyAcc-mean()-Y"              
[24] "fBodyAcc-mean()-Z"              
[25] "fBodyAcc-meanFreq()-X"          
[26] "fBodyAcc-meanFreq()-Y"          
[27] "fBodyAcc-meanFreq()-Z"          
[28] "fBodyAccJerk-mean()-X"          
[29] "fBodyAccJerk-mean()-Y"          
[30] "fBodyAccJerk-mean()-Z"          
[31] "fBodyAccJerk-meanFreq()-X"      
[32] "fBodyAccJerk-meanFreq()-Y"      
[33] "fBodyAccJerk-meanFreq()-Z"      
[34] "fBodyGyro-mean()-X"             
[35] "fBodyGyro-mean()-Y"             
[36] "fBodyGyro-mean()-Z"             
[37] "fBodyGyro-meanFreq()-X"         
[38] "fBodyGyro-meanFreq()-Y"         
[39] "fBodyGyro-meanFreq()-Z"         
[40] "fBodyAccMag-mean()"             
[41] "fBodyAccMag-meanFreq()"         
[42] "fBodyBodyAccJerkMag-mean()"     
[43] "fBodyBodyAccJerkMag-meanFreq()" 
[44] "fBodyBodyGyroMag-mean()"        
[45] "fBodyBodyGyroMag-meanFreq()"    
[46] "fBodyBodyGyroJerkMag-mean()"    
[47] "fBodyBodyGyroJerkMag-meanFreq()"
[48] "tBodyAcc-std()-X"               
[49] "tBodyAcc-std()-Y"               
[50] "tBodyAcc-std()-Z"               
[51] "tGravityAcc-std()-X"            
[52] "tGravityAcc-std()-Y"            
[53] "tGravityAcc-std()-Z"            
[54] "tBodyAccJerk-std()-X"           
[55] "tBodyAccJerk-std()-Y"           
[56] "tBodyAccJerk-std()-Z"           
[57] "tBodyGyro-std()-X"              
[58] "tBodyGyro-std()-Y"              
[59] "tBodyGyro-std()-Z"              
[60] "tBodyGyroJerk-std()-X"          
[61] "tBodyGyroJerk-std()-Y"          
[62] "tBodyGyroJerk-std()-Z"          
[63] "tBodyAccMag-std()"              
[64] "tGravityAccMag-std()"           
[65] "tBodyAccJerkMag-std()"          
[66] "tBodyGyroMag-std()"             
[67] "tBodyGyroJerkMag-std()"         
[68] "fBodyAcc-std()-X"               
[69] "fBodyAcc-std()-Y"               
[70] "fBodyAcc-std()-Z"               
[71] "fBodyAccJerk-std()-X"           
[72] "fBodyAccJerk-std()-Y"           
[73] "fBodyAccJerk-std()-Z"           
[74] "fBodyGyro-std()-X"              
[75] "fBodyGyro-std()-Y"              
[76] "fBodyGyro-std()-Z"              
[77] "fBodyAccMag-std()"              
[78] "fBodyBodyAccJerkMag-std()"      
[79] "fBodyBodyGyroMag-std()"         
[80] "fBodyBodyGyroJerkMag-std()"    
[81] "Activity" 

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

