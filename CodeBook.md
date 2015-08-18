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

|tidy|tidy|raw|raw|spatial|derived||
|col| name|col|name|type|type|units|description|
---------------------------------------------------------------
|1|Subject |1| tBodyAcc-mean()-X | scalar | id | unitary | |
|2|Activity |1| tBodyAcc-mean()-X | scalar | factor | unitary | |
|3|TimeBodyAccMeanX |1| tBodyAcc-mean()-X | X,Y,Z | Time | m/s^2 | |
|4|TimeBodyAccMeanY |2| tBodyAcc-mean()-Y | X,Y,Z | Time | m/s^2 |  |
|5|TimeBodyAccMeanZ |3| tBodyAcc-mean()-Z | X,Y,Z | Time | m/s^2 |  |
|6|TimeBodyAccStdDevX |4| tBodyAcc-std()-X| X,Y,Z | Time | m/s^2 |  |
|7|TimeBodyAccStdDevY |5| tBodyAcc-std()-Y | X,Y,Z | Time | m/s^2 |  |
|8|TimeBodyAccStdDevZ |6| tBodyAcc-std()-Z | X,Y,Z | Time | m/s^2 |  |
|9|TimeGravityAccMeanX |41| tGravityAcc-mean()-X | X,Y,Z | Time | m/s^2 |  |
|10|TimeGravityAccMeanY |42| tGravityAcc-mean()-Y | X,Y,Z | Time | m/s^2 |  |
|11|TimeGravityAccMeanZ |43| tGravityAcc-mean()-Z | X,Y,Z | Time | m/s^2 |  |
|12|TimeGravityAccStdDevX |44| tGravityAcc-std()-X | X,Y,Z | Time | m/s^2 |  |
|13|TimeGravityAccStdDevY |45| tGravityAcc-std()-Y | X,Y,Z | Time | m/s^2 |  |
|14|TimeGravityAccStdDevZ |46| tGravityAcc-std()-Z | X,Y,Z | Time | m/s^2 |  |
|15|TimeBodyAccJerkMeanX |81| tBodyAccJerk-mean()-X | X,Y,Z | Time | m/s^2 |  |
|16|TimeBodyAccJerkMeanY |82| tBodyAccJerk-mean()-Y | X,Y,Z | Time | m/s^2 |  |
|17|TimeBodyAccJerkMeanZ |83| tBodyAccJerk-mean()-Z | X,Y,Z | Time | m/s^2 |  |
|18|TimeBodyAccJerkStdDevX |84| tBodyAccJerk-std()-X | X,Y,Z | Time | m/s^2 |  |
|19|TimeBodyAccJerkStdDevY |85| tBodyAccJerk-std()-Y | X,Y,Z | Time | m/s^2 |  |
|20|TimeBodyAccJerkStdDevZ |86| tBodyAccJerk-std()-Z | X,Y,Z | Time | m/s^2 |  |
|21|TimeBodyGyroMeanX |121| tBodyGyro-mean()-X | X,Y,Z | Time | m/s^2 |  |
|22|TimeBodyGyroMeanY |122| tBodyGyro-mean()-Y | X,Y,Z | Time | m/s^2 |  |
|23|TimeBodyGyroMeanZ |123| tBodyGyro-mean()-Z | X,Y,Z | Time | m/s^2 |  |
|24|TimeBodyGyroStdDevX |124| tBodyGyro-std()-X | X,Y,Z | Time | m/s^2 |  |
|25|TimeBodyGyroStdDevY |125| tBodyGyro-std()-Y | X,Y,Z | Time | m/s^2 |  |
|26|TimeBodyGyroStdDevZ |126| tBodyGyro-std()-Z | X,Y,Z | Time | m/s^2 |  |
|27|TimeBodyGyroJerkMeanX |161| tBodyGyroJerk-mean()-X | X,Y,Z | Time | m/s^2 |  |
|28|TimeBodyGyroJerkMeanY |162| tBodyGyroJerk-mean()-Y | X,Y,Z | Time | m/s^2 |  |
|29|TimeBodyGyroJerkMeanZ |163| tBodyGyroJerk-mean()-Z | X,Y,Z | Time | m/s^2 |  |
|30|TimeBodyGyroJerkStdDevX |164| tBodyGyroJerk-std()-X | X,Y,Z | Time | m/s^2 |  |
|31|TimeBodyGyroJerkStdDevY |165| tBodyGyroJerk-std()-Y | X,Y,Z | Time | m/s^2 |  |
|32|TimeBodyGyroJerkStdDevZ |166| tBodyGyroJerk-std()-Z | X,Y,Z | Time | m/s^2 |  |
|33|TimeBodyAccMagMean |201| tBodyAccMag-mean() | scalar | Time | m/s^2 |  |
|34|TimeBodyAccMagStdDev |202| tBodyAccMag-std() | scalar | Time | m/s^2 |  |
|35|TimeGravityAccMagMean |214| tGravityAccMag-mean() | scalar | Time | m/s^2 |  |
|36|TimeGravityAccMagStdDev |215| tGravityAccMag-std() | scalar | Time | m/s^2 |  |
|37|TimeBodyAccJerkMagMean |227| tBodyAccJerkMag-mean() | scalar | Time | m/s^2 |  |
|38|TimeBodyAccJerkMagStdDev |228| tBodyAccJerkMag-std() | scalar | Time | m/s^2 |  |
|39|TimeBodyGyroMagMean |240| tBodyGyroMag-mean() | scalar | Time | m/s^2 |  |
|40|TimeBodyGyroMagStdDev |241| tBodyGyroMag-std() | scalar | Time | m/s^2 |  |
|41|TimeBodyGyroJerkMagMean |253| tBodyGyroJerkMag-mean() | scalar | Time | m/s^2 |  |
|42|TimeBodyGyroJerkMagStdDev |254| tBodyGyroJerkMag-std() | scalar | Time | m/s^2 |  |
|43|FrequencyBodyAccMeanX |266| fBodyAcc-mean()-X | X,Y,Z | Frequency | m/s^2 |  |
|44|FrequencyBodyAccMeanY |267| fBodyAcc-mean()-Y | X,Y,Z | Frequency | m/s^2 |  |
|45|FrequencyBodyAccMeanZ |268| fBodyAcc-mean()-Z | X,Y,Z | Frequency | m/s^2 |  |
|46|FrequencyBodyAccStdDevX |269| fBodyAcc-std()-X | X,Y,Z | Frequency | m/s^2 |  |
|47|FrequencyBodyAccStdDevY |270| fBodyAcc-std()-Y | X,Y,Z | Frequency | m/s^2 |  |
|48|FrequencyBodyAccStdDevZ |271| fBodyAcc-std()-Z | X,Y,Z | Frequency | m/s^2 |  |
|49|FrequencyBodyAccJerkMeanX |345| fBodyAccJerk-mean()-X | X,Y,Z | Frequency | m/s^2 |  |
|50|FrequencyBodyAccJerkMeanY |346| fBodyAccJerk-mean()-Y | X,Y,Z | Frequency | m/s^2 |  |
|51|FrequencyBodyAccJerkMeanZ |347| fBodyAccJerk-mean()-Z | X,Y,Z | Frequency | m/s^2 |  |
|52|FrequencyBodyAccJerkStdDevX |348| fBodyAccJerk-std()-X | X,Y,Z | Frequency | m/s^2 |  |
|53|FrequencyBodyAccJerkStdDevY |349| fBodyAccJerk-std()-Y | X,Y,Z | Frequency | m/s^2 |  |
|54|FrequencyBodyAccJerkStdDevZ |350| fBodyAccJerk-std()-Z | X,Y,Z | Frequency | m/s^2 |  |
|55|FrequencyBodyGyroMeanX |424| fBodyGyro-mean()-X | X,Y,Z | Frequency | m/s^2 |  |
|56|FrequencyBodyGyroMeanY |425| fBodyGyro-mean()-Y | X,Y,Z | Frequency | m/s^2 |  |
|57|FrequencyBodyGyroMeanZ |426| fBodyGyro-mean()-Z | X,Y,Z | Frequency | m/s^2 |  |
|58|FrequencyBodyGyroStdDevX |427| fBodyGyro-std()-X | X,Y,Z | Frequency | m/s^2 |  |
|59|FrequencyBodyGyroStdDevY |428| fBodyGyro-std()-Y | X,Y,Z | Frequency | m/s^2 |  |
|60|FrequencyBodyGyroStdDevZ |429| fBodyGyro-std()-Z | X,Y,Z | Frequency | m/s^2 |  |
|61|FrequencyBodyAccMagMean |503| fBodyAccMag-mean() | scalar | Frequency | m/s^2 |  |
|62|FrequencyBodyAccMagStdDev |504| fBodyAccMag-std() | scalar | Frequency | m/s^2 |  |
|63|FrequencyBodyAccJerkMagMean |516| fBodyBodyAccJerkMag-mean() | scalar | Frequency | m/s^2 |  |
|64|FrequencyBodyAccJerkMagStdDev |517| fBodyBodyAccJerkMag-std() | scalar | Frequency | m/s^2 |  |
|65|FrequencyBodyGyroMagMean |529| fBodyBodyGyroMag-mean() | scalar | Frequency | m/s^2 |  |
|66|FrequencyBodyGyroMagStdDev |530| fBodyBodyGyroMag-std() | scalar | Frequency | m/s^2 |  |
|67|FrequencyBodyGyroJerkMagMean |542| fBodyBodyGyroJerkMag-mean() | scalar | Frequency | m/s^2 |  |
|68|FrequencyBodyGyroJerkMagStdDev |543| fBodyBodyGyroJerkMag-std() | scalar | Frequency | m/s^2 |  |
