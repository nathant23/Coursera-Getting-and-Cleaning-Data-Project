# Codebook for tidyData.txt

## Data Columns

**subjectId**  (integer)  
The unique identifier of the participant whose activity was measured.  
Possible Values: 1-30  

**activityId**  (integer)
The unique identifier of the activity performed. 
Possible Values: 1-6  

**activityName**  (string) 
The name of the activity performed.  
Possible Values: 
* laying
* sitting
* standing
* walking
* walking_downstairs
* walking_upstairs  

**variable**  (string)
Name of the measurement. 
Possible Values:  
* tBodyAcc-mean()-X  
* tBodyAcc-mean()-Y  
* tBodyAcc-mean()-Z  
* tBodyAcc-std()-X  
* tBodyAcc-std()-Y  
* tBodyAcc-std()-Z  
* tGravityAcc-mean()-X  
* tGravityAcc-mean()-Y  
* tGravityAcc-mean()-Z  
* tGravityAcc-std()-X  
* tGravityAcc-std()-Y  
* tGravityAcc-std()-Z  
* tBodyAccJerk-mean()-X  
* tBodyAccJerk-mean()-Y  
* tBodyAccJerk-mean()-Z  
* tBodyAccJerk-std()-X  
* tBodyAccJerk-std()-Y  
* tBodyAccJerk-std()-Z  
* tBodyGyro-mean()-X  
* tBodyGyro-mean()-Y  
* tBodyGyro-mean()-Z  
* tBodyGyro-std()-X  
* tBodyGyro-std()-Y  
* tBodyGyro-std()-Z  
* tBodyGyroJerk-mean()-X  
* tBodyGyroJerk-mean()-Y  
* tBodyGyroJerk-mean()-Z  
* tBodyGyroJerk-std()-X  
* tBodyGyroJerk-std()-Y  
* tBodyGyroJerk-std()-Z  
* tBodyAccMag-mean()  
* tBodyAccMag-std()  
* tGravityAccMag-mean()  
* tGravityAccMag-std()  
* tBodyAccJerkMag-mean()  
* tBodyAccJerkMag-std()  
* tBodyGyroMag-mean()  
* tBodyGyroMag-std()  
* tBodyGyroJerkMag-mean()  
* tBodyGyroJerkMag-std()  
* fBodyAcc-mean()-X  
* fBodyAcc-mean()-Y  
* fBodyAcc-mean()-Z  
* fBodyAcc-std()-X  
* fBodyAcc-std()-Y  
* fBodyAcc-std()-Z  
* fBodyAccJerk-mean()-X  
* fBodyAccJerk-mean()-Y  
* fBodyAccJerk-mean()-Z  
* fBodyAccJerk-std()-X  
* fBodyAccJerk-std()-Y  
* fBodyAccJerk-std()-Z  
* fBodyGyro-mean()-X  
* fBodyGyro-mean()-Y  
* fBodyGyro-mean()-Z  
* fBodyGyro-std()-X  
* fBodyGyro-std()-Y  
* fBodyGyro-std()-Z  
* fBodyAccMag-mean()  
* fBodyAccMag-std()  
* fBodyBodyAccJerkMag-mean()  
* fBodyBodyAccJerkMag-std()  
* fBodyBodyGyroMag-mean()  
* fBodyBodyGyroMag-std()  
* fBodyBodyGyroJerkMag-mean()  
* fBodyBodyGyroJerkMag-std()  


**mean**  (double)
The mean of the measurements for that measurement for that activity for that subject  
Possible Values: -1 through 1  