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
