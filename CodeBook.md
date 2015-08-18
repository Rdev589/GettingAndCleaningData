# Tidy Human Activity Data from Smartphones Dataset
This is a wide tidy dataset derived from

[Human Activity Recognition Using Smartphones Dataset Version 1.0](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Raw Data used to build this tidy dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Variables (Measurements)

###Variable Transform Table Description
This table maps the tidy variables (columns) to the raw variables (columns).

The "Raw Variable" column is the name of the variable from the original dataset.  The "Raw Col" column is the column position 
from the original dataset.

"FFT" means this variable set was produced with a Fast Fourier Transform on the time domain measurements.  "time" in this column means the variables were created directly from time domain signals.

The following definitions are used in the below "Variable Translation Table"

Some of the variables use abbreviated terms to keep the length of the column name to a reasonable size.

####Table Definitions
|name|definition|
|--------|-------------------
|subject_xxx.txt | The train/subject_train.txt or test/subject_test.txt file  |
|y_xxxx.txt | The train/y_train.txt or test/y_test.txt file  |
|Accel | Abbrv. Acceleration |
|StdDev | Abbrv. Standard deviation |
|MeanTime | Variable name prefix used to denote the mean of a time   |
|MeanFrequency | Variable name prefix used to denote the mean of a frequency   |


###Variable Translation Table

|Tidy Col|Tidy Variable|Raw Col|Raw Variable|Units|Description|
----|--------|----|----------|---------|--------|-----|------------------------------------------------------
|1|Subject |1| subject_xxx.txt | unitary |The subject id from the original data, values 1-30 |
|2|Activity |1| y_xxxx.txt |  | The string activity name|
|3|MeanTimeBodyAccelMeanX |1| tBodyAcc-mean()-X |m/s^2 | |
|4|MeanTimeBodyAccelMeanY |2| tBodyAcc-mean()-Y |m/s^2 |  |
|5|MeanTimeBodyAccelMeanZ |3| tBodyAcc-mean()-Z |m/s^2 |  |
|6|MeanTimeBodyAccelStdDevX |4| tBodyAcc-std()-X|m/s^2 |  |
|7|MeanTimeBodyAccelStdDevY |5| tBodyAcc-std()-Y |m/s^2 |  |
|8|MeanTimeBodyAccelStdDevZ |6| tBodyAcc-std()-Z |m/s^2 |  |
|9|MeanTimeGravityAccelMeanX |41| tGravityAcc-mean()-X |m/s^2 |  |
|10|MeanTimeGravityAccelMeanY |42| tGravityAcc-mean()-Y |m/s^2 |  |
|11|MeanTimeGravityAccelMeanZ |43| tGravityAcc-mean()-Z |m/s^2 |  |
|12|MeanTimeGravityAccelStdDevX |44| tGravityAcc-std()-X |m/s^2 |  |
|13|MeanTimeGravityAccelStdDevY |45| tGravityAcc-std()-Y |m/s^2 |  |
|14|MeanTimeGravityAccelStdDevZ |46| tGravityAcc-std()-Z |m/s^2 |  |
|15|MeanTimeBodyAccelJerkMeanX |81| tBodyAccJerk-mean()-X |m/s^2 |  |
|16|MeanTimeBodyAccelJerkMeanY |82| tBodyAccJerk-mean()-Y |m/s^2 |  |
|17|MeanTimeBodyAccelJerkMeanZ |83| tBodyAccJerk-mean()-Z |m/s^2 |  |
|18|MeanTimeBodyAccelJerkStdDevX |84| tBodyAccJerk-std()-X |m/s^2 |  |
|19|MeanTimeBodyAccelJerkStdDevY |85| tBodyAccJerk-std()-Y |m/s^2 |  |
|20|MeanTimeBodyAccelJerkStdDevZ |86| tBodyAccJerk-std()-Z |m/s^2 |  |
|21|MeanTimeBodyGyroMeanX |121| tBodyGyro-mean()-X |m/s^2 |  |
|22|MeanTimeBodyGyroMeanY |122| tBodyGyro-mean()-Y |m/s^2 |  |
|23|MeanTimeBodyGyroMeanZ |123| tBodyGyro-mean()-Z |m/s^2 |  |
|24|MeanTimeBodyGyroStdDevX |124| tBodyGyro-std()-X |m/s^2 |  |
|25|MeanTimeBodyGyroStdDevY |125| tBodyGyro-std()-Y |m/s^2 |  |
|26|MeanTimeBodyGyroStdDevZ |126| tBodyGyro-std()-Z |m/s^2 |  |
|27|MeanTimeBodyGyroJerkMeanX |161| tBodyGyroJerk-mean()-X |m/s^2 |  |
|28|MeanTimeBodyGyroJerkMeanY |162| tBodyGyroJerk-mean()-Y |m/s^2 |  |
|29|MeanTimeBodyGyroJerkMeanZ |163| tBodyGyroJerk-mean()-Z |m/s^2 |  |
|30|MeanTimeBodyGyroJerkStdDevX |164| tBodyGyroJerk-std()-X |m/s^2 |  |
|31|MeanTimeBodyGyroJerkStdDevY |165| tBodyGyroJerk-std()-Y |m/s^2 |  |
|32|MeanTimeBodyGyroJerkStdDevZ |166| tBodyGyroJerk-std()-Z |m/s^2 |  |
|33|MeanTimeBodyAccelMagMean |201| tBodyAccMag-mean() |m/s^2 |  |
|34|MeanTimeBodyAccelMagStdDev |202| tBodyAccMag-std() |m/s^2 |  |
|35|MeanTimeGravityAccelMagMean |214| tGravityAccMag-mean() |m/s^2 |  |
|36|MeanTimeGravityAccelMagStdDev |215| tGravityAccMag-std() |m/s^2 |  |
|37|MeanTimeBodyAccelJerkMagMean |227| tBodyAccJerkMag-mean() |m/s^2 |  |
|38|MeanTimeBodyAccelJerkMagStdDev |228| tBodyAccJerkMag-std() |m/s^2 |  |
|39|MeanTimeBodyGyroMagMean |240| tBodyGyroMag-mean() |m/s^2 |  |
|40|MeanTimeBodyGyroMagStdDev |241| tBodyGyroMag-std() |m/s^2 |  |
|41|MeanTimeBodyGyroJerkMagMean |253| tBodyGyroJerkMag-mean() |m/s^2 |  |
|42|MeanTimeBodyGyroJerkMagStdDev |254| tBodyGyroJerkMag-std() |m/s^2 |  |
|43|MeanFrequencyBodyAccelMeanX |266| fBodyAcc-mean()-X |Hz |  |
|44|MeanFrequencyBodyAccelMeanY |267| fBodyAcc-mean()-Y |Hz |  |
|45|MeanFrequencyBodyAccelMeanZ |268| fBodyAcc-mean()-Z |Hz |  |
|46|MeanFrequencyBodyAccelStdDevX |269| fBodyAcc-std()-X |Hz |  |
|47|MeanFrequencyBodyAccelStdDevY |270| fBodyAcc-std()-Y |Hz |  |
|48|MeanFrequencyBodyAccelStdDevZ |271| fBodyAcc-std()-Z |Hz |  |
|49|MeanFrequencyBodyAccelJerkMeanX |345| fBodyAccJerk-mean()-X |Hz |  |
|50|MeanFrequencyBodyAccelJerkMeanY |346| fBodyAccJerk-mean()-Y |Hz |  |
|51|MeanFrequencyBodyAccelJerkMeanZ |347| fBodyAccJerk-mean()-Z |Hz |  |
|52|MeanFrequencyBodyAccelJerkStdDevX |348| fBodyAccJerk-std()-X |Hz |  |
|53|MeanFrequencyBodyAccelJerkStdDevY |349| fBodyAccJerk-std()-Y |Hz |  |
|54|MeanFrequencyBodyAccelJerkStdDevZ |350| fBodyAccJerk-std()-Z |Hz |  |
|55|MeanFrequencyBodyGyroMeanX |424| fBodyGyro-mean()-X |Hz |  |
|56|MeanFrequencyBodyGyroMeanY |425| fBodyGyro-mean()-Y |Hz |  |
|57|MeanFrequencyBodyGyroMeanZ |426| fBodyGyro-mean()-Z |Hz |  |
|58|MeanFrequencyBodyGyroStdDevX |427| fBodyGyro-std()-X |Hz |  |
|59|MeanFrequencyBodyGyroStdDevY |428| fBodyGyro-std()-Y |Hz |  |
|60|MeanFrequencyBodyGyroStdDevZ |429| fBodyGyro-std()-Z |Hz |  |
|61|MeanFrequencyBodyAccelMagMean |503| fBodyAccMag-mean() |Hz |  |
|62|MeanFrequencyBodyAccelMagStdDev |504| fBodyAccMag-std() |Hz |  |
|63|MeanFrequencyBodyAccelJerkMagMean |516| fBodyBodyAccJerkMag-mean() |Hz |  |
|64|MeanFrequencyBodyAccelJerkMagStdDev |517| fBodyBodyAccJerkMag-std() |Hz |  |
|65|MeanFrequencyBodyGyroMagMean |529| fBodyBodyGyroMag-mean() |Hz |  |
|66|MeanFrequencyBodyGyroMagStdDev |530| fBodyBodyGyroMag-std() |Hz |  |
|67|MeanFrequencyBodyGyroJerkMagMean |542| fBodyBodyGyroJerkMag-mean() |Hz |  |
|68|MeanFrequencyBodyGyroJerkMagStdDev |543| fBodyBodyGyroJerkMag-std() |Hz |  |
 
