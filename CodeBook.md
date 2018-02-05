All variables in the 'Tidy Dataset.txt' file are listed below

## Identifiers
* subject
	Subject identifier, integer, ranges from 1 to 30.

* activity
	Activity identifier, string with 6 possible values:
        + WALKING: subject was walking
        + WALKING_UPSTAIRS: subject was walking upstairs
        + WALKING_DOWNSTAIRS: subject was walking downstairs
        + SITTING: subject was sitting
        + STANDING: subject was standing
        + LAYING: subject was laying

## Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. The acceleration signal was then separated into body and gravity acceleration signals. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Time Domain Signals
* time_Domain_Body_Accelerometer_mean_X
* time_Domain_Body_Accelerometer_mean_Y
* time_Domain_Body_Accelerometer_mean_Z
* time_Domain_Body_Accelerometer_std_X
* time_Domain_Body_Accelerometer_std_Y
* time_Domain_Body_Accelerometer_std_Z
* time_Domain_Gravity_Accelerometer_mean_X
* time_Domain_Gravity_Accelerometer_mean_Y
* time_Domain_Gravity_Accelerometer_mean_Z
* time_Domain_Gravity_Accelerometer_std_X
* time_Domain_Gravity_Accelerometer_std_Y
* time_Domain_Gravity_Accelerometer_std_Z
* time_Domain_Body_Accelerometer_Jerk_mean_X
* time_Domain_Body_Accelerometer_Jerk_mean_Y
* time_Domain_Body_Accelerometer_Jerk_mean_Z
* time_Domain_Body_Accelerometer_Jerk_std_X
* time_Domain_Body_Accelerometer_Jerk_std_Y
* time_Domain_Body_Accelerometer_Jerk_std_Z
* time_Domain_Body_Gyroscope_mean_X
* time_Domain_Body_Gyroscope_mean_Y
* time_Domain_Body_Gyroscope_mean_Z
* time_Domain_Body_Gyroscope_std_X
* time_Domain_Body_Gyroscope_std_Y
* time_Domain_Body_Gyroscope_std_Z
* time_Domain_Body_Gyroscope_Jerk_mean_X
* time_Domain_Body_Gyroscope_Jerk_mean_Y
* time_Domain_Body_Gyroscope_Jerk_mean_Z
* time_Domain_Body_Gyroscope_Jerk_std_X
* time_Domain_Body_Gyroscope_Jerk_std_Y
* time_Domain_Body_Gyroscope_Jerk_std_Z
* time_Domain_Body_Accelerometer_Magnitude_mean
* time_Domain_Body_Accelerometer_Magnitude_std
* time_Domain_Gravity_Accelerometer_Magnitude_mean
* time_Domain_Gravity_Accelerometer_Magnitude_std
* time_Domain_Body_Accelerometer_Jerk_Magnitude_mean
* time_Domain_Body_Accelerometer_Jerk_Magnitude_std
* time_Domain_Body_Gyroscope_Magnitude_mean
* time_Domain_Body_Gyroscope_Magnitude_std
* time_Domain_Body_Gyroscope_Jerk_Magnitude_mean
* time_Domain_Body_Gyroscope_Jerk_Magnitude_std


### Frequency Domain Signals
* freq_Domain_Body_Accelerometer_mean_X
* freq_Domain_Body_Accelerometer_mean_Y
* freq_Domain_Body_Accelerometer_mean_Z
* freq_Domain_Body_Accelerometer_std_X
* freq_Domain_Body_Accelerometer_std_Y
* freq_Domain_Body_Accelerometer_std_Z
* freq_Domain_Body_Accelerometer_mean_Frequency_X
* freq_Domain_Body_Accelerometer_mean_Frequency_Y
* freq_Domain_Body_Accelerometer_mean_Frequency_Z
* freq_Domain_Body_Accelerometer_Jerk_mean_X
* freq_Domain_Body_Accelerometer_Jerk_mean_Y
* freq_Domain_Body_Accelerometer_Jerk_mean_Z
* freq_Domain_Body_Accelerometer_Jerk_std_X
* freq_Domain_Body_Accelerometer_Jerk_std_Y
* freq_Domain_Body_Accelerometer_Jerk_std_Z
* freq_Domain_Body_Accelerometer_Jerk_mean_Frequency_X
* freq_Domain_Body_Accelerometer_Jerk_mean_Frequency_Y
* freq_Domain_Body_Accelerometer_Jerk_mean_Frequency_Z
* freq_Domain_Body_Gyroscope_mean_X
* freq_Domain_Body_Gyroscope_mean_Y
* freq_Domain_Body_Gyroscope_mean_Z
* freq_Domain_Body_Gyroscope_std_X
* freq_Domain_Body_Gyroscope_std_Y
* freq_Domain_Body_Gyroscope_std_Z
* freq_Domain_Body_Gyroscope_mean_Frequency_X
* freq_Domain_Body_Gyroscope_mean_Frequency_Y
* freq_Domain_Body_Gyroscope_mean_Frequency_Z
* freq_Domain_Body_Accelerometer_Magnitude_mean
* freq_Domain_Body_Accelerometer_Magnitude_std
* freq_Domain_Body_Accelerometer_Magnitude_mean_Frequency
* freq_Domain_Body_Accelerometer_Jerk_Magnitude_mean
* freq_Domain_Body_Accelerometer_Jerk_Magnitude_std
* freq_Domain_Body_Accelerometer_Jerk_Magnitude_mean_Frequency
* freq_Domain_Body_Gyroscope_Magnitude_mean
* freq_Domain_Body_Gyroscope_Magnitude_std
* freq_Domain_Body_Gyroscope_Magnitude_mean_Frequency
* freq_Domain_Body_Gyroscope_Jerk_Magnitude_mean
* freq_Domain_Body_Gyroscope_Jerk_Magnitude_std
* freq_Domain_Body_Gyroscope_Jerk_Magnitude_mean_Frequency

