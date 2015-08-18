# Tidy Human Activity Data from Smartphones Dataset
This is a wide tidy dataset derived from

[Human Activity Recognition Using Smartphones Dataset Version 1.0](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Raw Data used to build this tidy dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Variables (Measurements)

###Variable Transform Table Description
This table maps the tidy variables (columns) to the raw variables (columns).

The "Raw Variable" column is the name of the variable from the original dataset.  The "Raw Col" column is the column position 
from the original dataset.

The following definitions are used in the below "Variable Translation Table"

Some of the variables use abbreviated terms to keep the length of the column name to a reasonable size.

####Table Definitions
|name|definition|
|--------|-------------------
|subject_xxx.txt | The train/subject_train.txt or test/subject_test.txt file  |
|y_xxxx.txt | The train/y_train.txt or test/y_test.txt file  |
|Accel | Abbrv. Acceleration |
|StdDev | Abbrv. Standard deviation |
|Time |The variable was created with time domain signal from an accelerometer or gyro.|
|Frequency | The variable was created from an FFT on the corresponding time domain accelerometer or gyro signal. |
|MeanTime | Variable name prefix used to denote the mean of a time.  The mean of the subject/activity pair.   |
|MeanFrequency | Variable name prefix used to denote the mean of a frequency.  The mean of the subject/activity pair. |


###Variable Translation Table

|Tidy Col|Tidy Variable|Raw Col|Raw Variable|Units|Description|
----|--------|----|----------|---------|--------|-----|------------------------------------------------------
|1|Subject |1| subject_xxx.txt | unitary |The subject id from the original data, values 1-30 |
|2|Activity |1| y_xxxx.txt |  | The string activity name|
|3|MeanTimeBodyAccelMeanX |1| tBodyAcc-mean()-X |m/s^2 | Mean of the mean body separated acceleration from the time signal-X component |
|4|MeanTimeBodyAccelMeanY |2| tBodyAcc-mean()-Y |m/s^2 | Mean of the mean body separated acceleration from the time signal-Y component |
|5|MeanTimeBodyAccelMeanZ |3| tBodyAcc-mean()-Z |m/s^2 | Mean of the mean body separated acceleration from the time signal-Z component |
|6|MeanTimeBodyAccelStdDevX |4| tBodyAcc-std()-X|m/s^2 | Mean of the standard deviation body separated acceleration from the time signal-X component |
|7|MeanTimeBodyAccelStdDevY |5| tBodyAcc-std()-Y |m/s^2 | Mean of the standard deviation body separated acceleration from the time signal-Y component |
|8|MeanTimeBodyAccelStdDevZ |6| tBodyAcc-std()-Z |m/s^2 | Mean of the standard deviation body separated acceleration from the time signal-Z component |
|9|MeanTimeGravityAccelMeanX |41| tGravityAcc-mean()-X |m/s^2 | Mean of the mean gravity separated acceleration from the time signal-X component |
|10|MeanTimeGravityAccelMeanY |42| tGravityAcc-mean()-Y |m/s^2 | Mean of the mean gravity separated acceleration from the time signal-Y component |
|11|MeanTimeGravityAccelMeanZ |43| tGravityAcc-mean()-Z |m/s^2 | Mean of the mean gravity separated acceleration from the time signal-Z component |
|12|MeanTimeGravityAccelStdDevX |44| tGravityAcc-std()-X |m/s^2 | Mean of the standard deviation gravity separated acceleration from the time signal-X component |
|13|MeanTimeGravityAccelStdDevY |45| tGravityAcc-std()-Y |m/s^2 | Mean of the standard deviation gravity separated acceleration from the time signal-Y component |
|14|MeanTimeGravityAccelStdDevZ |46| tGravityAcc-std()-Z |m/s^2 | Mean of the standard deviation gravity separated acceleration from the time signal-Z component |
|15|MeanTimeBodyAccelJerkMeanX |81| tBodyAccJerk-mean()-X |m/s^2 | Mean of the mean body jerk acceleration from the time signal-X component |
|16|MeanTimeBodyAccelJerkMeanY |82| tBodyAccJerk-mean()-Y |m/s^2 | Mean of the mean body jerk acceleration from the time signal-Y component  |
|17|MeanTimeBodyAccelJerkMeanZ |83| tBodyAccJerk-mean()-Z |m/s^2 | Mean of the mean body jerk acceleration from the time signal-Z component  |
|18|MeanTimeBodyAccelJerkStdDevX |84| tBodyAccJerk-std()-X |m/s^2 | Mean of the mean body jerk acceleration from the time signal-X component  |
|19|MeanTimeBodyAccelJerkStdDevY |85| tBodyAccJerk-std()-Y |m/s^2 | Mean of the mean body jerk acceleration from the time signal-Y component  |
|20|MeanTimeBodyAccelJerkStdDevZ |86| tBodyAccJerk-std()-Z |m/s^2 | Mean of the mean body jerk acceleration from the time signal-Z component  |
|21|MeanTimeBodyGyroMeanX |121| tBodyGyro-mean()-X |m/s^2 | Mean of the mean body gyro time signal-X component |
|22|MeanTimeBodyGyroMeanY |122| tBodyGyro-mean()-Y |m/s^2 | Mean of the mean body gyro time signal-Y component |
|23|MeanTimeBodyGyroMeanZ |123| tBodyGyro-mean()-Z |m/s^2 | Mean of the mean body gyro time signal-Z component |
|24|MeanTimeBodyGyroStdDevX |124| tBodyGyro-std()-X |m/s^2 | Mean of the standard deviation body gyro time signal-X component |
|25|MeanTimeBodyGyroStdDevY |125| tBodyGyro-std()-Y |m/s^2 | Mean of the standard deviation body gyro time signal-Y component |
|26|MeanTimeBodyGyroStdDevZ |126| tBodyGyro-std()-Z |m/s^2 | Mean of the standard deviation body gyro time signal-Z component |
|27|MeanTimeBodyGyroJerkMeanX |161| tBodyGyroJerk-mean()-X |m/s^2 | Mean of the mean body gyro jerk time signal-X component |
|28|MeanTimeBodyGyroJerkMeanY |162| tBodyGyroJerk-mean()-Y |m/s^2 | Mean of the mean body gyro jerk time signal-Y component |
|29|MeanTimeBodyGyroJerkMeanZ |163| tBodyGyroJerk-mean()-Z |m/s^2 | Mean of the mean body gyro jerk time signal-Z component |
|30|MeanTimeBodyGyroJerkStdDevX |164| tBodyGyroJerk-std()-X |m/s^2 | Mean of the standard deviation body gyro jerk time signal-X component |
|31|MeanTimeBodyGyroJerkStdDevY |165| tBodyGyroJerk-std()-Y |m/s^2 | Mean of the standard deviation body gyro jerk time signal-Y component |
|32|MeanTimeBodyGyroJerkStdDevZ |166| tBodyGyroJerk-std()-Z |m/s^2 | Mean of the standard deviation body gyro jerk time signal-Z component |
|33|MeanTimeBodyAccelMagMean |201| tBodyAccMag-mean() |m/s^2 | Mean of the mean body acceleration time signal magnitude |
|34|MeanTimeBodyAccelMagStdDev |202| tBodyAccMag-std() |m/s^2 | Mean of the standard deviation body acceleration time signal magnitude |
|35|MeanTimeGravityAccelMagMean |214| tGravityAccMag-mean() |m/s^2 | Mean of the mean body acceleration time signal magnitude |
|36|MeanTimeGravityAccelMagStdDev |215| tGravityAccMag-std() |m/s^2 | Mean of the standard deviation gravity separated acceleration time signal magnitude  |
|37|MeanTimeBodyAccelJerkMagMean |227| tBodyAccJerkMag-mean() |m/s^2 | Mean of the mean body jerk acceleration time signal magnitude  |
|38|MeanTimeBodyAccelJerkMagStdDev |228| tBodyAccJerkMag-std() |m/s^2 | Mean of the standard deviation body acceleration time signal magnitude  |
|39|MeanTimeBodyGyroMagMean |240| tBodyGyroMag-mean() |m/s^2 | Mean of the mean body acceleratin time signal magnitude  |
|40|MeanTimeBodyGyroMagStdDev |241| tBodyGyroMag-std() |m/s^2 | Mean of the standard deviation body acceleratin time signal magnitude  |
|41|MeanTimeBodyGyroJerkMagMean |253| tBodyGyroJerkMag-mean() |m/s^2 | Mean of the mean body acceleratin time signal magnitude  |
|42|MeanTimeBodyGyroJerkMagStdDev |254| tBodyGyroJerkMag-std() |m/s^2 | Mean of the standard deviation body gyro jerk time signal magnitude  |
|43|MeanFrequencyBodyAccelMeanX |266| fBodyAcc-mean()-X |Hz | Mean of the mean FFT body acceleration X component |
|44|MeanFrequencyBodyAccelMeanY |267| fBodyAcc-mean()-Y |Hz | Mean of the mean FFT body acceleration Y component  |
|45|MeanFrequencyBodyAccelMeanZ |268| fBodyAcc-mean()-Z |Hz | Mean of the mean FFT body acceleration Z component  |
|46|MeanFrequencyBodyAccelStdDevX |269| fBodyAcc-std()-X |Hz | Mean of the standard deviation FFT body acceleration X component  |
|47|MeanFrequencyBodyAccelStdDevY |270| fBodyAcc-std()-Y |Hz | Mean of the standard deviation FFT body acceleration Y component  |
|48|MeanFrequencyBodyAccelStdDevZ |271| fBodyAcc-std()-Z |Hz | Mean of the standard deviation FFT body acceleration Z component  |
|49|MeanFrequencyBodyAccelJerkMeanX |345| fBodyAccJerk-mean()-X |Hz | Mean of the mean FFT body jerk acceleration X component  |
|50|MeanFrequencyBodyAccelJerkMeanY |346| fBodyAccJerk-mean()-Y |Hz | Mean of the mean FFT body jerk acceleration Y component  |
|51|MeanFrequencyBodyAccelJerkMeanZ |347| fBodyAccJerk-mean()-Z |Hz | Mean of the mean FFT body jerk acceleration Z component  |
|52|MeanFrequencyBodyAccelJerkStdDevX |348| fBodyAccJerk-std()-X |Hz | Mean of the standard deviation FFT body jerk acceleration X component  |
|53|MeanFrequencyBodyAccelJerkStdDevY |349| fBodyAccJerk-std()-Y |Hz | Mean of the standard deviation FFT body jerk acceleration Y component  |
|54|MeanFrequencyBodyAccelJerkStdDevZ |350| fBodyAccJerk-std()-Z |Hz | Mean of the standard deviation FFT body jerk acceleration Z component  |
|55|MeanFrequencyBodyGyroMeanX |424| fBodyGyro-mean()-X |Hz | Mean of the mean FFT body gyro X component  |
|56|MeanFrequencyBodyGyroMeanY |425| fBodyGyro-mean()-Y |Hz | Mean of the mean FFT body gyro Y component  |
|57|MeanFrequencyBodyGyroMeanZ |426| fBodyGyro-mean()-Z |Hz | Mean of the mean FFT body gyro Z component  |
|58|MeanFrequencyBodyGyroStdDevX |427| fBodyGyro-std()-X |Hz | Mean of the standard deviation FFT body gyro X component  |
|59|MeanFrequencyBodyGyroStdDevY |428| fBodyGyro-std()-Y |Hz | Mean of the standard deviation FFT body gyro Y component  |
|60|MeanFrequencyBodyGyroStdDevZ |429| fBodyGyro-std()-Z |Hz | Mean of the standard deviation FFT body gyro Z component  |
|61|MeanFrequencyBodyAccelMagMean |503| fBodyAccMag-mean() |Hz | Mean of the mean FFT body acceleration magnitude  |
|62|MeanFrequencyBodyAccelMagStdDev |504| fBodyAccMag-std() |Hz | Mean of the standard deviation FFT body acceleration magnitude  |
|63|MeanFrequencyBodyAccelJerkMagMean |516| fBodyBodyAccJerkMag-mean() |Hz | Mean of the mean FFT body jerk acceleration magnitude  |
|64|MeanFrequencyBodyAccelJerkMagStdDev |517| fBodyBodyAccJerkMag-std() |Hz | Mean of the standard deviation FFT body jerk acceleration magnitude  |
|65|MeanFrequencyBodyGyroMagMean |529| fBodyBodyGyroMag-mean() |Hz | Mean of the mean FFT body gyro magnitude  |
|66|MeanFrequencyBodyGyroMagStdDev |530| fBodyBodyGyroMag-std() |Hz | Mean of the standard deviation FFT body gyro magnitude  |
|67|MeanFrequencyBodyGyroJerkMagMean |542| fBodyBodyGyroJerkMag-mean() |Hz | Mean of the mean FFT gyro jerk magnitude  |
|68|MeanFrequencyBodyGyroJerkMagStdDev |543| fBodyBodyGyroJerkMag-std() |Hz | Mean of the standard deviation FFT gyro jerk magnitude |
 
