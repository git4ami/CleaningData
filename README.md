# Getting and Cleaning Data Cource project

## Overview

The repo was created for the Coursera Getting and Cleaning Data cource project.
The project is about reading data collected from the accelerometers from the Samsung Galaxy S smartphones, cleaning the data and producing a new tidy data set (saved into a .txt file)

## Contents

This repo contains 3 files:

- README.md  short descriprion of the repo and description of the algorithms, input and output of the transformations performed in the project
- CodeBook.md detailed description of the variables used in the project  
- run_analysis.R R script performing the analysis

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
The output file is called !!!!.txt and was created by write.table() command using row.name=FALSE option
The file contains the average values for all mean and standard deviation for each measurement grouped by activity type and subject

## Transformation algorithm
