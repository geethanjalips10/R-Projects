#Process to get tidy dataset

The UCI Dataset has each of the measurement in seperate text files. Each of the measurement was represented as 128 element vector. Also the 70% of the volunteers were selected for the training dataset and 30% of the volunteers were selected for the test datatset.

1. Each measurement both from the training and test data folders are read into individual vectors
2. The Activity vector has the raw data as values 
1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING
  The vector was made factor variables with levels 1-6 and then the name of the activities is assigned to the labels.
3. Since each measurement is represented as 128 element vector. So, data from each file were converted into a list of 128 element vector. The mean and standard deviation for each of the 128 element vector is calculated and stored as a vector.
4. The above mentioned process is performed by the following two functions "splitmean" and "splitsd". These function uses set of lapply and sapply commands to remove the spaces from the chararcter vector and set the characters to numbers and calculate mean and standard deviations.
5. The above two functions is called for each of the measurement and the below variables are obtained for each training and test datasets
  bodyaccxmean, bodyaccymean, bodyacczmean, bodyaccxsd, bodyaccysd, bodyacczsd, bodygyroxmean, bodygyroymean, bodygyrozmean,
bodygyroxsd, bodygyroysd, bodygyrozsd, totalaccxmean, totalaccymean, totalacczmean, totalaccxsd, totalaccysd, totalacczsd,
xvectormean, xvectorsd
6. After the vectors are created, they are done put together as data frames for test as well as training datasets. 
7. Then the training and test datasets are merged as a uci_dataset
8. From the above uci_dataset, the final tidy dataset ucidatasetbysubj is calculated. the uci_dataset is grouped_by "activity" and "subject" using dplyr package group_by and summarize function was used to calculate the mean of the each measurement by each activity and subject




