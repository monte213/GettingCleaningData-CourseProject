GettingCleaningData-CourseProject
=================================

This project is based on data obtained from the Human Activity Recognition Using Smartphones Dataset compiled by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto for SmartLab in Genoa, Italy.

A brief description of the project as taken from their README: 

'The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.'

Here, the run_analysis.R file takes the data compiled for this project and combines it into a larger dataset. A second, tidy dataset is produced with the average of each variable for each activity and each subject. The resulting dataset is output to a file, tidy_data.txt