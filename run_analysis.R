wd <- "/Users/timto/Documents/0-cleaning-data/"
library(reshape2)
test.x <- read.table("UCI_HAR_Dataset/test/X_test.txt")
test.y <- read.table("UCI_HAR_Dataset/test/Y_test.txt")
test.subject <- read.table("UCI_HAR_Dataset/test/subject_test.txt")

train.x <- read.table("UCI_HAR_Dataset/train/X_train.txt")
train.y <- read.table("UCI_HAR_Dataset/train/Y_train.txt")
train.subject <- read.table("UCI_HAR_Dataset/train/subject_train.txt")

test <- cbind(test.subject, test.y,test.x)
train <- cbind(train.subject, train.y,train.x)
joined <- rbind(test,train)

features <- read.table("UCI_HAR_Dataset/features.txt", stringsAsFactors=F)[,2]

#replace variable names with meaningful ones from features.txt
names(joined)<-c("subjects", "activities", features)

# remove non mean and standard deviation related columns 
x <- joined[, grep("subjects|activities|*mean*|*std*", colnames(joined))]

# re-organize variables accoring to the subject and activities
x1 <-melt(x,id=c("subjects", "activities"))

# caculate the average values for each subject and each activities as stated in the 
# course project
x2 <-dcast(x1, subjects + activities ~ variable, mean)

# label the activities with meaningful names.
activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors=F)
final <- pasteActivityLabels(x2, activity_labels)
write.table(final, "final_fitbit.txt", row.names = FALSE)

#use this command to read it : read.table("final_fitbit.txt", header = TRUE)

# This function takes the input data frame and replace the label id with the given label
# names.
pasteActivityLabels <- function(df, labels){
  for(i in 1: dim(labels)[1]){
      df$activities[df$activities == labels$V1[i] ] <- labels$V2[i]
  }
  df
}
