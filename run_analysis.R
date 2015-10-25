##Getting and cleaning data course project
##--------------------------------------##

library(reshape2)
library(dplyr)
library(data.table)
library(plyr)
library(knitr)

zipname <- "./data/getdata_dataset.zip"

##Create "Data" Dir if required
if(!file.exists("./data")){
        dir.create("./data")
}
## Download the dataset if required
if (!file.exists(zipname)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, zipname)
}
## Unzip the data to "UCI HAR Dataset" if required
if (!file.exists("./data/UCI HAR Dataset")) { 
        unzip(zipname, exdir = "./data")
}

## Read the "train" datasets
train_X <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train_Y <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
train_subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
## Read the "test" datasets
test_X <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test_Y <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
test_subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

##Merge datasets by rows
subject_data <- rbind(train_subject, test_subject)
activity_data <- rbind(train_Y, test_Y)
features_data <- rbind(train_X, test_X)

##Set names to varibles
names(subject_data) <- c("subject")
names(activity_data) <- c("activity")
features_data_Names <- read.table("./data/UCI HAR Dataset/features.txt" ,head=FALSE)
names(features_data) <- features_data_Names$V2

##Merge all data
dataCombine <- cbind(subject_data, activity_data)
alldata <- cbind(features_data, dataCombine)

##subset data mean() or std()
subdataFeaturesNames<-features_data_Names$V2[grep("mean\\(\\)|std\\(\\)", features_data_Names$V2)]

#Subset the data frame Data by seleted names of Features
selected_names <- c(as.character(subdataFeaturesNames), "subject", "activity" )
alldata <- subset(alldata, select=selected_names)
##str(alldata) ##data.frame':	10299 obs. of  68 variables:

##Read descriptive activity names
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)

##make variable names more descriptive
names(alldata) <- gsub("^t", "time", names(alldata))
names(alldata) <- gsub("^f", "frequency", names(alldata))
names(alldata) <- gsub("Acc", "Accelerometer", names(alldata))
names(alldata) <- gsub("BodyBody", "Body", names(alldata))
names(alldata) <- gsub("Gyro", "Gyroscope", names(alldata))
names(alldata) <- gsub("Mag", "Magnitude", names(alldata))
##names(alldata) ##List all names

##Create the tidy.txt with independent tidy data set with the average of each variable
tidy_data <- aggregate(. ~subject + activity, alldata, mean)
tidy_data <- tidy_data[order(tidy_data$subject,tidy_data$activity),]
write.table(tidy_data, "./data/tidydata.txt", row.name=FALSE)
str(tidy_data) ##data.frame':	180 obs. of  68 variables:

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.