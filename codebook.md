The Code Book
=============

The original dataset for this assignment was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. All features are normalized and bounded within [-1,1].

The dataset provided here contains only mean and std values of the datasets.
**Each observation was averaged for each pair of activity and subject** so that
the dataset contains 180 rows (6 activities times 30 subjects).
The description of each observation is provided in a table bellow.

|     |  Observation name  |  Description  |
| --- | -------- | ---------- |
| 1 | activity | Activity type |
| 2 | subject | Subject identifier |
| 3 | tBodyAcc.mean.X | Time domain body acceleration signal average x-axis |
| 4 | tBodyAcc.mean.Y | Time domain body acceleration signal average y-axis |
| 5 | tBodyAcc.mean.Z | Time domain body acceleration signal average z-axis |
| 6 | tBodyAcc.std.X | Time domain body acceleration signal standard deviation x-axis |
| 7 | tBodyAcc.std.Y | Time domain body acceleration signal standard deviation y-axis |
| 8 | tBodyAcc.std.Z | Time domain body acceleration signal standard deviation z-axis |
| 9 | tGravityAcc.mean.X | Time domain gravity acceleration signal average x-axis |
| 10 | tGravityAcc.mean.Y | Time domain gravity acceleration signal average y-axis |
| 11 | tGravityAcc.mean.Z | Time domain gravity acceleration signal average z-axis |
| 12 | tGravityAcc.std.X | Time domain gravity acceleration signal standard deviation x-axis |
| 13 | tGravityAcc.std.Y | Time domain gravity acceleration signal standard deviation y-axis |
| 14 | tGravityAcc.std.Z | Time domain gravity acceleration signal standard deviation z-axis |
| 15 | tBodyAccJerk.mean.X | Time domain body acceleration signal Jerk signals average x-axis |
| 16 | tBodyAccJerk.mean.Y | Time domain body acceleration signal Jerk signals average y-axis |
| 17 | tBodyAccJerk.mean.Z | Time domain body acceleration signal Jerk signals average z-axis |
| 18 | tBodyAccJerk.std.X | Time domain body acceleration signal Jerk signals standard deviation x-axis |
| 19 | tBodyAccJerk.std.Y | Time domain body acceleration signal Jerk signals standard deviation y-axis |
| 20 | tBodyAccJerk.std.Z | Time domain body acceleration signal Jerk signals standard deviation z-axis |
| 21 | tBodyGyro.mean.X | Time domain body gyroscope average x-axis |
| 22 | tBodyGyro.mean.Y | Time domain body gyroscope average y-axis |
| 23 | tBodyGyro.mean.Z | Time domain body gyroscope average z-axis |
| 24 | tBodyGyro.std.X | Time domain body gyroscope standard deviation x-axis |
| 25 | tBodyGyro.std.Y | Time domain body gyroscope standard deviation y-axis |
| 26 | tBodyGyro.std.Z | Time domain body gyroscope standard deviation z-axis |
| 27 | tBodyGyroJerk.mean.X | Time domain body gyroscope Jerk signals average x-axis |
| 28 | tBodyGyroJerk.mean.Y | Time domain body gyroscope Jerk signals average y-axis |
| 29 | tBodyGyroJerk.mean.Z | Time domain body gyroscope Jerk signals average z-axis |
| 30 | tBodyGyroJerk.std.X | Time domain body gyroscope Jerk signals standard deviation x-axis |
| 31 | tBodyGyroJerk.std.Y | Time domain body gyroscope Jerk signals standard deviation y-axis |
| 32 | tBodyGyroJerk.std.Z | Time domain body gyroscope Jerk signals standard deviation z-axis |
| 33 | tBodyAccMag.mean | Time domain body acceleration signal magnitude average |
| 34 | tBodyAccMag.std | Time domain body acceleration signal magnitude standard deviation |
| 35 | tGravityAccMag.mean | Time domain gravity acceleration signal magnitude average |
| 36 | tGravityAccMag.std | Time domain gravity acceleration signal magnitude standard deviation |
| 37 | tBodyAccJerkMag.mean | Time domain body acceleration signal Jerk signals magnitude average |
| 38 | tBodyAccJerkMag.std | Time domain body acceleration signal Jerk signals magnitude standard deviation |
| 39 | tBodyGyroMag.mean | Time domain body gyroscope magnitude average |
| 40 | tBodyGyroMag.std | Time domain body gyroscope magnitude standard deviation |
| 41 | tBodyGyroJerkMag.mean | Time domain body gyroscope Jerk signals magnitude average |
| 42 | tBodyGyroJerkMag.std | Time domain body gyroscope Jerk signals magnitude standard deviation |
| 43 | fBodyAcc.mean.X | Frequency domain body acceleration signal average x-axis |
| 44 | fBodyAcc.mean.Y | Frequency domain body acceleration signal average y-axis |
| 45 | fBodyAcc.mean.Z | Frequency domain body acceleration signal average z-axis |
| 46 | fBodyAcc.std.X | Frequency domain body acceleration signal standard deviation x-axis |
| 47 | fBodyAcc.std.Y | Frequency domain body acceleration signal standard deviation y-axis |
| 48 | fBodyAcc.std.Z | Frequency domain body acceleration signal standard deviation z-axis |
| 49 | fBodyAcc.meanFreq.X | Frequency domain body acceleration signal average frequency x-axis |
| 50 | fBodyAcc.meanFreq.Y | Frequency domain body acceleration signal average frequency y-axis |
| 51 | fBodyAcc.meanFreq.Z | Frequency domain body acceleration signal average frequency z-axis |
| 52 | fBodyAccJerk.mean.X | Frequency domain body acceleration signal Jerk signals average x-axis |
| 53 | fBodyAccJerk.mean.Y | Frequency domain body acceleration signal Jerk signals average y-axis |
| 54 | fBodyAccJerk.mean.Z | Frequency domain body acceleration signal Jerk signals average z-axis |
| 55 | fBodyAccJerk.std.X | Frequency domain body acceleration signal Jerk signals standard deviation x-axis |
| 56 | fBodyAccJerk.std.Y | Frequency domain body acceleration signal Jerk signals standard deviation y-axis |
| 57 | fBodyAccJerk.std.Z | Frequency domain body acceleration signal Jerk signals standard deviation z-axis |
| 58 | fBodyAccJerk.meanFreq.X | Frequency domain body acceleration signal Jerk signals average frequency x-axis |
| 59 | fBodyAccJerk.meanFreq.Y | Frequency domain body acceleration signal Jerk signals average frequency y-axis |
| 60 | fBodyAccJerk.meanFreq.Z | Frequency domain body acceleration signal Jerk signals average frequency z-axis |
| 61 | fBodyGyro.mean.X | Frequency domain body gyroscope average x-axis |
| 62 | fBodyGyro.mean.Y | Frequency domain body gyroscope average y-axis |
| 63 | fBodyGyro.mean.Z | Frequency domain body gyroscope average z-axis |
| 64 | fBodyGyro.std.X | Frequency domain body gyroscope standard deviation x-axis |
| 65 | fBodyGyro.std.Y | Frequency domain body gyroscope standard deviation y-axis |
| 66 | fBodyGyro.std.Z | Frequency domain body gyroscope standard deviation z-axis |
| 67 | fBodyGyro.meanFreq.X | Frequency domain body gyroscope average frequency x-axis |
| 68 | fBodyGyro.meanFreq.Y | Frequency domain body gyroscope average frequency y-axis |
| 69 | fBodyGyro.meanFreq.Z | Frequency domain body gyroscope average frequency z-axis |
| 70 | fBodyAccMag.mean | Frequency domain body acceleration signal magnitude average |
| 71 | fBodyAccMag.std | Frequency domain body acceleration signal magnitude standard deviation |
| 72 | fBodyAccMag.meanFreq | Frequency domain body acceleration signal magnitude average frequency |
| 73 | fBodyBodyAccJerkMag.mean | Frequency domain body acceleration signal Jerk signals magnitude average |
| 74 | fBodyBodyAccJerkMag.std | Frequency domain body acceleration signal Jerk signals magnitude standard deviation |
| 75 | fBodyBodyAccJerkMag.meanFreq | Frequency domain body acceleration signal Jerk signals magnitude average frequency |
| 76 | fBodyBodyGyroMag.mean | Frequency domain body gyroscope magnitude average |
| 77 | fBodyBodyGyroMag.std | Frequency domain body gyroscope magnitude standard deviation |
| 78 | fBodyBodyGyroMag.meanFreq | Frequency domain body gyroscope magnitude average frequency |
| 79 | fBodyBodyGyroJerkMag.mean | Frequency domain body gyroscope Jerk signals magnitude average |
| 80 | fBodyBodyGyroJerkMag.std | Frequency domain body gyroscope Jerk signals magnitude standard deviation |
| 81 | fBodyBodyGyroJerkMag.meanFreq | Frequency domain body gyroscope Jerk signals magnitude average frequency |
