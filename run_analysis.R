### check if the zip file name exists in the current working directory
### download the zip file using given url
### unzip the file

fileLink <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "gettingDataZip.zip"
if(!file.exists("gettingDataZip.zip")){
download.file(fileLink, fileName, method = "curl")
}
if(!file.exists("UCI HAR Dataset")) {
    unzip(fileName)
} 

### read the files, name the column accordingly

library("data.table")
activity_labels <- fread("./UCI HAR Dataset/activity_labels.txt", col.names = c("activity_ID", "activity_name"))
features <- fread("./UCI HAR Dataset/features.txt", col.names = c("no", "feature"))
subject_train <- fread("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject_ID")
X_train <- fread("./UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
y_train <- fread("./UCI HAR Dataset/train/y_train.txt", col.names = "activity_ID")
subject_test <- fread("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject_ID")
X_test <- fread("./UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
y_test <- fread("./UCI HAR Dataset/test/y_test.txt", col.names = "activity_ID")

### combine the datasets with rbind and cbind
### replace activity_ID with proper activity names from activity_labels

y_data <- rbind(y_train, y_test)
X_data <- rbind(X_train, X_test)
subject_data <- rbind(subject_train, subject_test)
combined_data <- cbind(subject_data, y_data, X_data)
combined_data$activity_ID <- activity_labels[combined_data$activity_ID, activity_name]

### use dplyr package, extract only mean and standard deviation variables
### tidy data with appropriate naming substitude all shortcut naming with descriptive names

library("dplyr")
merged_data <- combined_data %>%
    select(subject_ID, activity_ID, contains(c("mean","std"), ignore.case = TRUE))

names(merged_data)[2] <- "activity"
names(merged_data) <- gsub("-meanfreq()", "MeanFrequency", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("^f", "Frequency", names(merged_data))
names(merged_data) <- gsub("BodyBody", "Body", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("^t", "Time", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("^tbody", "TimeBody", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("gyro", "Gyroscope", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("Acc", "Accelerometer", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("-std()", "StandardDeviation", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("-mean()", "Mean", names(merged_data), ignore.case = TRUE)
names(merged_data) <- gsub("Mag", "Magnitude", names(merged_data), ignore.case = TRUE)

### calculate averages for each activity, each variable and each subject
### write in a "secondTidyData.txt" file in working directory including column names

tidyTable <- merged_data %>%
    group_by(subject_ID, activity) %>%
    summarize_all(mean)
write.table(tidyTable, "secondTidyData.txt",row.names = FALSE, col.names = TRUE)
