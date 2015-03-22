#Project Description

We are to download the ["Human Activity Recognition Using Smartphones Dataset"](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), 
clean and organize it to only process the mean and standard deviation of these measurements as variables and

> creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Description of the original raw data

The original data was collected using 30 human subjects wearing electronic measuring 
devices which record the subjects' geospatial 3D locations performing six types of 
activities. These measurements were then filtered and transformed in multiple stages into
different types of measurements. Each measurement is normalized and bounded to the range of 
(-1, +1). These measurements (561 of them) are the measurement variables for this project. 

The measurements were arbitrarily separated into a training (7352 observations X 561 
variables) and testing (2947 observations X 561 variables) sets of data. 

Each set contains a raw data fie with the 
measurements but the subject and activity types for each set of 561 measurements are 
separated into 2 numeric vectors ( 2 vectors each of 2947 obs. X 1 variable and 7352 obs. X 1 variable). 
Following are the data files used for this project with their descriptions and dimensions.
The collection of data files in the test subdirectory:

File Name         | Description            | Dimension
------------------|------------------------|---------------
X_test.txt        | Test measurement file  | (2947 X 561)
subject_test.txt  | subject id file        | (2947 X 1)
y_test.txt        | activity id file       | (2947 X 1)

The collection of data files in the train subdirectory:

File Name         | Description            | Dimension
------------------|------------------------|---------------
X_train.txt       | Train measurement file | (7352 X 561)
subject_train.txt | subject id file        | (7352 X 1)
y_train.txt       | activity id file       | (7352 X 1)

The name for these measurements/variables and the activities are provided separately in two 
"look up" type files. These files contain the ids of the variables and activity types 
and the more meaningful names for the type of measurements and activities in the main UCI_HAR_Dataset directory:

File Name         | Description            | Dimension
------------------|------------------------|---------------
activity_labels   | Activity names         | (6 X 2 )
features.txt      | activity id file       | (561 X 2) 

**Contents of the activity_lables.txt file:**

Activity id | Activity labels/names
------------|----------------------
  1         | WALKING
  2         | WALKING_UPSTAIRS
  3         | WALKING_DOWNSTAIRS
  4         | SITTING
  5         | STANDING
  6         | LAYING

For example the number 1 is used as an activity id in the measurement file while its name 
"WALKING" is stored in the activity_labels.txt file along with its id.
 
##Data Processing Steps 

1. Attach the subject and activity id vectors back to the measurements for both the test and training sets.
2. Combine the test and train data sets into a single entity.
3. Replace the measurement id with meaningful names.
4. Using the meaningful names, select only the mean and standard deviation data and as a result also remove duplicated measurements. 
5. Organize the measurements base on the subject and activities.
6. Replace the activity ids with their more meaningful names.

For a more detail description of why the resultant dataset is a tidy dataset and how the 
run_analysis script works, please refer to this project's [README file](https://github.com/tim-to/cleaning-data-project/blob/master/README.md) 

##Data Dictionary

**Name:** "subjects"

**Description:** These are the 30 human subject performed the 6 different activties and generated the original raw motion measurements.

**data type:** Integer 

**range:** 1 - 30

------------------------------------------------------------------------------

**Name:** "activities"

**Description:** These are the 6 activity types each human subject performed.

**data type:** Character 

**range:** "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"   

------------------------------------------------------------------------------

**Name:** "tBodyAcc-mean()-X"

**Description:** The average of the mean of one of the three time domain, normalized triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "tBodyAcc-mean()-Y"

**Description:** The average of the mean of one of the three time domain, normalized triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "tBodyAcc-mean()-Z"

**Description:** The average of the mean of one of the three time domain, normalized triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAcc-std()-X"

**Description:** The average of the standard deviation of one of the three time domain, normalized triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAcc-std()-Y"

**Description:** The average of the standard deviation of one of the three time domain, normalized triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAcc-std()-Z"

**Description:** The average of the standard deviation of one of the three time domain, normalized triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "tGravityAcc-mean()-X"

**Description:** The average of the mean of one of the three time domain, normalized triaxial gravity accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "tGravityAcc-mean()-Y"

**Description:** The average of the mean of one of the three time domain, normalized triaxial gravity accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tGravityAcc-mean()-Z"

**Description:** The average of the mean of one of the three time domain, normalized triaxial gravity accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tGravityAcc-std()-X"

**Description:** The average of the standard deviation of one of the three time domain, normalized triaxial gravity accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tGravityAcc-std()-Y"

**Description:** The average of the standard deviation of one of the three time domain, normalized triaxial gravity accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tGravityAcc-std()-Z"

**Description:** The average of the standard deviation of one of the three time domain, normalized triaxial gravity accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerk-mean()-X"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body accelerometer measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerk-mean()-Y"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body accelerometer measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerk-mean()-Z"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body accelerometer measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerk-std()-X"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body accelerometer measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerk-std()-Y"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body accelerometer measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerk-std()-Z"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body accelerometer measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyro-mean()-X"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body gyroscope measurement. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyro-mean()-Y"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body gyroscope measurement. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyro-mean()-Z"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body gyroscope measurement. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyro-std()-X"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body gyroscope measurement. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyro-std()-Y"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body gyroscope measurement. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyro-std()-Z"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body gyroscope measurement. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerk-mean()-X"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body gyroscope measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerk-mean()-Y"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body gyroscope measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerk-mean()-Z"

**Description:** The average of the mean of one of the three time domain, normalized 
triaxial body gyroscope measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerk-std()-X"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body gyroscope measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerk-std()-Y"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body gyroscope measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerk-std()-Z"

**Description:** The average of the standard deviation of one of the three time domain, normalized 
triaxial body gyroscope measurement. This measurement also combines the linear acceleration  
with angular velocity to derive in time Jerk signals. 

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccMag-mean()"

**Description:** The average of the Euclidean norm of the mean of the Body Jerk
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccMag-std()"

**Description:** The average of the Euclidean norm of the of the standard deviation of the Body Jerk
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tGravityAccMag-mean()"

**Description:** The average of the Euclidean norm of the mean of the Gravity Jerk
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tGravityAccMag-std()"

**Description:** The average of the Euclidean norm of the standard deviation of the Gravity Jerk
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerkMag-mean()"

**Description:** The average of the Euclidean norm of the mean of the Body Jerk
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyAccJerkMag-std()"

**Description:** The average of the Euclidean norm of the standard deviation of the Body Jerk
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroMag-mean()"

**Description:** The average of the Euclidean norm of the mean of the Body
 gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroMag-std()"

**Description:** The average of the Euclidean norm of the mean of the Body
 gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerkMag-mean()"

**Description:** The average of the Euclidean norm of the mean of the Body Jerk
 gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "tBodyGyroJerkMag-std()"

**Description:** The average of the Euclidean norm of the standard deviation of the Body Jerk
 gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-mean()-X"

**Description:** The average of applying the Fast Fourier Transform to the mean of
the body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-mean()-Y"

**Description:** The average of applying the Fast Fourier Transform to the mean of  
the body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-mean()-Z"

**Description:** The average of applying the Fast Fourier Transform to 
the mean of the body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-std()-X"

**Description:** The average of applying the Fast Fourier Transform to the standard deviation of 
the body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-std()-Y"

**Description:** The average of applying the Fast Fourier Transform to the standard deviation of
the body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-std()-Z"

**Description:** The average of applying the Fast Fourier Transform to the standard deviation of
the body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-meanFreq()-X"

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-meanFreq()-Y"

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAcc-meanFreq()-Z"

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "fBodyAccJerk-mean()-X"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial mean body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccJerk-mean()-Y"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial mean body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccJerk-mean()-Z"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial mean body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccJerk-std()-X"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial standard deviation body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "fBodyAccJerk-std()-Y"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial standard deviation body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

**Name:** "fBodyAccJerk-std()-Z"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial standard deviation body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccJerk-meanFreq()-X""

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccJerk-meanFreq()-Y""

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccJerk-meanFreq()-Z""

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-mean()-X"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial mean body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-mean()-Y"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial mean body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-mean()-Z"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial mean body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-std()-X"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial standard deviation body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-std()-Y"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial standard deviation body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-std()-Z"

**Description:** The average of applying the Fast Fourier Transform to
one of the three triaxial standard deviation body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-meanFreq()-X"

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-meanFreq()-Y"

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyGyro-meanFreq()-Z"

**Description:** The average of applying the Fast Fourier Transform to
the weighted mean of the frequency component of one of the three triaxial body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccMag-mean()"

**Description:** The average of applying the Fast Fourier Transform to the mean of the Euclidean norm of the Body
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccMag-std()"

**Description:** The average of applying the Fast Fourier Transform to the standard deviation of the Euclidean norm of the Body
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyAccMag-meanFreq()"

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of the weighted mean of the frequency component of Body
 accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyAccJerkMag-mean()"

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of the mean of the Body
 Jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyAccJerkMag-std()"

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of the standard deviation of the Body
 Jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1
------------------------------------------------------------------------------
**Name:** "fBodyBodyAccJerkMag-meanFreq()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the weighted mean of the frequency component of body jerk accelerometer measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyGyroMag-mean()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the mean of the body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyGyroMag-std()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the standard deviation of the body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyGyroMag-meanFreq()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the weighted mean of the frequency component of the body gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyGyroJerkMag-mean()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the mean of the body jerk gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyGyroJerkMag-std()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the standard deviation of the body jerk gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------
**Name:** "fBodyBodyGyroJerkMag-meanFreq()""

**Description:** The average of applying the Fast Fourier Transform to the Euclidean norm of
the weighted mean of frequency component of the body jerk gyroscope measurement.

**data type:** Real Number

**range:**  -1 to +1

------------------------------------------------------------------------------

