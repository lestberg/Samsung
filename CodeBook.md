---
title: "code book"
output: html_document
---

## Raw Data Source
The raw data was collected by a group at the Non Linear Systems Laboratory at a University in Genoa Italy (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The group performed an experiment with a group of 30 volunteers between the ages of 19-48 years.  Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) attached to the waist.  Using the phone`s embedded accelerometer and gyroscope, the group captured 3-axial (XYZ) linear acceleration (Acc) and angular velocity (Gyro).  The sensor signals were sampled in 2.56 second sliding windows, and some were separated into separate axes in the X, Y, and Z directions.  The acceleration signals were separated into gravitational (Gravity) and body (Body) motion components.  Within the time-domain signals (time), further processing of both the body acceleration and angular velocity signals included time derivations (Jerk signals) and Euclidean norm magnitudes (Mag signals).  Finally, a set of frequency domain signals (freq) were obtained by applying a Fast Fourier Transform.

## Tidy Data Set
As the raw data 'unit of observation' was sliding-window measurements for each activity performed by each subject, the data was summarized by averaging the sliding-window mean and standard deviation measurements across each activity performed by each subject.  These metrics were used to summarize the set of measurements provided over the course of multiple sliding time windows collected during each activity.

## Code book
The following entries provide the column name followed by the column number.  A description of the column variable is provided in the bullet points.

subject 1

- The subject identifier is represented by digits between 1 and 30
        
activity 2

- The activity performed by each subject

>		Walking
>		Walking_Upstairs
>		Walking_Downstairs
>		Sitting
>		Standing
>		Laying

timeBodyAccXMean 3

timeBodyAccXStd 36

- The average and standard deviation of the time-domain body acceleration in the X axis direction

timeBodyAccYMean 4

timeBodyAccYStd 37

- The average and standard deviation of the time-domain body acceleration in the Y axis direction

timeBodyAccZMean			5

timeBodyAccZStd			38

- The average and standard deviation of the time-domain body acceleration in the Z axis direction

timeGravityAccXMean			6

timeGravityAccXStd			39

- The average and standard deviation of the time-domain gravity-based acceleration in the X axis direction

timeGravityAccYMean			7

timeGravityAccYStd			40

- The average and standard deviation of the time-domain gravity-based acceleration in the Y axis direction

timeGravityAccZMean			8

timeGravityAccZStd			41

- The average and standard deviation of the time-domain gravity-based acceleration in the Z axis direction

timeBodyAccJerkXMean		9

timeBodyAccJerkXStd			42

- The average and standard deviation of the time-domain body acceleration Jerk signals in the X axis direction

timeBodyAccJerkYMean			10

timeBodyAccJerkYStd			43

- The average and standard deviation of the time-domain body acceleration Jerk signals in the Y axis direction

timeBodyAccJerkZMean			11

timeBodyAccJerkZStd			44

- The average and standard deviation of the time-domain body acceleration Jerk signals in the Z axis direction

timeBodyGyroXMean			12

timeBodyGyroXStd			45

- The average and standard deviation of the time-domain body angular velocity in the X axis direction

timeBodyGyroYMean			13

timeBodyGyroYStd			46

- The average and standard deviation of the time-domain body angular velocity in the Y axis direction

timeBodyGyroZMean			14

timeBodyGyroZStd			47

- The average and standard deviation of the time-domain body angular velocity in the Z axis direction

timeBodyGyroJerkXMean		15

timeBodyGyroJerkXStd			48

- The average and standard deviation of the time-domain body angular velocity Jerk signals in the X axis direction

timeBodyGyroJerkYMean		16

timeBodyGyroJerkYStd			49

- The average and standard deviation of the time-domain body angular velocity Jerk signals in the Y axis direction

timeBodyGyroJerkZMean		17

timeBodyGyroJerkZStd			50

- The average and standard deviation of the time-domain body angular velocity Jerk signals in the Z axis direction

timeBodyAccMagMean			18

timeBodyAccMagStd			51

- The average and standard deviation of the time-domain body acceleration magnitude 

timeGravityAccMagMean		19

timeGravityAccMagStd			52

- The average and standard deviation of the time-domain gravity-based acceleration magnitude 

timeBodyAccJerkMagMean		20

timeBodyAccJerkMagStd		53

- The average and standard deviation of the time-domain body acceleration Jerk signals magnitude 

timeBodyGyroMagMean		21

timeBodyGyroMagStd			54

- The average and standard deviation of the time-domain body angular velocity magnitude 

timeBodyGyroJerkMagMean		22

timeBodyGyroJerkMagStd		55

- The average and standard deviation of the time-domain body angular velocity Jerk signals magnitude 

freqBodyAccXMean			23

freqBodyAccXStd			56

- The average and standard deviation of the frequency-domain body acceleration in the X axis direction 

freqBodyAccYMean			24

freqBodyAccYStd			 57

- The average and standard deviation of the frequency-domain body acceleration in the Y axis direction 

freqBodyAccZMean			25

freqBodyAccZStd			58

- The average and standard deviation of the frequency-domain body acceleration in the Z axis direction 

freqBodyAccJerkXMean			26

freqBodyAccJerkXStd			59

- The average and standard deviation of the frequency-domain body acceleration Jerk signals in the X axis 
direction 

freqBodyAccJerkYMean			27

freqBodyAccJerkYStd			60

- The average and standard deviation of the frequency-domain body acceleration Jerk signals in the Y axis direction 

freqBodyAccJerkZMean			28

freqBodyAccJerkZStd			61

- The average and standard deviation of the frequency-domain body acceleration Jerk signals in the Y axis direction 

freqBodyGyroXMean			29

freqBodyGyroXStd			62

- The average and standard deviation of the frequency-domain body angular velocity in the X axis direction 

freqBodyGyroYMean			30

freqBodyGyroYStd			63

- The average and standard deviation of the frequency-domain body angular velocity in the Y axis direction 

freqBodyGyroZMean			31

freqBodyGyroZStd			64

- The average and standard deviation of the frequency-domain body angular velocity in the Z axis direction 

freqBodyAccMagMean			32

freqBodyAccMagStd			65

- The average and standard deviation of the frequency-domain body acceleration magnitude

freqBodyBodyAccJerkMagMean		33

freqBodyBodyAccJerkMagStd		66

- The average and standard deviation of the frequency-domain body acceleration Jerk signals magnitude

freqBodyBodyGyroMagMean		34

freqBodyBodyGyroMagStd		67

- The average and standard deviation of the frequency-domain body angular velocity magnitude

freqBodyBodyGyroJerkMagMean	35

freqBodyBodyGyroJerkMagStd		68

- The average and standard deviation of the frequency-domain body angular velocity Jerk signals magnitude
