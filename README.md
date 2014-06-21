##**Getting and Cleaning Data - Course Project**

This repository contains files related to the course project for Coursera's Getting and Cleaning Data class.

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare two tidy datasets that can be used for later analysis.

##Project Deliverables:<br>
* a tidy data set as described below,<br>
* a link to a Github repository with the script (run_analysis.R) for performing the analysis<br>
* a code book, called CodeBook.md, that describes:<br>
	* the variables,<br>
	* the data,<br>
	* any transformations or work performed to clean up the data.<br>

###Background

One of the most exciting areas in all of data science right now is wearable computing -
see for example this article:

http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to from the course website represent
data collected from the accelerometers from the Samsung Galaxy S smartphone. A full
description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project were obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

An R script, **run_analysis.R**, performs the following actions:

 * Merges the training and the test sets to create one data set
 * Removes special characters from the raw data
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names
 * Creates a second, tidy data set with the average of each subject's activity measurements 
