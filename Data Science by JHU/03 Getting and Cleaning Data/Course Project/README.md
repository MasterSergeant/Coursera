# Getting and Cleaning Data Course Project

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis.R
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables:
x_tr - var for X_train.txt data
x_ts - var for X_test.txt data
x - var for merged x_tr and x_ts data
subject_tr - var for subject_train.txt data
subject_ts - var for subject_test.txt data
subject - var for merged subject_tr and subject_ts data
y_tr - var for y_train.txt data
y_ts - var for y_test.txt data
y - var for merged y_tr and y_ts data
activity_labels - var for activity_labels.txt data
features - var for features.txt data
features_mean_std - var for only mean and std features
x_mean_std - var for x with only mean and std data columns
activities - var for descriptive activity (from y and activity_labels)
data_all - var for all merged data
data_tidy - var for data with the average of each variable for each activity and each subject