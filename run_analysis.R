####################################################################################################################
# Coursera Getting and Cleaning Data Course

# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# script assumes working directory is root of extracted folder

###################################################################################################################

# library
library(dplyr)

# read in the data from files

# labels / support
features      <- read.table('features.txt', header=FALSE)
activity_type <- read.table('activity_labels.txt', header=FALSE)

# train
subject_train <- read.table('train/subject_train.txt',header=FALSE)
x_train       <- read.table('train/X_train.txt', header=FALSE)
y_train       <- read.table('train/y_train.txt', header=FALSE)

# test
subject_test  <- read.table('test/subject_test.txt', header=FALSE)
x_test        <- read.table('test/X_test.txt', header=FALSE)
y_test        <- read.table('test/y_test.txt', header=FALSE)

# assigin column names to the data

colnames(activity_type) <- c('activity_id', 'activity_type')

colnames(subject_train)  <- "subject_id"
colnames(x_train)        <- features[,2]
colnames(y_train)        <- "activity_id"

colnames(subject_test) <- "subject_id"
colnames(x_test)       <- features[,2]
colnames(y_test)       <- "activity_id"

# create final train and test data
training_data <- cbind(y_train,subject_train,x_train)
test_data <- cbind(y_test,subject_test,x_test)

# create final data by combining train and test data
data <- rbind(training_data,test_data)

# to table
data <- tbl_df(data)

# assigning appropriate variable names
names(data)<-gsub("std\\(\\)", "std", names(data))
names(data)<-gsub("mean\\(\\)", "mean", names(data))
names(data)<-gsub("^t", "time_", names(data))
names(data)<-gsub("^f", "frequency_", names(data))
names(data)<-gsub("Acc", "accelerometer_", names(data))
names(data)<-gsub("Gyro", "gyroscope_", names(data))
names(data)<-gsub("Mag", "magnitude_", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))
names(data)<-gsub("Body", "body_", names(data))
names(data)<-gsub("Jerk", "jerk_", names(data))
names(data)<-gsub("Gravity", "gravity_", names(data))
names(data)<-gsub("_-", "-", names(data))
names(data)<-gsub("\\(\\)", "", names(data))
names(data)<-gsub("meanFreq", "mean_frequency", names(data))

# Create a vector for the column names from the finalData, which will be used
# to select the desired mean and std columns

col_names <- grepl("activity|subject..|.*mean.*|.*std.*", colnames(data))
data_means <- data[col_names]

# creating separate dataset with average of each variable for each activity and each subject
final_data <- aggregate(.~subject_id - activity_id, data = data_means, mean)

# merging activity names with final tidy data
final_data <- merge(final_data, activity_type, by="activity_id", all.x=TRUE)

# export the tidy data set
write.table(final_data, "data.txt", row.names = FALSE)
