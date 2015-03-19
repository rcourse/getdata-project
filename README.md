# Read me file for course project

This repository contains files necessary for course project to Getting and Cleaning Data course on Coursera.

Project consists of these files:
* README.md - this file
* [CoodBook.md](https://github.com/rcourse/getdata-project/blob/master/CodeBook.md) - data description
* [run_analysis.R](https://github.com/rcourse/getdata-project/blob/master/run_analysis.R) - script file written in R for doing required analysis

Starting conditions to run_analysis.R:
* content of [this file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) must be downloaded and unzipped in the working directory
* after sourcing run_analysis.R run script by calling run_analysis()

Script description:
* read content of the train and test data files from directory ---------- into corresponding data sets
* merges the training and the test sets to create one data set
* extracts only the measurements on the mean and standard deviation for each measurement
* sets descriptive activity names to name the activities in the data set
* labels the data set with descriptive variable names
* creates tidy data set with the average of each variable for each activity and each subject

References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
