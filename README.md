# Read me file for course project

This repository contains files necessary for course project to Getting and Cleaning Data course on Coursera.

Data Source:
* data collected from the accelerometers from the Samsung Galaxy S II smartphone within [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) project
* [course Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Project repository consists of these files:
* README.md - this file
* [CoodBook.md](https://github.com/rcourse/getdata-project/blob/master/CodeBook.md) - data description
* [run_analysis.R](https://github.com/rcourse/getdata-project/blob/master/run_analysis.R) - script file written in R for doing required analysis

Starting conditions to run_analysis.R:
* content of [this file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) must be downloaded and unzipped in the working directory (as "UCI HAR Dataset" sub-folder)
* after sourcing run_analysis.R run script by calling run_analysis()

Script run_analysis.R description:
* read content of the train and test data files as well as features and activity labels from directory "UCI HAR Dataset" into corresponding data sets
* merge train data sets into one data set - train
* merge test data sets into one data set - test
* merge train and test sets to create one data set - joined
* extract only the measurements on the mean and standard deviation for each measurement
* set descriptive activity names to name the activities in the data set as defined in activity_labels.txt
* label the data set with descriptive variable names
* create tidy data set with the average of each variable for each activity and each subject
* save tidy data set as tidy_data.txt

References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
