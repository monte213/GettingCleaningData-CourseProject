#Merge the training and the test sets to create one data set.
test_data <- read.table("UCI HAR Dataset\\test\\X_test.txt")
train_data <- read.table("UCI HAR Dataset\\train\\X_train.txt")

full_data <- rbind(test_data, train_data)

#Extract only the measurements on the mean and standard deviation for each measurement. 
subset_data <- full_data[,1:6]

#Read in Activity and Subject info. cbind works here to add them appropriately to our data 
#because rbind won'tmess with the data the way merge() would.
test_act_label <- read.table("UCI HAR Dataset\\test\\Y_test.txt")
train_act_label <- read.table("UCI HAR Dataset\\train\\Y_train.txt")

full_act_label <- rbind(test_act_label, train_act_label)

test_subject <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
train_subject <- read.table("UCI HAR Dataset\\train\\subject_train.txt")

full_subject <- rbind(test_subject, train_subject)

#We'll add Activity and Subject to the begining of the data set
subset_data <- cbind(full_act_label, subset_data)
subset_data <- cbind(full_subject, subset_data)

#Appropriately label the data set with descriptive variable names.
colnames(subset_data) <- c("Subject", "Activity", "AvgBodyAcceleration-mean-X", "AvgBodyAcceleration-mean-Y", "AvgBodyAcceleration-mean-Z", "AvgBodyAcceleration-std-X
","AvgBodyAcceleration-std-Y", "AvgBodyAcceleration-std-Z")

#Use descriptive activity names to name the activities in the data set
subset_data$Activity[subset_data$Activity == 1] <- "WALKING"
subset_data$Activity[subset_data$Activity == 2] <- "WALKING_UPSTAIRS"
subset_data$Activity[subset_data$Activity == 3] <- "WALKING_DOWNSTAIRS"
subset_data$Activity[subset_data$Activity == 4] <- "SITTING"
subset_data$Activity[subset_data$Activity == 5] <- "STANDING"
subset_data$Activity[subset_data$Activity == 6] <- "LAYING"

#Create a second, independent tidy data set with the average of each variable for each activity and each subject.
agg_data <- aggregate(subset_data[,3:8], list(Activity = subset_data$Activity, Subject = subset_data$Subject), mean)
write.table(agg_data, "tidy_data.txt", row.names=FALSE) #write out the file