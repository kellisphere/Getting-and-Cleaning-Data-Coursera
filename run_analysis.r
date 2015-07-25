## Create run_analysis.R script which accomplishes the following:
## 1.Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(plyr)

## Step 1 - Merges the training and the test sets to create one data set.

## download the file and put in data folder
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

## unzip the file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## list files
refpath <- file.path("./data","UCI HAR Dataset")
files<- list.files(refpath, recursive=TRUE)
files

## identify files needed with Activity, Subject, Features
## read y files (activity)
y_test <- read.table(file.path(refpath, "test", "y_test.txt"), header=FALSE)
y_train  <- read.table(file.path(refpath, "train", "y_train.txt"), header=FALSE)

## read subject files
subject_test <- read.table(file.path(refpath,"test", "subject_test.txt"), header=FALSE)
subject_train <- read.table(file.path(refpath,"train", "subject_train.txt"), header=FALSE)

## read x files (features)
x_test <- read.table(file.path(refpath,"test", "x_test.txt"),header=FALSE)
x_train <- read.table(file.path(refpath,"train", "x_train.txt"),header = FALSE)

## create 'x' data set (features)
x_data <- rbind(x_train, x_test)

##  create 'subject' data set
subject_data <- rbind(subject_train, subject_test)

##  create 'y' data set (activity)
y_data <- rbind(y_train, y_test)


##  Step 2  - Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table(file.path(refpath, "features.txt"), header=FALSE)

## get columns with mean() or std() in name
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

## subset the necessart columns
x_data <- x_data[, mean_and_std_features]

## useful column names
names(x_data) <- features[mean_and_std_features, 2]

## Step 3 - Uses descriptive activity names to name the activities in the data set


activities <- read.table(file.path(refpath, "activity_labels.txt"),header=FALSE)

## update values with correct activity names
y_data[, 1] <- activities[y_data[, 1], 2]

## useful column name
names(y_data) <- "activity"

## Step 4 - Appropriately labels the data set with descriptive variable names. 

## useful column name
names(subject_data) <- "subject"

## bind all the data in a single data set
all_data <- cbind(x_data, y_data, subject_data)

## Step 5 - From the data set in step 4, creates a second, independent tidy data set (tidydata.txt)
##  with the average of each variable for each activity and each subject.

TidyData <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(TidyData, "tidydata.txt", row.name=FALSE)