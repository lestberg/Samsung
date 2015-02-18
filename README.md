---
title: "readme"
output: html_document
---

## Introduction
The goal of this course assignment is to produce a tidy data set summarizing inertial motion measurements made on a group of volunteers that performed various activities while carrying a smartphone with embedded accelerometers and gyroscopes.

## Metrics of interest
The metrics of interest include both the average and standard deviation of the inertial motion measurements for each activity performed by each volunteer. These metrics are used to summarize the set of measurements provided over the course of multiple sliding time windows collected during each activity.

## Tidy data set
The tidy data set delivered is centered on providing a "wide" view of the summary metrics for each unit of observation.  In this case the unit of observation is each activity (6 total) performed by each volunteer study subject (30 total).  The data set designed for this assignment would be considered a wide tidy data set, as the set of summary metrics are provided on the same row (180 total rows = 6 x 30) for each unique activity-subject combination (unit of observation).  Each variable summarized is provided in separate columns (e.g. the mean of the time-domain based body acceleration across all axes, XYZ).  There were 33 total inertial motion measurement variables to be summarized, for which a total of 66 columns of summary metrics were provided (33 means + 33 standard deviations).  With the addition of subject and activity columns, the dimensions for this data set are 180 rows by 68 columns.  Additionally for this assignment, only a single table was needed to represent summary variables on study subject motion.  If there had been information related to the environment where the activities were performed, laboratory facilities for example, a separate table would have been used to store these separate types of observations.
(Tidy Data reference: https://class.coursera.org/getdata-011/forum/thread?thread_id=248 )

### mean and standard deviation measurements extracted
To meet the goal of the class exercise, it was decided to extract the mean and standard deviations of 'feature vector variables' for signals derived from each sliding window.  All of the mean and standard deviations extracted were labeled with an empty parentheses (i.e. mean() and std()).  This extracted set did not include the variables derived as averages across the windows (e.g. meanFreq(), gravityMean, timeBodyGyroMean) as these types of means were estimated with a different approach and were not paired with standard deviation estimates.

### descriptive names used to label measurement variables 
There is a code book available that provides the variable names and descriptions.  The original variable names were relabeled to provide more descriptive column labeling and remove characters considered invalid by the R Programming language.  The underscore ('_') and smooth parentheses ('()') characters were deleted and the words were separated by capitalization (camelCase).

### data set produced
An R script named 'run_analysis.R' is provided.  This script assumes that the raw data set is available from the working directory as stored in an unzipped 'UCI HAR Dataset' folder and that the dplyr packaged has been loaded.  The script merges the raw data sets.  As the study subjects were split into training and test data set groups, these data sets were merged and integrated to bring together the subject, activity and inertial metric data.  The data were processed to rename the activity codes with meaningful names, extract the means and standard deviation measurement variables of interest, and rename the measurement variables as described above.  As the raw data 'unit of observation' was sliding-window measurements for each activity performed by each subject, the data was summarized by averaging the sliding-window mean and standard deviation measurements across each activity performed by each subject.  These metrics were used to summarize the set of measurements provided over the course of multiple sliding time windows collected during each activity and collected in the space-delimited text file output from the script ("UCIHARsummarized.txt").  This output data set includes a header row, lacks row labels, and includes subject and activity identifying information.

### access the data set
The following code may be useful for loading and viewing the the data set (reference source: https://class.coursera.org/getdata-011/forum/thread?thread_id=248).
 
address <- "https://s3.amazonaws.com/coursera-uploads/user-b44c13406aa64c26bf427e7c/973498/asst-3/0d5cd7c0b7a611e4aa4993efcab45140.txt"

address <- sub("^https", "http", address)

data <- read.table(url(address), header = TRUE)

View(data)



If the above code does not work, you may download the data set to your working directory and try the following code.

data <- read.table("UCIHARsummarized.txt", header = TRUE)

View(data)


