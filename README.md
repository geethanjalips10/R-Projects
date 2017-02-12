#Process to get tidy dataset

The UCI Dataset has each of the variable in seperate text files. The dataset has training and test data folders seperately. We need to merge the training and test datasets. The training and test data is a 561 features vector.We need to use the "features.txt" file to parse the dataset for particular feature values.  The files were downloaded and unziped

1. 
  Each measurement both from the training and test data folders are read into individual tablesusing read.table
2. The Activity vector has the raw data as values 
1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING
  The activity column was made factor column with the name of the activities is assigned to the labels.
3.The names for the train_x and test_x data are read from the features.txt file. The training and test feature data was then parsed using grep command to select only the mean and Standard deviation column measures.
5. The test dataframe is formed from subject, activity and the test_feature data. Similarly the training dataframe was also created
6. After the dataframes are created, they are then merged together using the rbind function.
7. Then the training and test datasets are merged as a uci_dataset
8. From the above uci_dataset, the final tidy dataset ucidatasetbysubj is calculated. the uci_dataset is grouped_by "activity" and "subject" using dplyr package group_by and summarize_each function was used to calculate the mean for each measurement by each activity and subject




