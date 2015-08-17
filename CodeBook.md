# Tidy Human Activity Data from Smartphones Dataset
This is a tidy dataset derived from

[Human Activity Recognition Using Smartphones Dataset Version 1.0](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Raw Data used to build this tidy dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Variables (Measurements)

###Variable Summary Table
This is a summary of all of the variables in this tidy dataset.  

The Variable column defines the root name for a group of related variables.

The Spatial column annotates whether this variable group is a scalar (single value) or vector (X,Y,Z components).  

The Derived column annotates the method used to derive this group of variables.  "FFT" means this variable set was produced with a Fast Fourier Transform on the time domain measurements.  "time" in this column means the variables were created directly from time domain signals.

Variable|Spatial|Derived|Description
-------------------|-----------|-----------|-------------
fBodyAcc| X,Y,Z | FFT | 
fBodyAccJerk| X,Y,Z  | FFT |
fBodyAccMag| scalar  | FFT |  
fBodyBodyAccJerkMag| scalar  | FFT |  
fBodyBodyGyroJerkMag| scalar  | FFT |  
fBodyBodyGyroMag| scalar  | FFT |  
fBodyGyro| X,Y,Z  | FFT |  
tBodyAcc| X,Y,Z  | time |  
tBodyAccJerk| X,Y,Z  | time |  
tBodyAccJerkMag| scalar  | time |  
tBodyAccMag| scalar  | time |  
tBodyGyro| X,Y,Z  | time |  
tBodyGyroJerk| X,Y,Z  | time |  
tBodyGyroJerkMag| scalar  | time |  
tBodyGyroMag| scalar  | time |  
tGravityAcc| X,Y,Z  | time |  
tGravityAccMag| scalar  | time |  

