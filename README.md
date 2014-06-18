TidyDataExercise
================

Script
------

This repository includes a R script 'run_analysis.R' which will take the UCI HAR test and training data sets and combine them, selecting a subset ofthe variables pertaining to means and standard deviations.

The script has a single argument (with default value) to define the archived (.zip) data set; if this file or the extracted directory do not exist it is downloaded and extracted if necessary. The script then reads the features and class labels files to enrich the test and training data sets which are combined. The set of useful features are extracted by regex matching; only features containing 'mean()' and 'std()' then remain. These features and their measurements are then extracted from the main data sets, resulting in a table with 66 columns/observations. The subjects and activities for each of the test/train data are then appended to each data set to add two further columns, with the activity labels replaced by their description e.g. '1' becomes "LAYING". Column titles are taken from the features. Finally, both data sets are combined.

Codebook
--------

The Codebook.md file describes a data set constructed from the output of the run_analysis.R script; the following steps were followed to create it -
* The 'melt' function from the reshape2 library is used to group the data set by distinct combinations of subject and activity.
* The 'dcast' function from the same library then performs an aggegration over the resulting data set; the mean value of each feature is calculated for each pair of subject and activity
* The resulting data frame consists of 180 rows (30 subjects and 6 activities) wwith a mean value for 66 variables (i.e. a total of 68 columns)
* The data set is written to file with the write.table function
