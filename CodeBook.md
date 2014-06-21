##Code Book

Raw data can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The attached R script (run_analysis.R) performs the following to clean up the data:

* Merges the training and test sets into a single data set
	* ./UCI HAR Dataset/train/X_train.txt is merged with ./UCI HAR Dataset/test/X_test.txt, yielding a table with 10299 rows x 561 columns
	* ./UCI HAR Dataset/train/subject_train.txt is merged with ./UCI HAR Dataset/test/subject_test.txt, yielding a table with 10299 rows x a single subject ID column.
	* .UCI HAR Dataset/train/y_train.txt with ./UCI HAR Dataset/test/y_test.txt, yielding a table with 10299 rows x single column containing activity IDs.

* Extracts the means and standard deviations from the file, features.txt, yielding a table with 10299 rows x 66 columns.

* Reads activity_labels.txt and applies one of the following 6 activity names to each row:
	* laying
	* sitting
	* standing
	* walking
	* walkingdownstairs
	* walkingupstairs

* Labels feature names (attributes) and activity names, which are converted to lower case, with special characters removed.

* Merges the features table with the tables containing activity labels and subject IDs, saving the result to tidy_data.txt, a table with 10299 and 68 columns.
	* Column 1 contains subject IDs (integers with values between 1-30)
	* Column 2 contains activity names (characters)
	* Columns 3-66 contain measurements of various attributes.

* Finally, the script creates another tidy dataset with 180 rows and 68 columns.  The rows contain the averages for each of 30 subjects for each of 6 possible activities.
	* Column 1 contains subject IDs (integers with values between 1-30)
	* Column 2 contains activity names (characters)
	* Columns 3-66 are averages of attribute measurements. 