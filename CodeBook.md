
#Project Code book

## Overview
 This code book describes the variables, the data, and all transformations performed to clean up the data for the Getting and Cleaning Data project
 
## Input data

The input data for the project can be downloaded from this location:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data represents sensor signals for different activity types for two group of volonteers (70% of the volunteers was selected for generating the training data and 30% the test data)
For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Output data
The output file is called tody_data.txt and was created by write.table() command using row.name=FALSE option
The file contains the average values for all mean and standard deviation for each measurement grouped by activity type and subject

## Variables

### Tables with source data
 - x_train from X_train.txt
 - y_train from y_train.txt
 - x_test from X_test.txt
 - y_test from y_test.txt"
 - subject_train from subject_train.txt
 - subject_test from subject_test.txt
 - features from features
 - activities from activity_labels.txt


### Merged data:

 - train_data   merged train data from x_train,subject_train,y_train
 - test_data    merged test data from x_test,subject_test,y_test
 - merged_data  all rows from train_data, test_data
 - subject data   merged from subject_train and subject_test
 - activity data  merged from y_train  y_test
 - merged_data_measurements subset of merged_data which contains only required measurements
 
### Main variables:

- measurements          vector of all required features
- new_data              measurements with additional columns: ActivityId, ActivityType and SubjectId
- final_data            aggregated measurments grouped by ActivityType and SubjectId

## Transformation performed

 * Merges the training and the test sets to create one data set
 * Extracts only the measurements on the mean and standard deviation for each measurement
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names. 
 * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

