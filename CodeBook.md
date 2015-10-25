---
title: "Getting and Cleaning Data Course Project"
author: "Filshie"
date: "25/10/2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
The purpose of this project is to collect, work with, and clean a data set collected from wearable computing - specifically accelerometer data from the Samsung Galaxy S smartphone. 

###Collection of the raw data
A zip file of the data downdoaded from the UCI Machine Learning Repository.
Link to UCI website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Direct link to data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Creating the tidy datafile
 - Download the dataset if it does not already exist in the working directory.
 - Bind subject, activity and features datasets by rows
 - Set names to varibles
 - Merge all the datasets together.
 - Rename variable names to make them more descriptive.
 - Creates a tidy dataset that consists of the mean value of each variable for each subject and activity.

##Description of the variables in the tiny_data.txt file
tidy data set variable names listed.

some prefixes and abbrevations renamed to be more readable:
"^t"  to "time"
"^f" to "frequency"
"Acc" to "Accelerometer"
"BodyBody" to "Body"
"Gyro" to "Gyroscope"
"Mag" to "Magnitude"

	tidy_data.txt - data.frame':	180 obs. of  68 variables:
		"subject" "activity" 
		"timeBodyAccelerometer-mean()-X" 
		"timeBodyAccelerometer-mean()-Y" 
		"timeBodyAccelerometer-mean()-Z" 
		"timeBodyAccelerometer-std()-X" 
		"timeBodyAccelerometer-std()-Y" 
		"timeBodyAccelerometer-std()-Z" 
		"timeGravityAccelerometer-mean()-X" 
		"timeGravityAccelerometer-mean()-Y" 
		"timeGravityAccelerometer-mean()-Z" 
		"timeGravityAccelerometer-std()-X" 
		"timeGravityAccelerometer-std()-Y" 
		"timeGravityAccelerometer-std()-Z" 
		"timeBodyAccelerometerJerk-mean()-X" 
		"timeBodyAccelerometerJerk-mean()-Y" 
		"timeBodyAccelerometerJerk-mean()-Z" 
		"timeBodyAccelerometerJerk-std()-X" 
		"timeBodyAccelerometerJerk-std()-Y" 
		"timeBodyAccelerometerJerk-std()-Z" 
		"timeBodyGyroscope-mean()-X" 
		"timeBodyGyroscope-mean()-Y" 
		"timeBodyGyroscope-mean()-Z" 
		"timeBodyGyroscope-std()-X" 
		"timeBodyGyroscope-std()-Y" 
		"timeBodyGyroscope-std()-Z" 
		"timeBodyGyroscopeJerk-mean()-X" 
		"timeBodyGyroscopeJerk-mean()-Y" 
		"timeBodyGyroscopeJerk-mean()-Z" 
		"timeBodyGyroscopeJerk-std()-X" 
		"timeBodyGyroscopeJerk-std()-Y" 
		"timeBodyGyroscopeJerk-std()-Z" 
		"timeBodyAccelerometerMagnitude-mean()" 
		"timeBodyAccelerometerMagnitude-std()" 
		"timeGravityAccelerometerMagnitude-mean()" 
		"timeGravityAccelerometerMagnitude-std()" 
		"timeBodyAccelerometerJerkMagnitude-mean()" 
		"timeBodyAccelerometerJerkMagnitude-std()" 
		"timeBodyGyroscopeMagnitude-mean()" 
		"timeBodyGyroscopeMagnitude-std()" 
		"timeBodyGyroscopeJerkMagnitude-mean()" 
		"timeBodyGyroscopeJerkMagnitude-std()" 
		"frequencyBodyAccelerometer-mean()-X" 
		"frequencyBodyAccelerometer-mean()-Y" 
		"frequencyBodyAccelerometer-mean()-Z" 
		"frequencyBodyAccelerometer-std()-X" 
		"frequencyBodyAccelerometer-std()-Y" 
		"frequencyBodyAccelerometer-std()-Z" 
		"frequencyBodyAccelerometerJerk-mean()-X" 
		"frequencyBodyAccelerometerJerk-mean()-Y" 
		"frequencyBodyAccelerometerJerk-mean()-Z" 
		"frequencyBodyAccelerometerJerk-std()-X" 
		"frequencyBodyAccelerometerJerk-std()-Y" 
		"frequencyBodyAccelerometerJerk-std()-Z" 
		"frequencyBodyGyroscope-mean()-X" 
		"frequencyBodyGyroscope-mean()-Y" 
		"frequencyBodyGyroscope-mean()-Z" 
		"frequencyBodyGyroscope-std()-X" 
		"frequencyBodyGyroscope-std()-Y" 
		"frequencyBodyGyroscope-std()-Z" 
		"frequencyBodyAccelerometerMagnitude-mean()" 
		"frequencyBodyAccelerometerMagnitude-std()" 
		"frequencyBodyAccelerometerJerkMagnitude-mean()" 
		"frequencyBodyAccelerometerJerkMagnitude-std()" 
		"frequencyBodyGyroscopeMagnitude-mean()" 
		"frequencyBodyGyroscopeMagnitude-std()" 
		"frequencyBodyGyroscopeJerkMagnitude-mean()" 
		"frequencyBodyGyroscopeJerkMagnitude-std()"

	Activity Labels
		1 - WALKING: subject was walking during the test
		2 - WALKING_UPSTAIRS: subject was walking up a staircase during the test
		3 - WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
		4 - SITTING: subject was sitting during the test
		5 - STANDING: subject was standing during the test
		6 - LAYING: subject was laying down during the test

##Sources
Link to UCI website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
