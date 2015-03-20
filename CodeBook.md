# Codebook for course project

This file contains data description for course project to Getting and Cleaning Data course on Coursera.

## Original data
* [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* full description of original data can be obtained [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* measured data is divided into two parts: *training* (around 70% of all measurements) and *testing* (around 30% of all measurements)
* features are normalized and bounded within [-1,1]

### Original data files
* *README.txt* - desription of original data
* *features.txt* - list of features or variables that were recorded during experiments (561 features)
* *features_info.txt* - description of features and short methodology how they were obtained
* *activity_labels.txt* - list of all activities that were measured (6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)
* *train/X_test.txt* - training data set, 7352 observations, 561 measured variables (described in features_info.txt)
* *train/y_test.txt* - number of activity for each observation in training data set, 7352 observations, 1 variable (activity numbers from 1 to 6)
* *train/subject_test.txt* - number of subject who performed the activity in training phase, 7352 observations, 1 variable (train subject numbers: 1,3,5,6,7,8,11,14,15,16,17,19,21,22,23,25,26,27,28,29,30)
* *test/X_test.txt* - test data set, 2947 observations, 561 measured variables (described in features_info.txt)
* *test/y_test.txt* - number of activity for each observation in test data set, 2947 observations, 1 variable (activity numbers from 1 to 6)
* *test/subject_test.txt* - number of subject who performed the activity in testing phase, 2947 observations, 1 variable (test subject numbers: 2,4,9,10,12,13,18,20,24)
* *note*: there are also inertial signals data, which are irrelevant for this project

## Working data sets
* *train_data*, *train_subject*, *train_label* - data frames for keeping corresponding data from train data files
* *test_data*, *test_subject*, *test_label* - data frames for keeping corresponding data from test data files
* *features* - data set for storing feautures descriptive names (561 features names)
* *activity_labels* - data set for storing activity names and corresponding labels
* *train* - merged train set (7352 observations and 563 variables - *subject*, *activity* and 561 measurement variables)
* *test* - merged test set (2947 observations and 563 variables - *subject*, *activity* and 561 measurement variables)
* *data* - merged train and test set together (10299 observations and 563 variables - *subject*, *activity* and 561 measurement variables)
* *extract* - data set extracted from *data* by including only mean() and std() features (10299 observations, 68 variables - *subject*, *activity*, 66 variables with mean and standard deviation measurement)

## Tidy data set
* *tidy_data* data set contains average of each extracted variable for each activity and each subject
* variables:
 * *subject* - number of subject from 1 to 30
 * *activity* - descriptive name for acticity, one of these values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 * 66 variables of corresponding means - averaged values for measurements of features that consists mean and standard deviation for given activity and given subject (see below for variable names)
* observations: 180 observations (each subject form 1 to 30 performing 6 activities - 6 * 30 = 180)

## Averaged measurements features in tidy data set
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

Note: for description of these variables see link in original data section
