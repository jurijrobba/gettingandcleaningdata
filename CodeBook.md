# Code book

## Proces

**Before running script, working directory must be set to root of extracted zip file!**

Data can be found on [link text](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
More information can be found on [link text](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Script reads files, changes names so that they are all lower case, seperated with underscores and selects only columns with "std" and "mean". Finaly data is written into file called data.txt.


## Final data set

Final dataset has following clumns:

* "activity_id" - ID of activity (levels 1 - 6)
* "subject_id" - id of subject (levels 1 - 30)
* "time_body_accelerometer-mean-X" - from data
* "time_body_accelerometer-mean-Y" - from data
* "time_body_accelerometer-mean-Z" - from data
* "time_body_accelerometer-std-X" - from data
* "time_body_accelerometer-std-Y" - from data
* "time_body_accelerometer-std-Z" - from data
* "time_gravity_accelerometer-mean-X" - from data
* "time_gravity_accelerometer-mean-Y" - from data
* "time_gravity_accelerometer-mean-Z" - from data
* "time_gravity_accelerometer-std-X" - from data
* "time_gravity_accelerometer-std-Y" - from data
* "time_gravity_accelerometer-std-Z" - from data
* "time_body_accelerometer_jerk-mean-X" - from data
* "time_body_accelerometer_jerk-mean-Y" - from data
* "time_body_accelerometer_jerk-mean-Z" - from data
* "time_body_accelerometer_jerk-std-X" - from data
* "time_body_accelerometer_jerk-std-Y" - from data
* "time_body_accelerometer_jerk-std-Z" - from data
* "time_body_gyroscope-mean-X" - from data
* "time_body_gyroscope-mean-Y" - from data
* "time_body_gyroscope-mean-Z" - from data
* "time_body_gyroscope-std-X" - from data
* "time_body_gyroscope-std-Y" - from data
* "time_body_gyroscope-std-Z" - from data
* "time_body_gyroscope_jerk-mean-X" - from data
* "time_body_gyroscope_jerk-mean-Y" - from data
* "time_body_gyroscope_jerk-mean-Z" - from data
* "time_body_gyroscope_jerk-std-X" - from data
* "time_body_gyroscope_jerk-std-Y" - from data
* "time_body_gyroscope_jerk-std-Z" - from data
* "time_body_accelerometer_magnitude-mean" - from data
* "time_body_accelerometer_magnitude-std" - from data
* "time_gravity_accelerometer_magnitude-mean" - from data
* "time_gravity_accelerometer_magnitude-std" - from data
* "time_body_accelerometer_jerk_magnitude-mean" - from data
* "time_body_accelerometer_jerk_magnitude-std" - from data
* "time_body_gyroscope_magnitude-mean" - from data
* "time_body_gyroscope_magnitude-std" - from data
* "time_body_gyroscope_jerk_magnitude-mean" - from data
* "time_body_gyroscope_jerk_magnitude-std" - from data
* "frequency_body_accelerometer-mean-X" - from data
* "frequency_body_accelerometer-mean-Y" - from data
* "frequency_body_accelerometer-mean-Z" - from data
* "frequency_body_accelerometer-std-X" - from data
* "frequency_body_accelerometer-std-Y" - from data
* "frequency_body_accelerometer-std-Z" - from data
* "frequency_body_accelerometer-mean_frequency" - from dataX"
* "frequency_body_accelerometer-mean_frequency" - from dataY"
* "frequency_body_accelerometer-mean_frequency" - from dataZ"
* "frequency_body_accelerometer_jerk-mean-X" - from data
* "frequency_body_accelerometer_jerk-mean-Y" - from data
* "frequency_body_accelerometer_jerk-mean-Z" - from data
* "frequency_body_accelerometer_jerk-std-X" - from data
* "frequency_body_accelerometer_jerk-std-Y" - from data
* "frequency_body_accelerometer_jerk-std-Z" - from data
* "frequency_body_accelerometer_jerk-mean_frequency-X" - from data
* "frequency_body_accelerometer_jerk-mean_frequency-Y" - from data
* "frequency_body_accelerometer_jerk-mean_frequency-Z" - from data
* "frequency_body_gyroscope-mean-X" - from data
* "frequency_body_gyroscope-mean-Y" - from data
* "frequency_body_gyroscope-mean-Z" - from data
* "frequency_body_gyroscope-std-X" - from data
* "frequency_body_gyroscope-std-Y" - from data
* "frequency_body_gyroscope-std-Z" - from data
* "frequency_body_gyroscope-mean_frequency-X" - from data
* "frequency_body_gyroscope-mean_frequency-Y" - from data
* "frequency_body_gyroscope-mean_frequency-Z" - from data
* "frequency_body_accelerometer_magnitude-mean" - from data
* "frequency_body_accelerometer_magnitude-std" - from data
* "frequency_body_accelerometer_magnitude-mean_frequency" - from data
* "frequency_body_accelerometer_jerk_magnitude-mean" - from data
* "frequency_body_accelerometer_jerk_magnitude-std" - from data
* "frequency_body_accelerometer_jerk_magnitude-mean_frequency" - from data
* "frequency_body_gyroscope_magnitude-mean" - from data
* "frequency_body_gyroscope_magnitude-std" - from data
* "frequency_body_gyroscope_magnitude-mean_frequency" - from data
* "frequency_body_gyroscope_jerk_magnitude-mean" - from data
* "frequency_body_gyroscope_jerk_magnitude-std" - from data
* "frequency_body_gyroscope_jerk_magnitude-mean_frequency" - from data
* "activity_type" - activity with word (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
