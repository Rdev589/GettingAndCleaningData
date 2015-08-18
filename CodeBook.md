# Tidy Human Activity Data from Smartphones Dataset
This is a wide tidy dataset derived from

[Human Activity Recognition Using Smartphones Dataset Version 1.0](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Raw Data used to build this tidy dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Variables (Measurements)

###Variable Transform Table
This table maps the tidy variables (columns) to the raw variables (columns).

The "Variable Type" column annotates whether this variable group is a scalar (single value) or vector (X,Y,Z components).  
The "Raw Variable" column is the name of the variable from the original dataset.  The "Raw Col" column is the column position 
from the original dataset.

The "Derived Type" column annotates the method used to derive this group of variables.  "FFT" means this variable set was produced with a Fast Fourier Transform on the time domain measurements.  "time" in this column means the variables were created directly from time domain signals.


|Tidy Col|Tidy Variable|Raw Col|Raw Variable|Units|Description|
----|--------|----|----------|---------|--------|-----|---------------
|1|Subject |1| tBodyAcc-mean()-X | id |  | unitary |The subject id from the original data, values 1-30 |
|2|Activity |1| tBodyAcc-mean()-X | string | |  | The string activity name|
|3|TimeBodyAccMeanX |1| tBodyAcc-mean()-X |m/s^2 | |
|4|TimeBodyAccMeanY |2| tBodyAcc-mean()-Y |m/s^2 |  |
|5|TimeBodyAccMeanZ |3| tBodyAcc-mean()-Z |m/s^2 |  |
|6|TimeBodyAccStdDevX |4| tBodyAcc-std()-X|m/s^2 |  |
|7|TimeBodyAccStdDevY |5| tBodyAcc-std()-Y |m/s^2 |  |
|8|TimeBodyAccStdDevZ |6| tBodyAcc-std()-Z |m/s^2 |  |
|9|TimeGravityAccMeanX |41| tGravityAcc-mean()-X |m/s^2 |  |
|10|TimeGravityAccMeanY |42| tGravityAcc-mean()-Y |m/s^2 |  |
|11|TimeGravityAccMeanZ |43| tGravityAcc-mean()-Z |m/s^2 |  |
|12|TimeGravityAccStdDevX |44| tGravityAcc-std()-X |m/s^2 |  |
|13|TimeGravityAccStdDevY |45| tGravityAcc-std()-Y |m/s^2 |  |
|14|TimeGravityAccStdDevZ |46| tGravityAcc-std()-Z |m/s^2 |  |
|15|TimeBodyAccJerkMeanX |81| tBodyAccJerk-mean()-X |m/s^2 |  |
|16|TimeBodyAccJerkMeanY |82| tBodyAccJerk-mean()-Y |m/s^2 |  |
|17|TimeBodyAccJerkMeanZ |83| tBodyAccJerk-mean()-Z |m/s^2 |  |
|18|TimeBodyAccJerkStdDevX |84| tBodyAccJerk-std()-X |m/s^2 |  |
|19|TimeBodyAccJerkStdDevY |85| tBodyAccJerk-std()-Y |m/s^2 |  |
|20|TimeBodyAccJerkStdDevZ |86| tBodyAccJerk-std()-Z |m/s^2 |  |
|21|TimeBodyGyroMeanX |121| tBodyGyro-mean()-X |m/s^2 |  |
|22|TimeBodyGyroMeanY |122| tBodyGyro-mean()-Y |m/s^2 |  |
|23|TimeBodyGyroMeanZ |123| tBodyGyro-mean()-Z |m/s^2 |  |
|24|TimeBodyGyroStdDevX |124| tBodyGyro-std()-X |m/s^2 |  |
|25|TimeBodyGyroStdDevY |125| tBodyGyro-std()-Y |m/s^2 |  |
|26|TimeBodyGyroStdDevZ |126| tBodyGyro-std()-Z |m/s^2 |  |
|27|TimeBodyGyroJerkMeanX |161| tBodyGyroJerk-mean()-X |m/s^2 |  |
|28|TimeBodyGyroJerkMeanY |162| tBodyGyroJerk-mean()-Y |m/s^2 |  |
|29|TimeBodyGyroJerkMeanZ |163| tBodyGyroJerk-mean()-Z |m/s^2 |  |
|30|TimeBodyGyroJerkStdDevX |164| tBodyGyroJerk-std()-X |m/s^2 |  |
|31|TimeBodyGyroJerkStdDevY |165| tBodyGyroJerk-std()-Y |m/s^2 |  |
|32|TimeBodyGyroJerkStdDevZ |166| tBodyGyroJerk-std()-Z |m/s^2 |  |
|33|TimeBodyAccMagMean |201| tBodyAccMag-mean() |m/s^2 |  |
|34|TimeBodyAccMagStdDev |202| tBodyAccMag-std() |m/s^2 |  |
|35|TimeGravityAccMagMean |214| tGravityAccMag-mean() |m/s^2 |  |
|36|TimeGravityAccMagStdDev |215| tGravityAccMag-std() |m/s^2 |  |
|37|TimeBodyAccJerkMagMean |227| tBodyAccJerkMag-mean() |m/s^2 |  |
|38|TimeBodyAccJerkMagStdDev |228| tBodyAccJerkMag-std() |m/s^2 |  |
|39|TimeBodyGyroMagMean |240| tBodyGyroMag-mean() |m/s^2 |  |
|40|TimeBodyGyroMagStdDev |241| tBodyGyroMag-std() |m/s^2 |  |
|41|TimeBodyGyroJerkMagMean |253| tBodyGyroJerkMag-mean() |m/s^2 |  |
|42|TimeBodyGyroJerkMagStdDev |254| tBodyGyroJerkMag-std() |m/s^2 |  |
|43|FrequencyBodyAccMeanX |266| fBodyAcc-mean()-X |Hz |  |
|44|FrequencyBodyAccMeanY |267| fBodyAcc-mean()-Y |Hz |  |
|45|FrequencyBodyAccMeanZ |268| fBodyAcc-mean()-Z |Hz |  |
|46|FrequencyBodyAccStdDevX |269| fBodyAcc-std()-X |Hz |  |
|47|FrequencyBodyAccStdDevY |270| fBodyAcc-std()-Y |Hz |  |
|48|FrequencyBodyAccStdDevZ |271| fBodyAcc-std()-Z |Hz |  |
|49|FrequencyBodyAccJerkMeanX |345| fBodyAccJerk-mean()-X |Hz |  |
|50|FrequencyBodyAccJerkMeanY |346| fBodyAccJerk-mean()-Y |Hz |  |
|51|FrequencyBodyAccJerkMeanZ |347| fBodyAccJerk-mean()-Z |Hz |  |
|52|FrequencyBodyAccJerkStdDevX |348| fBodyAccJerk-std()-X |Hz |  |
|53|FrequencyBodyAccJerkStdDevY |349| fBodyAccJerk-std()-Y |Hz |  |
|54|FrequencyBodyAccJerkStdDevZ |350| fBodyAccJerk-std()-Z |Hz |  |
|55|FrequencyBodyGyroMeanX |424| fBodyGyro-mean()-X |Hz |  |
|56|FrequencyBodyGyroMeanY |425| fBodyGyro-mean()-Y |Hz |  |
|57|FrequencyBodyGyroMeanZ |426| fBodyGyro-mean()-Z |Hz |  |
|58|FrequencyBodyGyroStdDevX |427| fBodyGyro-std()-X |Hz |  |
|59|FrequencyBodyGyroStdDevY |428| fBodyGyro-std()-Y |Hz |  |
|60|FrequencyBodyGyroStdDevZ |429| fBodyGyro-std()-Z |Hz |  |
|61|FrequencyBodyAccMagMean |503| fBodyAccMag-mean() |Hz |  |
|62|FrequencyBodyAccMagStdDev |504| fBodyAccMag-std() |Hz |  |
|63|FrequencyBodyAccJerkMagMean |516| fBodyBodyAccJerkMag-mean() |Hz |  |
|64|FrequencyBodyAccJerkMagStdDev |517| fBodyBodyAccJerkMag-std() |Hz |  |
|65|FrequencyBodyGyroMagMean |529| fBodyBodyGyroMag-mean() |Hz |  |
|66|FrequencyBodyGyroMagStdDev |530| fBodyBodyGyroMag-std() |Hz |  |
|67|FrequencyBodyGyroJerkMagMean |542| fBodyBodyGyroJerkMag-mean() |Hz |  |
|68|FrequencyBodyGyroJerkMagStdDev |543| fBodyBodyGyroJerkMag-std() |Hz |  |
 
