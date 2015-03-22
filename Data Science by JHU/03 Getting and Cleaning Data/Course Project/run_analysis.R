# load and marge x
x_tr <- read.table("UCI_HAR_Dataset/train/X_train.txt")
x_ts <- read.table("UCI_HAR_Dataset/test/X_test.txt")
x <- rbind(x_tr, x_ts)

# load and marge subject
subject_tr <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
subject_ts <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
subject <- rbind(subject_tr, subject_ts)

# load and marge y
y_tr <- read.table("UCI_HAR_Dataset/train/y_train.txt")
y_ts <- read.table("UCI_HAR_Dataset/test/y_test.txt")
y <- rbind(y_tr, y_ts)

# load labels
activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt")
features <- read.table("./UCI_HAR_Dataset/features.txt")
features_mean_std <- grepl("-mean\\(\\)|-std\\(\\)", features[, 2])

# prepare x
names(x) = features[, 2]
x_mean_std = x[, features_mean_std]

# prepare y
activities <- activity_labels[y[, 1], 2]
names(activities) <- "activity"

# prepare subject
names(subject) = "subject"

# merge data
data_all <- cbind(subject, activities, x_mean_std)

# average of each variable for each activity and each subject
data_tidy <- aggregate(data_all[c(3:ncol(data_all))], by = list(Subject = data_all$subject, Activity = data_all$activities), mean)

# write ruesults
write.table(data_tidy, file = "./data_tidy.txt", row.name=FALSE)
