# Code Book for Course Project

## Source Data

Original source data can be found here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The README contained within the data describes fully the original intent

From the README:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities >(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its >embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The >experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the >volunteers was selected for generating the training data and 30% the test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of >2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated >using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, >therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time >and frequency domain. See 'features_info.txt' for more details. 

## Variables

Only the set of variables that calculated mean and standard deviation are included in this tidy data set. More information on these variables can be found in the features_info.txt file included in the original data.

Variables tracked here include:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Subject remain unchanged from the original data

Activity is now descriptively labeled.

## Transformations

* The training and test data from the original dataset was combined into one large dataset
* Data was subset to include only columns that track mean and standard deviation
* Activity and Subject data was added to the dataset
* Data was transformed to calculate the average of the mean and standard deviation for each tracked variable broken out by Activity and Subject
* A file, 'tidy_data.txt' is generated from the resulting transformation