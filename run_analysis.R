
## Load the necesary packages
library(plyr)
library(reshape2)


## Read in the raw data.

test.X <- read.table("UCI HAR Dataset/test/X_test.txt")
test.Y <- read.table("UCI HAR Dataset/test/y_test.txt")
test.Subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

train.X <- read.table("UCI HAR Dataset/train/X_train.txt")
train.Y <- read.table("UCI HAR Dataset/train/y_train.txt")
train.Subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")
names(features) <- c('rowId','label')

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activities) <- c('activityId','activityName')


## Merge the data sets.

test.Merged <- cbind(test.X,test.Y,test.Subject)
train.Merged <- cbind(train.X,train.Y,train.Subject)

# Merge the merged data sets for one complete set of all observations
allData.Merged <- rbind(test.Merged, train.Merged)

# Remove tables no longer in use to avoid confusion.
rm(test.X, test.Y, test.Subject, train.X, train.Y, train.Subject, test.Merged, train.Merged)


# Store the column labels
Column.Labels <- as.character(features$label)

# Find the mean and standard deviation labels
cNumsMeanAndStdDev <- grep("mean\\(|std\\(", Column.Labels)
cNamesMeanAndStdDev <- Column.Labels[grep("mean\\(|std\\(", Column.Labels)]

# The second to last and last columns have the activity and the subject that we want to keep
cNumsToKeep <- c(cNumsMeanAndStdDev, ncol(allData.Merged) - 1, ncol(allData.Merged))
cNamesToKeep <- c(cNamesMeanAndStdDev, "activityId","subjectId")


## Create subset of data and label data

data <- allData.Merged[,cNumsToKeep]
names(data) <- cNamesToKeep


## Merge Data and Activities

data <- merge(data,activities, by.x = "activityId", by.y = "activityId")

# Use the melt function to create one row per observations 
# This will create the columns 'subjectId','activityId','activityName','variable','value'
dataMelt <- melt(data,id=c('subjectId','activityId','activityName'))


# Created summarized tidy data
tidyData <- ddply(dataMelt, c('subjectId','activityId','activityName','variable'), summarise, mean = mean(value))
names(tidyData) <- c('subjectId', 'activityId','activityName','measurement', 'mean')


## Save tidy data to a text file.
write.table(tidyData, 'tidyData.txt', sep="\t", row.name=FALSE)
