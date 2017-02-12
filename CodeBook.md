#Code Book for UCI Data Set

##Dataset Source
 The UCI Dataset is extracted from the following link
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
 
##Dataset variables
###Tidy Datatset 1 - ucidatatset

  This dataset combines the data stored in text files for the training and test dataset subject, activity and measurements in to a single data frame. The dataframe has 10299 observations captured for 22 variables

Subjectid - Identifies the subject who performed the particular activity for the measurement taken. The subjectid takes values from 1 to 30
Activity - Identifies the particular activity performed by the subject. It is a categorical variable. The values are
WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING. 

bodyacc*,bodygyro*,totalacc*,xvector* these measures were represented as 128 element vector. The mean and standard deviation for each of the 128 element vector is taken and stored in the below variables.

bodyaccxmean - This variable stores the measure of the mean of the body accelerator values for the x-axis
bodyaccymean - This variable stores the measure of the mean of the body accelerator values for the y-axis
bodyacczmean - This variable stores the measure of the mean of the body accelerator values for the z-axis
bodyaccxsd - This variable stores the measure of the standard deviation of the body accelerator values for the x-axis
bodyaccysd - This variable stores the measure of the standard deviation of the body accelerator values for the y-axis
bodyacczsd - This variable stores the measure of the standard deviation of the body accelerator values for the z-axis
bodygyroxmean - This variable stores the measure of the mean velocity of the gyroscope value for the x-axis in radian/second
bodygyroymean - This variable stores the measure of the mean velocity of the gyroscope value for the y-axis in radian/second
bodygyrozmean - This variable stores the measure of the mean velocity of the gyroscope value for the z-axis in radian/second
bodygyroxsd - This variable stores the measure of the standard deviation velocity of the gyroscope value for the x-axis in radian/second
bodygyroysd - This variable stores the measure of the standard deviation velocity of the gyroscope value for the y-axis in radian/second
bodygyrozsd - This variable stores the measure of the standard deviation velocity of the gyroscope value for the z-axis in radian/second
totalaccxmean - This variable stores the mean total acceleration values for the x-axis
totalaccymean - This variable stores the mean total acceleration values for the y-axis
totalacczmean - This variable stores the mean total acceleration values for the z-axis
totalaccxsd - This variable stores the standard deviation total acceleration values for the x-axis
totalaccysd - This variable stores the standard deviation total acceleration values for the y-axis
totalacczsd - This variable stores the standard deviation total acceleration values for the z-axis
xvectormean - This variable stores the mean feature vector value
xvectorsd - This variable stores the standard deviation feature vector value

###Tidy Dataset 2 - ucidatasetbysubj

  This dataset calculates the mean of the each measurement for each activity and  subject. The dataframe has 180 observations captured for 22 variables
  
Subjectid - Identifies the subject who performed the particular activity for the measurement taken. The subjectid takes values from 1 to 30
Activity - Identifies the particular activity performed by the subject. It is a categorical variable. The values are
WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING. 
bodyacc*,bodygyro*,totalacc*,xvector* these measures were represented as 128 element vector. The mean and standard deviation for each of the 128 element vector is taken and stored in the below variables.

avgbodyaccxmean - This variable stores the measure of the mean of the body accelerator values for the x-axis by each activity and subject
avgbodyaccymean - This variable stores the measure of the mean of the body accelerator values for the y-axis by each activity and subject
avgbodyacczmean - This variable stores the measure of the mean of the body accelerator values for the z-axis by each activity and subject
avgbodyaccxsd - This variable stores the measure of the standard deviation of the body accelerator values for the x-axis by each activity and subject
avgbodyaccysd - This variable stores the measure of the standard deviation of the body accelerator values for the y-axis by each activity and subject
avgbodyacczsd - This variable stores the measure of the standard deviation of the body accelerator values for the z-axis by each activity and subject
avgbodygyroxmean - This variable stores the measure of the mean velocity of the gyroscope value for the x-axis by each activity and subject in radian/second
avgbodygyroymean - This variable stores the measure of the mean velocity of the gyroscope value for the y-axis by each activity and subject in radian/second
avgbodygyrozmean - This variable stores the measure of the mean velocity of the gyroscope value for the z-axis by each activity and subject in radian/second
avgbodygyroxsd - This variable stores the measure of the standard deviation velocity of the gyroscope value for the x-axis by each activity and subject in radian/second
avgbodygyroysd - This variable stores the measure of the standard deviation velocity of the gyroscope value for the y-axis by each activity and subject in radian/second
avgbodygyrozsd - This variable stores the measure of the standard deviation velocity of the gyroscope value for the z-axis by each activity and subject in radian/second
avgtotalaccxmean - This variable stores the mean total acceleration values for the x-axis by each activity and subject
avgtotalaccymean - This variable stores the mean total acceleration values for the y-axis by each activity and subject
avgtotalacczmean - This variable stores the mean total acceleration values for the z-axis by each activity and subject
avgtotalaccxsd - This variable stores the standard deviation total acceleration values for the x-axis by each activity and subject
avgtotalaccysd - This variable stores the standard deviation total acceleration values for the y-axis by each activity and subject
avgtotalacczsd - This variable stores the standard deviation total acceleration values for the z-axis by each activity and subject
avgxvectormean - This variable stores the mean feature vector value by each activity and subject
avgxvectorsd - This variable stores the standard deviation feature vector value by each activity and subject

 ### Process instructions
 
  The UCI Dataset has each of the measurement in seperate text files. Each of the measurement was represented as 128 element vector. So, data from each file were converted into a list of 128 element vector. Then mean for each 128 element vector is calculated and the mean for all the observations is collected in the vector. This process is used for below variables in the dataset 
  bodyaccxmean, bodyaccymean, bodyacczmean, bodyaccxsd, bodyaccysd, bodyacczsd, bodygyroxmean, bodygyroymean, bodygyrozmean,
bodygyroxsd, bodygyroysd, bodygyrozsd, totalaccxmean, totalaccymean, totalacczmean, totalaccxsd, totalaccysd, totalacczsd,
xvectormean, xvectorsd
  
  The Activity vector has the raw data as values 
1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING
  
  The vector was made factor variables with levels 1-6 and then the name of the activities is assigned to the labels.
  
  




