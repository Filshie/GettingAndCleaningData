##Getting and cleaning data course project
##--------------------------------------##
setwd("C:/Users/craigf/coursera/")
library(reshape2)
library(dplyr)

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
## Unzip the data to "UCI HAR Dataset" Dir if required
if (!file.exists("./data/UCI HAR Dataset")) { 
        unzip(zipname, exdir = "./data")
}

# Load the "train" datasets
train_X <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train_Y <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
train_subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
# merge all "train" datasets
C_train <- cbind(train_X, train_Y, train_subject)
str(C_train) ##data.frame':	7352 obs. of  563 variables:

# Load the "test" datasets
test_X <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test_Y <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
test_subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
# merge all "test" datasets
C_test <- cbind(test_X, test_Y, test_subject)
str(C_test) ##data.frame':	2947 obs. of  563 variables:

# merge "C_train" & "C_test" datasets
merged_Data <- rbind(C_train, C_test)
str(merged_Data) ##data.frame':	10299 obs. of  563 variables:
