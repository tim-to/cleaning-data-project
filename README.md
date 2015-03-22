#Introduction
This dataset contains the averages of mean and standard deviations from the wearable 
device project conducted by Davide Anguita et al. (see footnote 1) 

#Source Data File
The zipped data file:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
is downloaded into the working directory of R and where the run_analysis.R script resides. 

All the data files for this project is unzipped into the UCI_HAR_Dataset subdirectory in 
the R working directory. All data files are read from these local directories: 
UCI_HAR_Dataset/
UCI_HAR_Dataset/test/
UCI_HAR_Dataset/train/

#Which variables are selected for processing
The project instructions states that only mean and standard deviation measurements should
be included in a tidy dataset. 
This dataset includes all data with measurement names including the word mean and std. 
However, there are a number of measurement names that contain the capitalized word "Mean" 
(e.g. gravityMean) that are not included. 

As stated in the downloaded feature_info.txt, these measurements are 
additional vectors obtained by computing derived data on the data from all subjects and 
has to do with the "angle" variable. Therefore, these variables are not related to 
individual subjects but has to do with the group of all subjects. As discussed in the 
next section only 
> "the average of each variable for each activity and *each subject*"
should be part of the tidy dataset.


#What are the observations 

As stated by the project instructions:
> creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The observations (rows) should show the averages of each variable for each unique 
combination of activities and subjects. 
Therefore, the initial dataset should be re-organized according to the 
subjects and activities, each row is a unique combination of subject and activity
and each cell should contain the average of the mean or standard deviation for that 
combination:

Subjects | Activities | mean 1 | mean 2 | standard deviation 1 | ...
---------|------------|--------|--------|----------------------|-----
1        | Walking    |0.0753..|0.0753..|-0.976609642526316    | ...
1        | SITTING    |0.0345..|0.0748..|-0.952849233207547    | ... 

There are (30 subjects * 6 activities) 180 unique combinations/observations in the tidy 
data set.

#The tidy dataset
The dataset produced by this run_analysis.R script produce a dataset that is compliant
with the tidy data definition (from Hadley Wickham's article [2]):
1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

In this dataset, each variable is self-contained in its own column and each observation is
a unique combination of subject and activity on its own row. Finally, all rows in this 
dataset have exactly the same semantic meaning and therefore the same type of observations
as defined in the "What are the observations" section. 
*According to the tidy data set definition, this is a tidy dataset.*


#run_analysis.R explanation

**Load the test data**
	test.x <- read.table("UCI_HAR_Dataset/test/X_test.txt")
	test.y <- read.table("UCI_HAR_Dataset/test/Y_test.txt")
	test.subject <- read.table("UCI_HAR_Dataset/test/subject_test.txt")

**Load the train data**
	`train.x <- read.table("UCI_HAR_Dataset/train/X_train.txt")
	train.y <- read.table("UCI_HAR_Dataset/train/Y_train.txt")
	train.subject <- read.table("UCI_HAR_Dataset/train/subject_train.txt")`

**Join the subjects and activity vectors to the test and train data as leading columns **
	`test <- cbind(test.subject, test.y,test.x)
	train <- cbind(train.subject, train.y,train.x)`
**Join the test and train data frames together as collections of rows.**
	`joined <- rbind(test,train)`

**Read the feature descriptions**
	`features <- read.table("UCI_HAR_Dataset/features.txt", stringsAsFactors=F)[,2]`

**Use the feature descriptions from the features.txt file and the labels "subject" and**
**"activity" as variable names.**
	`names(joined)<-c("subjects", "activities", features)`

**Select only the variable with names that contains mean, standard deviation, subject**
**and activities.**
	`x <- joined[, grep("subjects|activities|*mean*|*std*", colnames(joined))]`

**Re-organize variables accoring to the subject and activities**
	`x1 <-melt(x,id=c("subjects", "activities"))`

**Calculate the average values for each mean and standard deviation measurements for**
**each subject and each activities while grouping the measurements around each unique**
**subject and activity combination.*
	`x2 <-dcast(x1, subjects + activities ~ variable, mean)`

**Loads the activity labels and their corresponding ids then replace the activity id**
**in the data frame with their corresponding name**
	`activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors=F)
	final <- pasteActivityLabels(x2, activity_labels)`
	
**Write the data into file without the row names**
	`write.table(final, "final_fitbit.txt", row.names = FALSE)`

*Use this command to read the result file :* 
`read.table("final_fitbit.txt", header = TRUE)`

**This function takes the input data frame and replace the label id with the given label**
**names.**
`	pasteActivityLabels <- function(df, labels){
	  for(i in 1: dim(labels)[1]){
		  df$activities[df$activities == labels$V1[i] ] <- labels$V2[i]
	  }
	  df
	}`


##footnotes
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012
[2] Hadley Wickham, "Tidy Data", Journal of Statistical Software, Volumn VV, issue II