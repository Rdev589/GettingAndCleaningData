 
## run_analysis - This function creates the final tidy dataset containing
##                the "averaged" variables.  This function also creates
##                the first tidy dataset and stores it in tidy_data.
##
##    Throughout this file a data_folder variable is used to refer to
##    the location of the raw unzipped data that is processed by the
##    scripts in this file.  Change this variable to refer to a different
##    folder.
run_analysis <- function() {
  
  tidy_data <- build_tidy_dataset()
  tidy_avg_data <- build_avg_tidy_data(tidy_data)
  
  write.table(tidy_avg_data, file="average_tidy_data.txt", row.name=FALSE)
}

## view_table - This function will open and "View" the tidy dataset
##              containing the averaged values.
view_table <- function() {
  data <- read.table("average_tidy_data.txt", header=TRUE)  
  View(data)
}

## build_tidy_dataset - 
##       This function loads the raw data and builds the first
##       tidy dataset.  This dataset is returned by this 
##       function.
build_tidy_dataset <- function() {
  
  #-- all of raw file reads are relative to this top level folder
  data_folder <- "UCI HAR Dataset"
  
  #-- read the column filter data
  columns <- read.table(paste0("column_filter.txt"))
  
  #-- create a column filter of indices from the column data
  #-- we read in above.  This will be used to include only the columns
  #-- we care about in the cbind.  Column 1 contains the column index
  #-- values of the raw data we want.
  column_filter <- as.integer(columns[,1])
  
  #--------------------------------------------
  #-- read the data in the below section
  #--------------------------------------------
  activity_labels <- read.table("nicer_activity_labels.txt")
  
  #-- read the training only data
  train_dat <- read.table(paste0(data_folder, "/train/X_train.txt"))
  train_subjects <- read.table(paste0(data_folder, "/train/subject_train.txt"))
  train_activities <- read.table(paste0(data_folder, "/train/y_train.txt"))
  
  #--- read the test only data
  test_dat <- read.table(paste0(data_folder, "/test/X_test.txt"))
  test_subjects <- read.table(paste0(data_folder, "/test/subject_test.txt"))
  test_activities <- read.table(paste0(data_folder, "/test/y_test.txt"))

  #--------------------------------------------
  #-- join our nice activity names with the raw data
  #--------------------------------------------
  # datasets will be merged on the common column "V1" between the two frames
  train_activity_names <- left_join(train_activities
                                    , activity_labels, by=c("V1" = "V1"))
  test_activity_names <- left_join(test_activities
                                   , activity_labels, by=c("V1" = "V1"))

  #-- create columns that separate training and test data.  These columns
  #-- identify the row data as either test or training so we can distinquish
  #-- the data after the rbind.  We throw this column away in the final
  #-- averaged tidy dataset, but this column would be needed in general so
  #-- that we can keep the training and test data seprate.
  training_rows <- "training"
  training_rows <- rep_len(training_rows, length(train_subjects$V1))
  
  test_rows <- "test"
  test_rows <- rep_len(test_rows, length(test_subjects$V1))

  #-- create a vector of column names.  Add the new columns at the front.
  column_names <- vector(mode="character")
  column_names[1] = "subject"
  column_names[2] = "data_type"
  column_names[3] = "activity"
  
  #-- add the nice/tidy column names from our column data file
  column_names <- c(column_names, as.character(columns[,3]))
  
  #-- now we have just the data we want
  #-- add subject and activity columns
  #-- here is where we only cbind the columns of interest to us.  
  #-- These indices were loaded above.
  train_xdat <- cbind(train_subjects, training_rows
                      , train_activity_names$V2, train_dat[,column_filter])
  
  test_xdat <- cbind(test_subjects, test_rows
                     , test_activity_names$V2, test_dat[,column_filter])
  
  #-- now rename the columns before the rbind so we don't get errors
  names(train_xdat) <- column_names
  names(test_xdat) <- column_names
  
  # merge the training and test datasets
  # unsorted, but we are not submitting this so just leave it unsorted
  tidy_data <- rbind(train_xdat, test_xdat)
}

## build_avg_tidy_data - 
##       This function takes the un-averaged tidy dataset and creates the
##       "averaged" dataset for submission.  The un-averaged dataset
##       produced by the above function is passed to this function as
##       input.  This function returns the "averaged" tidy dataset.
build_avg_tidy_data <- function(tidy_data) {
  
  # now let's averate the data for each subject and activity
  grouped_tidy_data <- mutate(tidy_data
                    , group_col=paste0(tidy_data$subject, "~", tidy_data$activity))
  by_subj_activity <- group_by(grouped_tidy_data, group_col)

  unique_subj_act_names <- unique(grouped_tidy_data[ dim(grouped_tidy_data)[2]])
  
  ply_col_names <- names(grouped_tidy_data)[5:(dim(grouped_tidy_data)[2])-1]

  #-- We are building a wide dataset so loop over the columns and append the
  #-- new ones to our final dataset.
  
  avg_df <- data.frame(unique(grouped_tidy_data[70]))
  joined2_avg_df <- data.frame(unique(grouped_tidy_data[70]))
  
  for(c in ply_col_names) {
    cx <- as.symbol(c)
    avg <- summarize(by_subj_activity, mean(cx))
    joined_avg_df <- merge(avg_df, avg)
    joined2_avg_df <- merge(joined2_avg_df, joined_avg_df)
    names(joined2_avg_df)[dim(joined2_avg_df)[2]] <- paste0("Mean", c)
  }

  #-- The grouping was a concatenated string that we need to undo to get
  #-- the final set of subject/activity pairs.  The split string gives us
  #-- two elements, but we just want a set of separated items so choose
  #-- even/odd values for the two groups.
  grouped_subjects <- strsplit(avg_df[,1], "~")
  cv <- unlist(grouped_subjects)
  ix  <- seq(from=1, to=length(cv), by=2)
  ix2 <- seq(from=2, to=length(cv), by=2)

  #-- bind the subject/activity dadta to the averaged variables.  
  unsorted_avg_tidy_data <- cbind(as.numeric(cv[ix]), cv[ix2]
                         , joined2_avg_df[2:dim(joined2_avg_df)[2]])
  
  names(unsorted_avg_tidy_data)[1] <- "Subject"
  names(unsorted_avg_tidy_data)[2] <- "Activity"
  
  avg_tidy_data <- arrange(unsorted_avg_tidy_data, Subject,Activity);
}


## check_data - 
##      This function runs a couple of checks on the data.
check_data <- function() {
  #-- all of raw file reads are relative to this top level folder
  data_folder <- "UCI HAR Dataset"
  
  #--------------------------------------------
  #-- read the data in the below section
  #--------------------------------------------
  activity_labels <- read.table("nicer_activity_labels.txt")
  
  #-- read the training only data
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
  utrainsubjs <- unique(train_subjects[,1])
  utestsubjs <- unique(test_subjects[,1])
  
  print("unique train subjects: ")
  print(utrainsubjs)
  print("unique test subjects: ")
  print(utestsubjs)
  
  #-- now figure how many unique combinations of subjects and activities we have.
  #-- this should match our final set.
  train_subj_activities <- cbind(train_subjects, train_activities)
  test_subj_activities <- cbind(test_subjects, test_activities)

  utrainsubjact <- unique(train_subj_activities)  
  utestsubjact <- unique(test_subj_activities)  
  subjectact <- rbind(train_subj_activities, test_subj_activities)
  utotcombined <- unique(subjectact)
  
  totalcombinedrows <- dim(subjectact)[1]
  utotal <- dim(utotcombined)[1]
  totalindrows <- dim(utrainsubjact)[1] + dim(utestsubjact)[1]
  
  print(paste0("unique train subject/activity pairs: ", dim(utrainsubjact)[1]))
  print(paste0("unique test subject/activity pairs: ", dim(utestsubjact)[1]))
  
  print(paste0("the total number of subj/act pairs from combined data: ", totalcombinedrows))  
  print(paste0("the total number of UNIQUE subj/act pairs from combined data: ", utotal))  
  print(paste0("the total number of subj/act pairs added separately: ", totalindrows))  
}


## get_root_feature_names - 
##           This is just a helper function that was used during
##           analysis to break the column or feature names into
##           their root names.
get_root_feature_names <- function() {
  
  #-- all of raw file reads are relative to this top level folder
  data_folder <- "UCI HAR Dataset"
  
  features <- read.table(paste0(data_folder, "/features.txt"))
  
  nix <- which(sapply(features[,2]
                      , function(x){ grep("mean\\(\\)|std\\(\\)", x)}) > 0)
  
  feat_names <- sort(as.character(features[nix,2]))
  write.table(feat_names, "feat_names.txt")
  
  fn3 <- sapply(feat_names, function(x){ y<-unlist(strsplit(x, "-")); y[1]} )
  variable_names <- unique(as.list(fn3))
  as.character(variable_names)
  
}
