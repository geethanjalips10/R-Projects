########################################################################################
##  Read the Test datasets text files and create a vector for each of the variables#####
########################################################################################

test_subject<-read_lines("./data/UCI HAR Dataset/test/subject_test.txt")
test_label<-read_lines("./data/UCI HAR Dataset/test/y_test.txt")
test_x<-read_lines("./data/UCI HAR Dataset/test/X_test.txt")
test_bacc_x<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
test_bacc_y<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
test_bacc_z<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
test_bgyro_x<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
test_bgyro_y<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
test_bgyro_z<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
test_tacc_x<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
test_tacc_y<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
test_tacc_z<-read_lines("./data/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
test_label<-factor(test_label,levels=c(1,2,3,4,5,6),labels=c("walking","walking_upstairs","walking_downstairs","sitting"
                                                                                                                         ,"standing","laying"))
###### Create functions to create a vector for the accelerator signals to  #############
#####get only the mean and standard deviation values for each of the measurement ######

splitmean<-function (acclist) {
  accarray<-strsplit(acclist," ")
  accarray<-lapply(accarray,function(x){x[x!=""]})
  accarray<-lapply(accarray,function(x){x<-as.numeric(x)})
  accarray<-lapply(accarray,mean)
  accarray
}

splitsd<-function (acclist) {
  accarray<-strsplit(acclist," ")
  accarray<-lapply(accarray,function(x){x[x!=""]})
  accarray<-lapply(accarray,function(x){x<-as.numeric(x)})
  accarray<-lapply(accarray,sd)
  accarray
}



########################################################################################
##  Read the Train datasets text files and create a vector for each of the variables#####
########################################################################################

train_subject<-read_lines("./data/UCI HAR Dataset/train/subject_train.txt")
train_label<-read_lines("./data/UCI HAR Dataset/train/y_train.txt")
train_x<-read_lines("./data/UCI HAR Dataset/train/X_train.txt")
train_bacc_x<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
train_bacc_y<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
train_bacc_z<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
train_bgyro_x<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
train_bgyro_y<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
train_bgyro_z<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
train_tacc_x<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
train_tacc_y<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
train_tacc_z<-read_lines("./data/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
train_label<-factor(train_label,levels=c(1,2,3,4,5,6),labels=c("walking","walking_upstairs","walking_downstairs","sitting"
                                                             ,"standing","laying"))

########################################################################################
## Create the mean and SD vectors for each measurement for both test and Train datasets###
########################################################################################
test_x_mean<-c(do.call(cbind,sapply(test_x,splitmean)))
test_x_sd<-c(do.call(cbind,sapply(test_x,splitsd)))
test_bacc_x_mean<-c(do.call(cbind,sapply(test_bacc_x,splitmean)))
test_bacc_x_sd<-c(do.call(cbind,sapply(test_bacc_x,splitsd)))
test_bacc_y_mean<-c(do.call(cbind,sapply(test_bacc_y,splitmean)))
test_bacc_y_sd<-c(do.call(cbind,sapply(test_bacc_y,splitsd)))
test_bacc_z_mean<-c(do.call(cbind,sapply(test_bacc_z,splitmean)))
test_bacc_z_sd<-c(do.call(cbind,sapply(test_bacc_z,splitsd)))
test_bgyro_x_mean<-c(do.call(cbind,sapply(test_bgyro_x,splitmean)))
test_bgyro_x_sd<-c(do.call(cbind,sapply(test_bgyro_x,splitsd)))
test_bgyro_y_mean<-c(do.call(cbind,sapply(test_bgyro_y,splitmean)))
test_bgyro_y_sd<-c(do.call(cbind,sapply(test_bgyro_y,splitsd)))
test_bgyro_z_mean<-c(do.call(cbind,sapply(test_bgyro_z,splitmean)))
test_bgyro_z_sd<-c(do.call(cbind,sapply(test_bgyro_z,splitsd)))
test_tacc_x_mean<-c(do.call(cbind,sapply(test_tacc_x,splitmean)))
test_tacc_x_sd<-c(do.call(cbind,sapply(test_tacc_x,splitsd)))
test_tacc_y_mean<-c(do.call(cbind,sapply(test_tacc_y,splitmean)))
test_tacc_y_sd<-c(do.call(cbind,sapply(test_tacc_y,splitsd)))
test_tacc_z_mean<-c(do.call(cbind,sapply(test_tacc_z,splitmean)))
test_tacc_z_sd<-c(do.call(cbind,sapply(test_tacc_z,splitsd)))
###same steps applied to train datasets
train_x_mean<-c(do.call(cbind,sapply(train_x,splitmean)))
train_x_sd<-c(do.call(cbind,sapply(train_x,splitsd)))
train_bacc_x_mean<-c(do.call(cbind,sapply(train_bacc_x,splitmean)))
train_bacc_x_sd<-c(do.call(cbind,sapply(train_bacc_x,splitsd)))
train_bacc_y_mean<-c(do.call(cbind,sapply(train_bacc_y,splitmean)))
train_bacc_y_sd<-c(do.call(cbind,sapply(train_bacc_y,splitsd)))
train_bacc_z_mean<-c(do.call(cbind,sapply(train_bacc_z,splitmean)))
train_bacc_z_sd<-c(do.call(cbind,sapply(train_bacc_z,splitsd)))
train_bgyro_x_mean<-c(do.call(cbind,sapply(train_bgyro_x,splitmean)))
train_bgyro_x_sd<-c(do.call(cbind,sapply(train_bgyro_x,splitsd)))
train_bgyro_y_mean<-c(do.call(cbind,sapply(train_bgyro_y,splitmean)))
train_bgyro_y_sd<-c(do.call(cbind,sapply(train_bgyro_y,splitsd)))
train_bgyro_z_mean<-c(do.call(cbind,sapply(train_bgyro_z,splitmean)))
train_bgyro_z_sd<-c(do.call(cbind,sapply(train_bgyro_z,splitsd)))
train_tacc_x_mean<-c(do.call(cbind,sapply(train_tacc_x,splitmean)))
train_tacc_x_sd<-c(do.call(cbind,sapply(train_tacc_x,splitsd)))
train_tacc_y_mean<-c(do.call(cbind,sapply(train_tacc_y,splitmean)))
train_tacc_y_sd<-c(do.call(cbind,sapply(train_tacc_y,splitsd)))
train_tacc_z_mean<-c(do.call(cbind,sapply(train_tacc_z,splitmean)))
train_tacc_z_sd<-c(do.call(cbind,sapply(train_tacc_z,splitsd)))
########################################################################################
## Create the mean and SD vectors for each measurement for both test and Train datasets###
########################################################################################
test_dataframe<-data.frame(test_subject,test_label,test_bacc_x_mean,test_bacc_x_sd,
                           test_bacc_y_mean,test_bacc_y_sd,
                           test_bacc_z_mean,test_bacc_z_sd,
                           test_bgyro_x_mean,test_bgyro_x_sd,
                           test_bgyro_y_mean,test_bgyro_y_sd,
                           test_bgyro_z_mean,test_bgyro_z_sd,
                           test_tacc_x_mean,test_tacc_x_sd,
                           test_tacc_y_mean,test_tacc_y_sd,
                           test_tacc_z_mean,test_tacc_z_sd,
                           test_x_mean,test_x_sd)
names(test_dataframe)<-c("subjectid","activity","bodyaccxmean","bodyaccxsd","bodyaccymean","bodyaccysd",
                         "bodyacczmean","bodyacczsd","bodygyroxmean","bodygyroxsd","bodygyroymean","bodygyroysd",
                         "bodygyrozmean","bodygyrozsd","totalaccxmean","totalaccxsd","totalaccymean","totalaccysd",
                         "totalacczmean","totalacczsd","xvectormean","xvectorsd")
train_dataframe<-data.frame(train_subject,train_label,train_bacc_x_mean,train_bacc_x_sd,
                            train_bacc_y_mean,train_bacc_y_sd,
                            train_bacc_z_mean,train_bacc_z_sd,
                            train_bgyro_x_mean,train_bgyro_x_sd,
                            train_bgyro_y_mean,train_bgyro_y_sd,
                            train_bgyro_z_mean,train_bgyro_z_sd,
                            train_tacc_x_mean,train_tacc_x_sd,
                            train_tacc_y_mean,train_tacc_y_sd,
                            train_tacc_z_mean,train_tacc_z_sd,
                            train_x_mean,train_x_sd)
###Naming of the variables
names(train_dataframe)<-c("subjectid","activity","bodyaccxmean","bodyaccxsd","bodyaccymean","bodyaccysd",
                         "bodyacczmean","bodyacczsd","bodygyroxmean","bodygyroxsd","bodygyroymean","bodygyroysd",
                         "bodygyrozmean","bodygyrozsd","totalaccxmean","totalaccxsd","totalaccymean","totalaccysd",
                         "totalacczmean","totalacczsd","xvectormean","xvectorsd")
#### Training and Test Dataset merged to form the UCI Dataset
uci_dataset<-rbind(train_dataframe,test_dataframe)
uci_dataset
###### UCI Dataset is grouped by activity,subject and the mean for each variable is calculated for each 
#####activity and subject
ucidatasetbysubj<-uci_dataset %>% group_by(activity,subjectid) %>% 
                  dplyr::summarize(avgbodyaccxmean = mean(bodyaccxmean),avgbodyaccxsd = mean(bodyaccxsd),
                                   avgbodyaccymean = mean(bodyaccymean),avgbodyaccysd = mean(bodyaccysd),
                                   avgbodyacczmean = mean(bodyacczmean),avgbodyacczsd = mean(bodyacczsd),
                                   avgbodygyroxmean = mean(bodygyroxmean),avgbodygyroxsd = mean(bodygyroxsd),
                                   avgbodygyroymean = mean(bodygyroymean),avgbodygyroysd = mean(bodygyroysd),
                                   avgbodygyrozmean = mean(bodygyrozmean),avgbodygyrozsd = mean(bodygyrozsd),
                                   avgtotalaccxmean = mean(totalaccxmean),avgtotalaccxsd = mean(totalaccxsd),
                                   avgtotalaccymean = mean(totalaccymean),avgtotalaccysd = mean(totalaccysd),
                                   avgtotalacczmean = mean(totalacczmean),avgtotalacczsd = mean(totalacczsd),
                                   avgxvectormean = mean(xvectormean),avgxvectorsd = mean(xvectorsd))
dim(ucidatasetbysubj)
str(ucidatasetbysubj)
ucidatasetbysubj
write.table(ucidatasetbysubj,file="./data/ucidatasetbysubj.txt",row.names = FALSE)