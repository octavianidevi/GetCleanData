## This is processing code to get tidy data of Human Activity Recognation Using Smartphone Datasets

# load the features list
ft <- read.table("features.txt", col.names = c("no","title"))

# read train data set
dtxtrain <- read.table("train/X_train.txt", stringsAsFactors = FALSE)
names(dtxtrain) <- ft$title
dtytrain <- read.table("train/y_train.txt", stringsAsFactors = FALSE, col.names = "activityid")
dtstrain <- read.table("train/subject_train.txt", stringsAsFactors = FALSE, col.names = "subject")

# combine / merge the train data in column based
dttrain <- cbind(dtstrain, dtytrain, dtxtrain)


# read test data set
dtxtest <- read.table("test/X_test.txt", stringsAsFactors = FALSE)
names(dtxtest) <- ft$title
dtytest <- read.table("test/y_test.txt", stringsAsFactors = FALSE, col.names = "activityid")
dtstest <- read.table("test/subject_test.txt", stringsAsFactors = FALSE, col.names = "subject")

# combine / merge the test data in column base
dttest <- cbind(dtstest, dtytest, dtxtest)

# merge / combine train and test using  row based
data <- rbind(dttrain, dttest)

# extract only mean and std data
nm <- names(data)[grep("mean|std|activityid|subject", names(data))]
sdata <- data[,nm]

# add description of activity
al <- read.table("activity_labels.txt", stringsAsFactors = FALSE, col.names = c("activityid","activitynm"))
mdata <- merge(al, sdata, by="activityid", all=TRUE)
mdata <- mdata[,names(mdata) != "activityid"]

# rename the column
names(mdata) <- gsub(x=names(mdata), pattern = "\\()", replacement = "")
names(mdata) <- gsub(x=names(mdata), pattern = "-", replacement = ".")
names(mdata) <- gsub(x=names(mdata), pattern = "(^)f", replacement = "freq")
names(mdata) <- gsub(x=names(mdata), pattern = "(^)t", replacement = "time")

# create tidy data
require(reshape2)
tidydata = melt(mdata, id = c("subject","activitynm"))
tidydata <- dcast(tidydata, subject + activitynm ~ variable,mean)

write.table(tidydata,"UCI_HAR_tidydata.txt")
