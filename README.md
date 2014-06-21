Getting and Cleaning Data - Class Project
=========================================

Course Project for Coursera's Getting and Cleaning Data class

The purpose of this project is to demonstrate the ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that
can be used for later analysis.

Project Deliverables:
	1) a tidy data set as described below,
	2) a link to a Github repository with your script for performing the analysis
	3) a code book, called CodeBook.md, that describes:
		the variables,
		the data,
		any transformations or work performed to clean up the data.

Background
==========

One of the most exciting areas in all of data science right now is wearable computing -
see for example this article:

http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project were obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The program that cleans the data is an R script called run_analysis.R that does the following:

 * Merges the training and the test sets to create one data set.
 * Extracts only the measurements on the mean and standard deviation for each measurement. 
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names. 
 * Creates a second, independent tidy data set with the average of each variable for each 
   activity and each subject. 
