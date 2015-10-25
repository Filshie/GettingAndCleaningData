## Getting and Cleaning Data: Course Project
The purpose of this project is to collect, work with, and clean a data set collected from wearable computing - specifically accelerometer data from the Samsung Galaxy S smartphone.

## Files
CodeBook.md describes the variables and any transformations work that was performed to clean up the data.

run_analysis.R is the R scipt containing all the code to download, merge and extract the required mean and standard deviation.
	Script does the following:
		- Download the dataset if it does not already exist in the working directory.
		- Bind subject, activity and features datasets by rows.
		- Set names to varibles.
		- Merge all the datasets together.
		- Rename variable names to make them more descriptive.
		- Creates a tidy dataset (tidy_data.txt) that consists of the mean and satandard deviation value of each subject and activity.