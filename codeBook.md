DATA SET INFORMATION 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset.

Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 


STUDY DESIGN
The study will take the raw data described above and produce averages of the different measurements for each subject during each activity.

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
6. It will also produce individual csv files (with subject number in the filename) for each participant

The data can be read back in using

```
aa<-read.table("tidyMeanData.txt")
```

CODE BOOK
Raw data are formatted as describer in features.txt file provided with the data.

The tidy data have units as follows (naming of the variables includes one of the following keywords as well as direction)

Tidy data have both mean of full data as well as mean of standard deviation.

Acc: m/s^2
Acc Jerk: m/s^3
Freq : Hz

The data are given in *tidyMeanData.txt* arranged as follows 

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

##Variable Names
dataTrainSubject -- data from subject_train.txt
dataTrainX 	 -- data from X_train.txt
dataTrainy 	 -- data from y_train.txt
dataTestSubject  -- data from subject_test.txt
dataTestX 	 -- data from X_test.txt
dataTesty 	 -- data from y_test.txt
dataFullSubject  -- combined data from subject_train.txt and subject_test.txt
dataFullX 	 -- combined data from X_train.txt and X_test.txt
dataFully 	 -- combined data from y_train.txt and y_test.txt
combinedData	 -- combined data from all the text files into one file
ddFeatures	 -- all the features defined in features.txt
extractedData    -- all the data with std and mean in the column names
finalMeanData	 -- all the std and mean data values average by subject and activity
