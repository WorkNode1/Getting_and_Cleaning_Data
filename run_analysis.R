# Cleans data for the "Human Activity Recognition Using Smartphones" dataset found at:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# See CodeBook.md for a description of how this script processes the raw data
# into two more-tidy formats.
#

# 1. Merge the training and the test sets to create one data set.

x.train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x.test <- read.table("./UCI HAR Dataset/test/X_test.txt")
x.dataset <- rbind(x.train, x.test)

labels.train <- read.table("./UCI HAR Dataset/train/y_train.txt")
labels.test <- read.table("./UCI HAR Dataset/test/y_test.txt")
labels.dataset <- rbind(labels.train, labels.test)

subject.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject.dataset <- rbind(subject.train, subject.test)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.

features <- read.table("./UCI HAR Dataset/features.txt")
features.of.interest <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x.dataset <- x.dataset[, features.of.interest]
names(x.dataset) <- features[features.of.interest, 2]
names(x.dataset) <- gsub("\\(|\\)", "", names(x.dataset))
names(x.dataset) <- tolower(names(x.dataset))

# 3. Use descriptive activity names to name the activities in the data set

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities[, 2] <- gsub("_", "", tolower(as.character(activities[, 2])))
labels.dataset[,1] <- activities[labels.dataset[,1], 2]
names(labels.dataset) <- "activity"

# 4. Appropriately label the data set with descriptive activity names.

names(subject.dataset) <- "subject"
clean.data <- cbind(subject.dataset, labels.dataset, x.dataset)
write.table(clean.data, "tidy_data.txt")

# 5. Create a 2nd, independent tidy data set with the average of each variable for each activity and each subject.

unique.subjects <- unique(subject.dataset)[,1]
num.subjects <- length(unique(subject.dataset)[,1])
num.activities <- length(activities[,1])
cols <- dim(clean.data)[2]
sub.act.table <- clean.data[1:(num.subjects * num.activities), ]

row = 1
for (subject in 1:num.subjects) {
  for (activity in 1:num.activities) {
    sub.act.table[row, 1] <- unique.subjects[subject]
    sub.act.table[row, 2] <- activities[activity, 2]
    data.of.interest <- clean.data[clean.data$subject == subject & clean.data$activity == activities[activity, 2], ]
    sub.act.table[row, 3:cols] <- colMeans(data.of.interest[, 3:cols])
    row <- row + 1
  }
}
write.table(sub.act.table, "tidy_data_with_avgs.txt")
