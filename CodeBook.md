---
title: "CodeBook"
author: "lintunnaing"
date: "1/16/2021"
output: html_document
---

## run_analysis.R CodeBook

### Feature Selection  
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

TimeBodyAccelerometer-XYZ
TimeGravityAccelerometer-XYZ
TimeBodyAccelerometerJerk-XYZ
TimeBodyGyroscope-XYZ
TimeBodyGyroscopeJerk-XYZ
TimeBodyAccelerometerMagnitude
TimeGravityAccelerometerMagnitude
TimeBodyAccelerometerJerkMagnitude
TimeBodyGyroscopeMagnitude
TimeBodyGyroscopeJerkMagnitude
FrequencyBodyAccelerometer-XYZ
FrequencyBodyAccelerometerJerk-XYZ
FrequencyBodyGyroscope-XYZ
FrequencyBodyAccelerometerMagnitude
FrequencyBodyAccelerometerJerkMagnitude
FrequencyBodyGyroscopeMagnitude
FrequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

    Mean(): Mean value
    StandardDeviation(): Standard deviation
    MeanFrequency(): Weighted average of the frequency components to obtain a mean frequency
    angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    gravityMean
    TimeBodyAccelerometerMean
    TimeBodyAccelerometerJerkMean
    TimeBodyGyroscopeMean
    TimeBodyGyroscopeJerkMean

##### Variable names

    [1] "subject_ID"                                                
    [2] "activity"                                                  
    [3] "TimeBodyAccelerometerMean()-X"                             
    [4] "TimeBodyAccelerometerMean()-Y"                             
    [5] "TimeBodyAccelerometerMean()-Z"                             
    [6] "TimeGravityAccelerometerMean()-X"                          
    [7] "TimeGravityAccelerometerMean()-Y"                          
    [8] "TimeGravityAccelerometerMean()-Z"                          
    [9] "TimeBodyAccelerometerJerkMean()-X"                         
    [10] "TimeBodyAccelerometerJerkMean()-Y"                         
    [11] "TimeBodyAccelerometerJerkMean()-Z"                         
    [12] "TimeBodyGyroscopeMean()-X"                                 
    [13] "TimeBodyGyroscopeMean()-Y"                                 
    [14] "TimeBodyGyroscopeMean()-Z"                                 
    [15] "TimeBodyGyroscopeJerkMean()-X"                             
    [16] "TimeBodyGyroscopeJerkMean()-Y"                             
    [17] "TimeBodyGyroscopeJerkMean()-Z"                             
    [18] "TimeBodyAccelerometerMagnitudeMean()"                      
    [19] "TimeGravityAccelerometerMagnitudeMean()"                   
    [20] "TimeBodyAccelerometerJerkMagnitudeMean()"                  
    [21] "TimeBodyGyroscopeMagnitudeMean()"                          
    [22] "TimeBodyGyroscopeJerkMagnitudeMean()"                      
    [23] "FrequencyBodyAccelerometerMean()-X"                        
    [24] "FrequencyBodyAccelerometerMean()-Y"                        
    [25] "FrequencyBodyAccelerometerMean()-Z"                        
    [26] "FrequencyBodyAccelerometerMeanFrequency()-X"               
    [27] "FrequencyBodyAccelerometerMeanFrequency()-Y"               
    [28] "FrequencyBodyAccelerometerMeanFrequency()-Z"               
    [29] "FrequencyBodyAccelerometerJerkMean()-X"                    
    [30] "FrequencyBodyAccelerometerJerkMean()-Y"                    
    [31] "FrequencyBodyAccelerometerJerkMean()-Z"                    
    [32] "FrequencyBodyAccelerometerJerkMeanFrequency()-X"           
    [33] "FrequencyBodyAccelerometerJerkMeanFrequency()-Y"           
    [34] "FrequencyBodyAccelerometerJerkMeanFrequency()-Z"           
    [35] "FrequencyBodyGyroscopeMean()-X"                            
    [36] "FrequencyBodyGyroscopeMean()-Y"                            
    [37] "FrequencyBodyGyroscopeMean()-Z"                            
    [38] "FrequencyBodyGyroscopeMeanFrequency()-X"                   
    [39] "FrequencyBodyGyroscopeMeanFrequency()-Y"                   
    [40] "FrequencyBodyGyroscopeMeanFrequency()-Z"                   
    [41] "FrequencyBodyAccelerometerMagnitudeMean()"                 
    [42] "FrequencyBodyAccelerometerMagnitudeMeanFrequency()"        
    [43] "FrequencyBodyAccelerometerJerkMagnitudeMean()"             
    [44] "FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency()"    
    [45] "FrequencyBodyGyroscopeMagnitudeMean()"                     
    [46] "FrequencyBodyGyroscopeMagnitudeMeanFrequency()"            
    [47] "FrequencyBodyGyroscopeJerkMagnitudeMean()"                 
    [48] "FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency()"        
    [49] "angle(tBodyAccelerometerMean,gravity)"                     
    [50] "angle(tBodyAccelerometerJerkMean),gravityMean)"            
    [51] "angle(tBodyGyroscopeMean,gravityMean)"                     
    [52] "angle(tBodyGyroscopeJerkMean,gravityMean)"                 
    [53] "angle(X,gravityMean)"                                      
    [54] "angle(Y,gravityMean)"                                      
    [55] "angle(Z,gravityMean)"                                      
    [56] "TimeBodyAccelerometerStandardDeviation()-X"                
    [57] "TimeBodyAccelerometerStandardDeviation()-Y"                
    [58] "TimeBodyAccelerometerStandardDeviation()-Z"                
    [59] "TimeGravityAccelerometerStandardDeviation()-X"             
    [60] "TimeGravityAccelerometerStandardDeviation()-Y"             
    [61] "TimeGravityAccelerometerStandardDeviation()-Z"             
    [62] "TimeBodyAccelerometerJerkStandardDeviation()-X"            
    [63] "TimeBodyAccelerometerJerkStandardDeviation()-Y"            
    [64] "TimeBodyAccelerometerJerkStandardDeviation()-Z"            
    [65] "TimeBodyGyroscopeStandardDeviation()-X"                    
    [66] "TimeBodyGyroscopeStandardDeviation()-Y"                    
    [67] "TimeBodyGyroscopeStandardDeviation()-Z"                    
    [68] "TimeBodyGyroscopeJerkStandardDeviation()-X"                
    [69] "TimeBodyGyroscopeJerkStandardDeviation()-Y"                
    [70] "TimeBodyGyroscopeJerkStandardDeviation()-Z"                
    [71] "TimeBodyAccelerometerMagnitudeStandardDeviation()"         
    [72] "TimeGravityAccelerometerMagnitudeStandardDeviation()"      
    [73] "TimeBodyAccelerometerJerkMagnitudeStandardDeviation()"     
    [74] "TimeBodyGyroscopeMagnitudeStandardDeviation()"             
    [75] "TimeBodyGyroscopeJerkMagnitudeStandardDeviation()"         
    [76] "FrequencyBodyAccelerometerStandardDeviation()-X"           
    [77] "FrequencyBodyAccelerometerStandardDeviation()-Y"           
    [78] "FrequencyBodyAccelerometerStandardDeviation()-Z"           
    [79] "FrequencyBodyAccelerometerJerkStandardDeviation()-X"       
    [80] "FrequencyBodyAccelerometerJerkStandardDeviation()-Y"       
    [81] "FrequencyBodyAccelerometerJerkStandardDeviation()-Z"       
    [82] "FrequencyBodyGyroscopeStandardDeviation()-X"               
    [83] "FrequencyBodyGyroscopeStandardDeviation()-Y"               
    [84] "FrequencyBodyGyroscopeStandardDeviation()-Z"               
    [85] "FrequencyBodyAccelerometerMagnitudeStandardDeviation()"    
    [86] "FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation()"
    [87] "FrequencyBodyGyroscopeMagnitudeStandardDeviation()"        
    [88] "FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation()"
        
##### Activity labels
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING
    
##### From tidyTable summarize the mean for each activity, each variable and each subject
```tidyTable <- merged_data %>%
    group_by(subject_ID, activity) %>%
    summarize_all(mean)```
    
##### Write new second, independent dataset "secondTidyData.txt"
"secondTidyData.txt" includes all the mean calculated for each activity, variable and subject
```write.table(tidyTable, "secondTidyData.txt",row.names = FALSE, col.names = TRUE)```

