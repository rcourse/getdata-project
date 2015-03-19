# Codebook for course project

This file contains data description for course project to Getting and Cleaning Data course on Coursera.

## Original data
* [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* full description of original data can be obtained [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* measured data is divided into two parts: *training* and *testing* data

### Original data files
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



## Corresponding data sets

train_data
train_subject
train_label

test_data
test_subject
test_label

train
test

merged

## Tidy data set

* *tidy_data* data set contains average of each variable for each activity and each subject
* variables:
 * *subject* - number of subject from 1 to 30
 * *activity* - factor variable, one of these values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 * averaged values for measurements of features that consists mean and standard deviation for given activity and given subject

## Averaged measurements features in tidy data set
