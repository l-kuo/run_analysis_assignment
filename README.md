# run_analysis_assignment
Assignment for course 3 week 4

## The R script file is saved at run_analysis.R
### Perform the following steps
1. check if the zip file name exists in the current working directory
2. download the zip file using given url
[links](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. unzip the file
**UCI HAR Dataset**  

### Using **data.table** to read the given datasets **UCI HAR Dataset**
##### Read the files, name the columns accordingly
1. activity_label = activity_labels.txt\
    column names = "activity_ID", "activity_name"\
2. features = features.txt\
    column names = "no", "feature"\
3. subject_train, subject_test = subject_train.txt, subject_test.txt\
    column names = "subject_ID"\
4. X_train, y_train, X_test, y_test = X_train.txt, y_train.txt, X_test.txt, y_test.txt\
    column names are given from the values of "features" derived from feature.txt\
    **later we will filter only the "mean" and the "std" variables from feature list**\
  
### Combine the datasets with rbind and cbind
1. first using rbind to combine y_train and y_test saved in y_data
2. using rbind to combine X_train and X_test saved in X_data
3. combine the subject_train and subject_test saved in subject_data
4. in combined data, using cbind to merge all the dataset in one place
5. replace the activity_ID with proper activity names from activity_labels

### Select and naming with descriptive names  
1. Select variables include only "mean" and "std"
2. Rename with descriptive names for all variable

##### Substitute names to descriptive names
    meanfreq = MeanFrequency
    prefix f = Frequency
    BodyBody = Body
    prefix t = Time
    tbody = TimeBody
    gyro = Gyroscope
    Acc = Accelerometer
    std = StandardDeviation
    mean = Mean
    Mag = Magnitude

### Calculate averages for each activity, each variable and each subject
    Saved in the tidyTable
    
### Write in a "secondTidyData.txt" file in working directory including column names