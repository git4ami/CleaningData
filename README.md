# Getting and Cleaning Data Cource project

## Overview

The repo was created for the Coursera Getting and Cleaning Data cource project.
The project is about reading data collected from the accelerometers from the Samsung Galaxy S smartphones, cleaning the data and producing a new tidy data set (saved into a .txt file)

## Contents

This repo contains 3 files:

- README.md  short descriprion of the repo and transformation
- CodeBook.md detailed description of the variables, algorithms, input and output of the transformations performed in the project 
- run_analysis.R R script performing the analysis

## Transformation algorithm

### Merges the training and the test sets to create one data set

Set a home catalog and load data into tables
Merge all training data into one table called train_data
Merge all test data into one table called test_data 

Merge rows from training data set with rows from test data set in one table called merged_data

### Extracts only the measurements on the mean and standard deviation for each measurement

Read all features from file
Define measurments wich contain mean or std in their names
Subset merged_data to extract only requested measurments

### Uses descriptive activity names to name the activities in the data set

Read activitiy names from file 

Merge train and test subjects into one dataset
Merge all activities into one dataset
Assign names for columns

Merge activities and subjects with main data set
Performe a join between main data set and activities by ActivityId and V1 column


### Appropriately labels the data set with descriptive variable names. 
Assign name for Activity type description column


### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Use aggregate function to group mean values of all columns exept ActivityId, ActivityType and Sublectid
Write the result into file


