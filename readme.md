Getting and Cleaning Data course project
========================================

The original dataset for this assignment was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and unpacked.

This readme file describes major steps of `runanalysis.R` file. The script assumes
that contents of the folder from zip file are placed in the working directory, so that
`test` and `train` folders are in the same folder as `runanalysis.R`.

According to **Step 4** all feature names from `features.txt` were cleaned in the following way:

1. Deleted parantheses using `sub` function
2. `make.names(features, unique=TRUE)` so that each - and _ symbols are replaced
with dots.

According to **Step 1** requirement train and test sets were merged. 
Label (Y variable) and subject id columns were binded to the resulting set. 
Then Y variable (label column) were joined with activity name and 
replaced with activity column as was required in **Step 3**.

All columns except for `activity` and `subject`
were converted to `numeric` via call to `as.numeric`. Activity and subject columns
are left of type `factor`. The resulting **full tidy dataset** is assigned to `fulldataset` variable.

**Step 2** requirements for mean and std columns for each mesurement are met with a call
```
meanstdix <- sort(c(grep("std|mean", names(fulldataset)),1,2))
```

1 and 2 indexes are reserved for activity and subject columns.
So if feature name contains `mean` or `std` string than it is included to the
final subset. This subset is assigned to variable `subset`.

For **Step 5** independent tidy data set with the average of each variable for each activity and each subject was created using dlpyr package chaining with groupping and summarising:
```
resultset <- subset %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))
```

This `resultset` is saved to `result.txt` file without rownames and using `\t` separator.



