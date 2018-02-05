
##############################
### Step 1: Getting Data
##############################
zipFileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

## download zipfile
if(! file.exists(zipFile)) {
    download.file(zipFileUrl, zipFile, mode="wb")
}

## unzip zip file
if(! file.exists("UCI HAR Dataset")) {
    unzip(zipFile)
}


##############################
### Step 2: Importing Data
##############################
setwd("./UCI HAR Dataset")

### column name
features        <- as.character(read.table("./features.txt")[, 2])
activities      <- read.table("./activity_labels.txt")

### Training
train_subject   <- read.table("./train/subject_train.txt")
train_activity  <- read.table("./train/y_train.txt")
train_set       <- read.table("./train/X_train.txt")

### Test
test_subject    <- read.table("./test/subject_test.txt")
test_activity   <- read.table("./test/y_test.txt")
test_set        <- read.table("./test/X_test.txt")


##############################
### Step 3: Cleaning Data
##############################

### 1. Merges the training and the test sets to create one data set.
train   <- cbind(train_subject, train_activity, train_set)
test    <- cbind(test_subject, test_activity, test_set)
Dataset <- as.data.frame(rbind(train, test))

names(Dataset) <- c("subject", "activity", features)

### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
keep <- grep("subject|activity|mean|std", names(Dataset))

Dataset <- Dataset[, keep]

### 3. Uses descriptive activity names to name the activities in the data set
Dataset$activity <- factor(Dataset$activity, levels=activities[, 1], labels=activities[, 2])


### 4. Appropriately labels the data set with descriptive variable names.
colnames <- colnames(Dataset)

colnames <- gsub("-", "_", colnames)
colnames <- gsub("[\\(\\)-]", "", colnames)

colnames <- gsub("^f", "freq_Domain_", colnames)
colnames <- gsub("^t", "time_Domain_", colnames)

colnames <- gsub("Acc", "_Accelerometer", colnames)
colnames <- gsub("Gyro", "_Gyroscope", colnames)
colnames <- gsub("Jerk", "_Jerk", colnames)
colnames <- gsub("Mag", "_Magnitude", colnames)
colnames <- gsub("Freq", "_Frequency", colnames)
colnames <- gsub("BodyBody", "Body", colnames)

names(Dataset) <- colnames

### 5. From the data set in last step, creates a second, independent tidy data set 
### with the average of each variable for each activity and each subject.

library(reshape2)
datasetMelt <- melt(Dataset, id = c("subject", "activity"))
tidyDataset <- dcast(datasetMelt, subject + activity ~ variable, mean)

write.table(tidyDataset, "Tidy Dataset.txt", row.names=FALSE, quote=FALSE)
