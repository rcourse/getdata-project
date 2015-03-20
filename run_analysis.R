# This is R script for course project to Getting and Cleaning Data course on Coursera.
# The script create a tidy data set with the average of mean and standard deviation variables
# for each activity and each subject from data available at this link:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis <- function() {

  ###############################
  ##  getting data from files  ##
  ###############################
  
  # get train data
  train_data <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactor = FALSE)
  train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactor = FALSE)
  train_label <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactor = FALSE)
  
  # get test data
  test_data <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactor = FALSE)
  test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactor = FALSE)
  test_label <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactor = FALSE)
  
  # get features description
  features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactor = FALSE)
  
  # get activity description
  activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

  ######################################
  ##  merging training and test sets  ##
  ######################################
  
  train <- cbind(train_subject, train_label, train_data)
  test <- cbind(test_subject, test_label, test_data)
  data <- rbind(train, test)

  # add subject, activity and features column names (from second column of data frame features)
  names(data) <- c("subject", "activity", features[,2])

  # add descriptive activity names for given labels
  data$activity <- activity_labels[data$activity,2]
  
  # extract measurements on mean and standard deviation (std)
  extract <- cbind("subject" = data$subject, "activity" = data$activity,
                   data[,grepl("mean|std",names(data)) & !grepl("meanFreq", names(data))])

  ##############################
  ##  creating tidy data set  ##
  ##############################
  
  # create tidy data set with the average of each variable for each activity and each subject
  tidy_data <- aggregate(. ~ subject + activity, data = extract, FUN = mean)
  
  # order tidy data by subject first and by activity alphabetically
  tidy_data <- tidy_data[order(tidy_data$subject, tidy_data$activity),]
  
  # set row names as ascending number
  row.names(tidy_data) <- seq(1 : nrow(tidy_data))
  
  # write tidy data set to tidy_data.txt file
  write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)
  
  # return tidy data from function run_analysis()
  tidy_data
  
}
