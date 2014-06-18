Tidy Data Project Code Book
===========================

Data Preparation
----------------
The following steps were followed to create this data from the output of the run_analysis.R script -
* The 'melt' function from the reshape2 library is used to group the data set by distinct combinations of subject and activity.
* The 'dcast' function from the same library then performs an aggegration over the resulting data set; the mean value of each feature is calculated for each pair of subject and activity
* The resulting data frame consists of 180 rows (30 subjects and 6 activities) with a mean value for 66 variables (i.e. a total of 68 columns)
* The data set is written to file with the write.table function

Subject
-------
Anonymous label denoting an individual subject

Activity
--------
Descriptive label denoting the activity performed by the subject, against which each variable has 
been measured

Variables
---------
Mean values calculated for each combination of subject and activity. X, Y and Z denote the geometric axis of 
measurement. In general, these variables represent signals from onboard gyroscopes and accelerometers.  For 
a more detailed description of each variable, please see features_info.txt in the data folder.  Units for each 
measurement are dimensionless as they are scaled.

- mean tBodyAcc-mean-X
- mean tBodyAcc-mean-Y
- mean tBodyAcc-mean-Z
- mean tBodyAcc-std-X
- mean tBodyAcc-std-Y
- mean tBodyAcc-std-Z
- mean tGravityAcc-mean-X
- mean tGravityAcc-mean-Y
- mean tGravityAcc-mean-Z
- mean tGravityAcc-std-X
- mean tGravityAcc-std-Y
- mean tGravityAcc-std-Z
- mean tBodyAccJerk-mean-X
- mean tBodyAccJerk-mean-Y
- mean tBodyAccJerk-mean-Z
- mean tBodyAccJerk-std-X
- mean tBodyAccJerk-std-Y
- mean tBodyAccJerk-std-Z
- mean tBodyGyro-mean-X
- mean tBodyGyro-mean-Y
- mean tBodyGyro-mean-Z
- mean tBodyGyro-std-X
- mean tBodyGyro-std-Y
- mean tBodyGyro-std-Z
- mean tBodyGyroJerk-mean-X
- mean tBodyGyroJerk-mean-Y
- mean tBodyGyroJerk-mean-Z
- mean tBodyGyroJerk-std-X
- mean tBodyGyroJerk-std-Y
- mean tBodyGyroJerk-std-Z
- mean tBodyAccMag-mean
- mean tBodyAccMag-std
- mean tGravityAccMag-mean
- mean tGravityAccMag-std
- mean tBodyAccJerkMag-mean
- mean tBodyAccJerkMag-std
- mean tBodyGyroMag-mean
- mean tBodyGyroMag-std
- mean tBodyGyroJerkMag-mean
- mean tBodyGyroJerkMag-std
- mean fBodyAcc-mean-X
- mean fBodyAcc-mean-Y
- mean fBodyAcc-mean-Z
- mean fBodyAcc-std-X
- mean fBodyAcc-std-Y
- mean fBodyAcc-std-Z
- mean fBodyAccJerk-mean-X
- mean fBodyAccJerk-mean-Y
- mean fBodyAccJerk-mean-Z
- mean fBodyAccJerk-std-X
- mean fBodyAccJerk-std-Y
- mean fBodyAccJerk-std-Z
- mean fBodyGyro-mean-X
- mean fBodyGyro-mean-Y
- mean fBodyGyro-mean-Z
- mean fBodyGyro-std-X
- mean fBodyGyro-std-Y
- mean fBodyGyro-std-Z
- mean fBodyAccMag-mean
- mean fBodyAccMag-std
- mean fBodyBodyAccJerkMag-mean
- mean fBodyBodyAccJerkMag-std
- mean fBodyBodyGyroMag-mean
- mean fBodyBodyGyroMag-std
- mean fBodyBodyGyroJerkMag-mean
- mean fBodyBodyGyroJerkMag-std
