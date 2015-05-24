##setwd('/home/ami/R/Projects/Fitbit/')
library(plyr)

## Merges the training and the test sets to create one data set

x_train <- read.table("Data/train/X_train.txt")
y_train <- read.table("Data/train/y_train.txt")

x_test <- read.table("Data/test/X_test.txt")
y_test <- read.table("Data/test/y_test.txt")

subject_train <- read.table("Data/train/subject_train.txt")
subject_test <- read.table("Data/test/subject_test.txt")

train_data <- cbind(x_train,subject_train,y_train)
test_data <- cbind(x_test,subject_test,y_test)

merged_data <- rbind(train_data, test_data)

## Extracts only the measurements on the mean and standard deviation for each measurement

features <- read.table("Data/features.txt")

measurements <- grep("-(mean|std)\\(\\)", features[, 2])

merged_data_measurements <- merged_data[measurements]

## Uses descriptive activity names to name the activities in the data set

activities <- read.table("Data/activity_labels.txt")

subject <- rbind(subject_train, subject_test)
activity <- rbind(y_train, y_test)

colnames(subject) <- "SubjectId"
colnames(activity) <- "ActivityId"
colnames(merged_data_measurements) <- features[measurements,2]

new_data <-cbind(merged_data_measurements,subject,activity) 

new_data = merge(x=new_data,y=activities,by.x='ActivityId', by.y="V1")

## Appropriately labels the data set with descriptive variable names. 

colnames(new_data)[ncol(new_data)] <- "ActivityType"

## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  final_data= aggregate(new_data[,names(new_data) != c('ActivityId','SubjectId','ActivityType')],by=list(ActivityType= new_data$ActivityType,SubjectID = new_data$SubjectId),mean)

 write.table(final_data, "tidy_data.txt", row.name=FALSE)
