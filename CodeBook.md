#Code Book for UCI Data Set

##Dataset Source
 The UCI Dataset is extracted from the following link
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
 
##Dataset variables
###Tidy Datatset 1 - UCI_meanstd_dataset

This dataset extracts the mean and standarddeviation measures from the x feature vector of test and train datatset. This dataset also combines the test and train datasets of the UCI HAR Dataset.This datatset has 10298 observations for  68 variables


subjectID - Identifies the subject who performed the particular activity
activity - Identifies the particular activity for which the measure is obtained
Measures  - These are set of measures calculated from the triaxial signals of bodyaccelerator, bodygyroscope and total acceleration signals. Out of those measures we extracted only those which were mean and standard deviation.

###Tidy Dataset 2 - ucidatasetbysubj

  This is our final dataset.This dataset calculates the mean of the each measurement extracted from the UCI_meanstd_dataset for each activity and  subject. This datatset has 180 observations for 68 variables. This datatset summarizes the measurements for 30 subjects and 6 activities performed by them. 
 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
  
###This dataset contains the following variables
  
activity             - Identifies the particular activity performed by the subject. It is a categorical variable. 
                       The values are WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING.  
                       
subjectID            - Identifies the subject who performed the particular activity for the measurement taken. 
                       The subjectid   takes values from 1 to 30
                       
####Mean and Standard deviation measure variables 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

(cited from the source features_info.txt)

Below are the variables that has the mean and standard deviation estimates from the above signals and they were further summarized in this dataset by each subject and activity combination.

tBodyAcc.mean.X     
tBodyAcc.mean.Y     
tBodyAcc.mean.Z     
tBodyAcc.std.X      
tBodyAcc.std.Y      
tBodyAcc.std.Z.   

tGravityAcc.mean.X   
tGravityAcc.mean.Y   
tGravityAcc.mean.Z  
tGravityAcc.std.X   
tGravityAcc.std.Y    
tGravityAcc.std.Z.   

tBodyAccJerk.mean.X  
tBodyAccJerk.mean.Y  
tBodyAccJerk.mean.Z  
tBodyAccJerk.std.X   
tBodyAccJerk.std.Y   
tBodyAccJerk.std.Z   

tBodyGyro.mean.X 
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X    
tBodyGyro.std.Y      
tBodyGyro.std.Z

tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z

tBodyAccMag.mean..
tBodyAccMag.std.
tGravityAccMag.mean..
tGravityAccMag.std.
tBodyAccJerkMag.mean..
tBodyAccJerkMag.std.
tBodyGyroMag.mean..
tBodyGyroMag.std.    
tBodyGyroJerkMag.mean..
tBodyGyroJerkMag.std.

fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z

fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z

fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z

fBodyAccMag.mean..
fBodyAccMag.std.
fBodyAccJerkMag.mean..
fBodyAccJerkMag.std.
fBodyGyroMag.mean..
fBodyGyroMag.std.
fBodyGyroJerkMag.mean..
fBodyGyroJerkMag.std. 




  
  




