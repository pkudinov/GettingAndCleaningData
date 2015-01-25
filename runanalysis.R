library(dplyr)

# read activity names
activitynames <- read.csv("activity_labels.txt", sep="", 
                          header=FALSE, col.names=c("label", "activity"))

# read and clean feature names
features <- read.table("features.txt", stringsAsFactors = FALSE)[,2]
# remove parentheses
features <- sub("()", "", features, fixed=TRUE)
features <- sub(")$", "", features, fixed=TRUE)
features <- sub("(", "", features, fixed=TRUE)
# make unique and clean names with dots instead of - and _
featurenames <- make.names(features, unique=TRUE)

# read subject names, test and train CSV files
# adding correct column names
subjtest <- read.csv("test/subject_test.txt", header=FALSE
                     , colClasses = "factor", col.names="subject")
subjtrain <- read.csv("train/subject_train.txt", header=FALSE
                      , colClasses = "factor", col.names="subject")
xtestsrc <- read.csv("test/X_test.txt", sep="", 
                     header=FALSE, col.names=featurenames)
ytestsrc <- read.csv("test/Y_test.txt", header=FALSE, col.names="label")
xtrainsrc <- read.csv("train/X_train.txt", sep="", header=FALSE,
                      col.names=featurenames)
ytrainsrc <- read.csv("train/Y_train.txt", header=FALSE, col.names="label")

# add Y vector and subject
testset <- cbind(ytestsrc, subjtest, xtestsrc)
trainset <- cbind(ytrainsrc, subjtrain, xtrainsrc)

# combine test and train together, 
# then join with activitynames, 
# remove label column and reorder columns,
# convert to numeric all except activity and subject
fulldataset <- 
    tbl_df(rbind(trainset, testset)) %>%
    inner_join(activitynames, by="label") %>%
    select(subject, activity, 2:563, -label) %>%
    mutate_each(funs(as.numeric), -subject, -activity)

# get indexes of mean and std columns plus #1 subject plus #2 activity
meanstdix <- sort(c(grep("std|mean", names(fulldataset)),1,2))
subset <- select(fulldataset, meanstdix)

# group by activity and subject, and calculate average value of each column
resultset <- subset %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))

# write resulting table to result.csv
write.table(resultset, file="result.txt", sep="\t", row.name=FALSE)
