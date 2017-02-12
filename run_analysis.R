if(!file.exists("./data")){dir.create("./data")}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){
  download.file(fileurl,destfile="./data", mode = "wb")
}

if(!file.exists("./data/UCI HAR Dataset")){
  unzip(zipfile="./data")
}

########################################################################################
##  Read the Test datasets text files and create a vector for each of the variables#####
########################################################################################

test_subject<-read.table("./data/UCI HAR Dataset/test/subject_test.txt")

test_label<-read.table("./data/UCI HAR Dataset/test/y_test.txt")
test_x_data<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
feature_labels<-read.table("./data/UCI HAR Dataset/features.txt")
activity_labels<-read.table("./data/UCI HAR Dataset/activity_labels.txt")
names(test_x_data)<-feature_labels$V2
###########selectcolumns<-grep("mean\\(\\)",names(test_x_data))
###########selectcolumns<-grep("std\\(\\)",names(test_x_data))

###Select columns that represent the mean and std values
selectcolumns<-grep("mean\\(\\)|std\\(\\)",names(test_x_data))
test_x_data_select<-test_x_data[,selectcolumns]

test_label$V1<-factor(test_label$V1,labels=activity_labels$V2)
names(test_label)<-c("activity")
names(test_subject)<-c("subjectID")

########################################################################################
##  Read the Train datasets text files and create a vector for each of the variables#####
########################################################################################

train_subject<-read_table("./data/UCI HAR Dataset/train/subject_train.txt")
train_label<-read_table("./data/UCI HAR Dataset/train/y_train.txt")
train_x_data<-read_table("./data/UCI HAR Dataset/train/X_train.txt")
names(train_x_data)<-feature_labels$V2

###Select columns that represent the mean and std values
selectcolumns<-grep("mean\\(\\)|std\\(\\)",names(train_x_data))
train_x_data_select<-train_x_data[,selectcolumns]
train_label$V1<-factor(train_label$V1,labels=activity_labels$V2)
names(train_label)<-c("activity")
names(train_subject)<-c("subjectID")


########################################################################################
## Create the test and train dataframes and merge them###
########################################################################################
test_dataframe<-data.frame(test_subject,test_label,test_x_data_select)
train_dataframe <- data.frame(train_subject,train_label,train_x_data_select)
str(test_dataframe)
str(train_dataframe)
UCI_meanstd_dataset<-rbind(train_dataframe,test_dataframe)
str(UCI_meanstd_dataset)
########################################################################################
## Create thefinal dataset grouped by activity and subject and calculate the mean###
########################################################################################
UCIdatasetbysubj <- UCI_meanstd_dataset %>% group_by(subjectID,activity) %>% dplyr::summarise_each(funs(mean))

str(UCIdatasetbysubj)
names(UCIdatasetbysubj)<- gsub("BodyBody","Body",names(UCIdatasetbysubj))
names(UCIdatasetbysubj)<- gsub("mean...","mean.",names(UCIdatasetbysubj))
names(UCIdatasetbysubj)<- gsub("std..","std.",names(UCIdatasetbysubj))
write.table(UCIdatasetbysubj,file="./data/ucidatasetbysubj.txt",row.names = FALSE)
