## CodeBook for Getting and Cleaning Data Peer Assessment 

A full description of the data used in this project can be found at The UCI Machine Learning Repository - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The code file, run_analysis.R performs the five steps described in the project instructions:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For step one, the following data sets were merged into one:
- X_test.txt
- X_train.txt
- y_train.txt
- y_test.txt
- subject_train.txt
- subject_test.txt
- features.txt
- activity_labels.txt

For step two, Extracts only the measurements on the mean and standard deviation for each measurement (columns that contained std or mean in title).

For step three - the data set was merged with activity_labels file to use descriptive names for the activities.

For step four -  merged columns for descriptive activity names

For step five -  created tidydata.txt file, with the average of each variable for the activity and each subject.

subject - The participant ("subject") ID
activity - The label of the activity performed when the corresponding measurements were taken

Activity Labels
WALKING (value 1)
WALKING_UPSTAIRS (value 2)
WALKING_DOWNSTAIRS (value 3)
SITTING (value 4)
STANDING (value 5)
LAYING (value 6)

Activities Vector
c(1, 2, 3, 4, 5, 6)

Activity Names Vector
c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

Extracted Feature Names Vector

c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")

Extracted Feature Fields

tBodyAcc-mean()-X (column 1)
tBodyAcc-mean()-Y (column 2)
tBodyAcc-mean()-Z (column 3)
tBodyAcc-std()-X (column 4)
tBodyAcc-std()-Y (column 5)
tBodyAcc-std()-Z (column 6)
tGravityAcc-mean()-X (column 41)
tGravityAcc-mean()-Y (column 42)
tGravityAcc-mean()-Z (column 43)
tGravityAcc-std()-X (column 44)
tGravityAcc-std()-Y (column 45)
tGravityAcc-std()-Z (column 46)
tBodyAccJerk-mean()-X (column 81)
tBodyAccJerk-mean()-Y (column 82)
tBodyAccJerk-mean()-Z (column 83)
tBodyAccJerk-std()-X (column 84)
tBodyAccJerk-std()-Y (column 85)
tBodyAccJerk-std()-Z (column 86)
tBodyGyro-mean()-X (column 121)
tBodyGyro-mean()-Y (column 122)
tBodyGyro-mean()-Z (column 123)
tBodyGyro-std()-X (column 124)
tBodyGyro-std()-Y (column 125)
tBodyGyro-std()-Z (column 126)
tBodyGyroJerk-mean()-X (column 161)
tBodyGyroJerk-mean()-Y (column 162)
tBodyGyroJerk-mean()-Z (column 163)
tBodyGyroJerk-std()-X (column 164)
tBodyGyroJerk-std()-Y (column 165)
tBodyGyroJerk-std()-Z (column 166)
tBodyAccMag-mean() (column 201)
tBodyAccMag-std() (column 202)
tGravityAccMag-mean() (column 214)
tGravityAccMag-std() (column 215)
tBodyAccJerkMag-mean() (column 227)
tBodyAccJerkMag-std() (column 228)
tBodyGyroMag-mean() (column 240)
tBodyGyroMag-std() (column 241)
tBodyGyroJerkMag-mean() (column 253)
tBodyGyroJerkMag-std() (column 254)
fBodyAcc-mean()-X (column 266)
fBodyAcc-mean()-Y (column 267)
fBodyAcc-mean()-Z (column 268)
fBodyAcc-std()-X (column 269)
fBodyAcc-std()-Y (column 270)
fBodyAcc-std()-Z (column 271)
fBodyAccJerk-mean()-X (column 345)
fBodyAccJerk-mean()-Y (column 346)
fBodyAccJerk-mean()-Z (column 347)
fBodyAccJerk-std()-X (column 348)
fBodyAccJerk-std()-Y (column 349)
fBodyAccJerk-std()-Z (column 350)
fBodyGyro-mean()-X (column 424)
fBodyGyro-mean()-Y (column 425)
fBodyGyro-mean()-Z (column 426)
fBodyGyro-std()-X (column 427)
fBodyGyro-std()-Y (column 428)
fBodyGyro-std()-Z (column 429)
fBodyAccMag-mean() (column 503)
fBodyAccMag-std() (column 504)
fBodyBodyAccJerkMag-mean() (column 516)
fBodyBodyAccJerkMag-std() (column 517)
fBodyBodyGyroMag-mean() (column 529)
fBodyBodyGyroMag-std() (column 530)
fBodyBodyGyroJerkMag-mean() (column 542)
fBodyBodyGyroJerkMag-std() (column 543)
