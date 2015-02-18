# This function reads in the Samsung raw data sets unzipped in your working
# directory and returns a single tidy set of summary metrics for each
# activity performed by the study subjects 

run_analysis <- function() {
        # read in the `train` and `test` data sets that include the metrics
        trainDS <- read.table("./UCI HAR Dataset/train/X_train.txt")
        testDS <- read.table("./UCI HAR Dataset/test/X_test.txt")
        
        # combine the `train` and `test` metric dataset rows (train first!)
        metricDS <- rbind(trainDS, testDS)
        
        # add the variable names for each inertial motion metric
        varNamesDS <- read.table("./UCI HAR Dataset/features.txt")
        colnames(metricDS) <- as.character(varNamesDS$V2)
        
        # clean up the variable names so they are closer to valid 
        #      and remove variables that are not of interest
        ## replace '-' with '_' in the variable names
        names(metricDS) <- gsub("-", "_", names(metricDS))
        ## remove columns with duplicate variable names
        metricDS <- metricDS[ , !duplicated(colnames(metricDS))]
        ## remove the last 7 'angle' variables that are not of interest
        metricDS <- select(metricDS, -(471:477))
        
        # select only the mean() and std() intertial motion metrics
        mMetricDS <- select(metricDS, contains("mean()"))
        sMetricDS <- select(metricDS, contains("std()"))
        metricDS <- cbind(mMetricDS, sMetricDS)
        
        # replace '()' with '_' in the variable names 
        names(metricDS) <- gsub('[:():]', "_", names(metricDS))
        
        # rename variable names with descriptive names
        colnames(metricDS) <- gsub("tBody", "timeBody", colnames(metricDS))
        colnames(metricDS) <- gsub("tGravity", "timeGravity", colnames(metricDS))
        colnames(metricDS) <- gsub("fBody", "freqBody", colnames(metricDS))
        colnames(metricDS) <- gsub("_mean___X", "XMean", colnames(metricDS))
        colnames(metricDS) <- gsub("_mean___Y", "YMean", colnames(metricDS))
        colnames(metricDS) <- gsub("_mean___Z", "ZMean", colnames(metricDS))
        colnames(metricDS) <- gsub("_mean__", "Mean", colnames(metricDS))
        colnames(metricDS) <- gsub("_std___X", "XStd", colnames(metricDS))
        colnames(metricDS) <- gsub("_std___Y", "YStd", colnames(metricDS))
        colnames(metricDS) <- gsub("_std___Z", "ZStd", colnames(metricDS))
        colnames(metricDS) <- gsub("_std__", "Std", colnames(metricDS))
        
        # bring in and combine the subject and activity information
        #     making sure to keep the 'train' related information at 
        #     the top of the combined row data set
        ## subjects
        trainSubDS <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        testSubDS <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        subjectDS <- rbind(trainSubDS, testSubDS)
        colnames(subjectDS) <- "subject"
        ## activities
        trainActDS <- read.table("./UCI HAR Dataset/train/y_train.txt")
        testActDS <- read.table("./UCI HAR Dataset/test/y_test.txt")
        activityDS <- rbind(trainActDS, testActDS)
        colnames(activityDS) <- "activity"
        ## combine subjects and activities with intertial metrics
        DS <- cbind(subjectDS, activityDS, metricDS)
        DS$subject <- factor(DS$subject)
        DS$activity <- factor(DS$activity)
        
        # provide descriptive activity names
        levels(DS$activity)[levels(DS$activity)=="1"] <- "Walking"
        levels(DS$activity)[levels(DS$activity)=="2"] <- "Walking_Upstairs"
        levels(DS$activity)[levels(DS$activity)=="3"] <- "Walking_Downstairs"
        levels(DS$activity)[levels(DS$activity)=="4"] <- "Sitting"
        levels(DS$activity)[levels(DS$activity)=="5"] <- "Standing"
        levels(DS$activity)[levels(DS$activity)=="6"] <- "Laying"
        
        # summarize the metrics as averages for each activity
        #    performed by each subject
        sDS <- DS %>% group_by(subject, activity) %>% summarise_each(funs(mean))
        
        # save the summarized dataset as a file
        write.table(sDS, "UCIHARsummarized.txt", row.name = FALSE)
}
