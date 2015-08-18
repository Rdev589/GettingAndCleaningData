 
run_analysis <- function() {
  tidy_data <- build_tidy_dataset()
  tidy_avg_data <- build_avg_tidy_data(tidy_data)
  
  write.table(tidy_avg_data, file="average_tidy_data.txt", row.name=FALSE)
}


view_table <- function() {

  data <- read.table("average_tidy_data.txt")  
  View(data)
}


build_tidy_dataset <- function() {
  
  # all of raw file reads are relative to this top level folder
  data_folder <- "UCI HAR Dataset"
  
  #--- read the column filter data
  columns <- read.table(paste0("column_filter.txt"))
  
  #--- create a column filter of indices
  column_filter <- as.integer(columns[,1])
  
  #----------- read the data
  activity_labels <- read.table("nicer_activity_labels.txt")
  
  #--- read the training only data
  train_dat <- read.table(paste0(data_folder, "/train/X_train.txt"))
  train_subjects <- read.table(paste0(data_folder, "/train/subject_train.txt"))
  train_activities <- read.table(paste0(data_folder, "/train/y_train.txt"))
  
  #--- read the test only data
  test_dat <- read.table(paste0(data_folder, "/test/X_test.txt"))
  test_subjects <- read.table(paste0(data_folder, "/test/subject_test.txt"))
  test_activities <- read.table(paste0(data_folder, "/test/y_test.txt"))

  #-- lets check to ensure that the subject ids are unique accross the two
  #-- datasets.  If they are not then there is a problem as the same subject
  #-- was not used for both training and testing
  unique(train_subjects[,1])
  unique(test_subjects[,1])

  # datasets will be merged on the common column "V1" between the two frames
  train_activity_names <- left_join(train_activities, activity_labels, by=c("V1" = "V1"))
  test_activity_names <- left_join(test_activities, activity_labels, by=c("V1" = "V1"))
#  train_activity_names <- merge(train_activities, activity_labels)
#  test_activity_names <- merge(test_activities, activity_labels)
  
  #-- create columns that separate training and test data.  These columns
  #-- identify the row data as either test or training so we can distingquish
  #-- the data after the rbind
  training_rows <- "training"
  training_rows <- rep_len(training_rows, length(train_subjects$V1))
  
  test_rows <- "test"
  test_rows <- rep_len(test_rows, length(test_subjects$V1))

  #-- create a vector of column names.  Add the new columns at the front.
  column_names <- vector(mode="character")
  column_names[1] = "subject"
  column_names[2] = "data_type"
  column_names[3] = "activity"
  
  #-- add the column names from the data
  column_names <- c(column_names, as.character(columns[,3]))
  
  #-- now we have just the data we want
  #-- add subject and activity columns
  #-- here is where we only cbind the columns of interest to us.  These indices were loaded above.
  train_xdat <- cbind(train_subjects, training_rows, train_activity_names$V2, train_dat[,column_filter])
  test_xdat <- cbind(test_subjects, test_rows, test_activity_names$V2, test_dat[,column_filter])
  
  #-- now rename the columns before the rbind so we don't get errors
  names(train_xdat) <- column_names
  names(test_xdat) <- column_names
  
  # merge the training and test datasets
  tidy_data <- rbind(train_xdat, test_xdat)
}


build_avg_tidy_data <- function(tidy_data) {
  
  # now let's averate the data for each subject and activity
  grouped_tidy_data <- mutate(tidy_data, group_col=paste0(tidy_data$subject, "~", tidy_data$activity))
  by_subj_activity <- group_by(grouped_tidy_data, group_col)

  unique_subj_act_names <- unique(grouped_tidy_data[ dim(grouped_tidy_data)[2]])
  
  ply_col_names <- names(grouped_tidy_data)[5:(dim(grouped_tidy_data)[2])-1]

  avg_df <- data.frame(unique(grouped_tidy_data[70]))
  joined2_avg_df <- data.frame(unique(grouped_tidy_data[70]))
  for(c in ply_col_names) {
    cx <- as.symbol(c)
    avg <- summarize(by_subj_activity, mean(cx))
    joined_avg_df <- merge(avg_df, avg)
    joined2_avg_df <- merge(joined2_avg_df, joined_avg_df)
    names(joined2_avg_df)[dim(joined2_avg_df)[2]] <- paste0("Mean", c)
  }

  grouped_subjects <- strsplit(avg_df[,1], "~")
  cv <- unlist(grouped_subjects)
  ix  <- seq(from=1, to=length(cv), by=2)
  ix2 <- seq(from=2, to=length(cv), by=2)
  
  avg_tidy_data <- cbind(cv[ix], cv[ix2], joined2_avg_df[2:dim(joined2_avg_df)[2]])
  names(avg_tidy_data)[1] <- "Subject"
  names(avg_tidy_data)[2] <- "Activity"
  
  avg_tidy_data;
}


get_root_feature_names <- function() {
  
  data_folder <- "UCI HAR Dataset"
  features <- read.table(paste0(data_folder, "/features.txt"))
  
  nix <- which(sapply(features[,2], function(x){ grep("mean\\(\\)|std\\(\\)", x)}) > 0)
  feat_names <- sort(as.character(features[nix,2]))
  write.table(feat_names, "feat_names.txt")
  
  fn3 <- sapply(feat_names, function(x){ y<-unlist(strsplit(x, "-")); y[1]} )
  variable_names <- unique(as.list(fn3))
  as.character(variable_names)
  
}
