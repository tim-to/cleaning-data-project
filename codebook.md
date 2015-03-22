#Project Description

We are to download the "Human Activity Recognition Using Smartphones Dataset", clean and
organize it to only process the mean and standard deviation of these measurements as variables and

> creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Description of the original raw data

The original data was collected using 30 human subjects wearing electronic measuring 
devices which record the subjects' geospatial 3D locations performing six types of 
activities. These measurements were then filtered and transformed in multiple stages into
different types of measurements. These measurements (561 of them) are the variables for 
this project. 

The measurements were arbitrarily separated into a training (7352 observations X 561 
variables) and testing (2947 observations X 561 variables) sets of data. 

Each set contains a raw data fie with the 
measurements but the subject and activity types for each set of 561 measurements are 
separated into 2 numeric vectors ( 2 vectors each of 2947 obs. X 1 variable and 7352 obs. X 1 variable). 
For example following is the collection of data files in the test subdirectory:

File Name        | Description           | Dimension
-----------------|-----------------------|---------------
X_test.txt       | Test measurement file | (2947 X 561)
subject_test.txt | subject id file       | (2947 X 1)
y_test.txt       | activity id file      | (2947 X 1)

The name for these measurements/variables and the activities are also provided in two 
"look up" type files containing the ids of the variables and activity types contained in 
the measurement files and the more meaning names for the type of measurements and 
activities.

**Contents of the activity_lables.txt file:**

Activity id | Activity labels/names
------------|----------------------
  1         | WALKING
  2         | WALKING_UPSTAIRS
  3         | WALKING_DOWNSTAIRS
  4         | SITTING
  5         | STANDING
  6         | LAYING

For example the number 1 is used as an id for Walking in the measurement file.
 
##Data Processing Steps 

1. Attach the subject and activity id vectors back to the measurements for both the test and training sets.
2. Combine the test and train data sets into a single entity.
3. Replace the measurement id with meaningful names.
4. Using the meaningful names, select only the mean and standard deviation data and as a result also remove duplicated measurements. 
5. Organize the measurements base on the subject and activities.
6. Replace the activity ids with their more meaningful names.

For a more detail description of how the resultant dataset is a tidy dataset and how the 
run_analysis script works, please refer to this project's [README file](https://github.com/tim-to/cleaning-data-project/blob/master/README.md) 

##Data Dictionary

**Name:** "subjects"

**Description:** These are the 30 human subject performed the 6 different activties and generated the original raw motion measurements.

**data type:** Integer 

**range:** 1 - 30

**Name:** "activities"
**Description:** These are the 6 activity types each human subject performed.
**data type:** character 
**range:** "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"   

**Name:** "tBodyAcc-mean()-X"
**Description:** One of the three time domained, normalized triaxial body accelerometer measurement.
**data type:** real 
**range:**  -1 to +1

"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAcc-meanFreq()-X"
"fBodyAcc-meanFreq()-Y"
"fBodyAcc-meanFreq()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyGyro-meanFreq()-X"
"fBodyGyro-meanFreq()-Y"
"fBodyGyro-meanFreq()-Z"
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyAccMag-meanFreq()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
"fBodyBodyGyroJerkMag-meanFreq()"
