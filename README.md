README Getting and Cleaning Data Course Project  
========================================
Human Activity Recognition Using Smartphones Datasets  
------------------------------------------------------
Version1.0    


__Data Set Information:__  
Below information is taken from the original website.  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



__Dataset for the course project__  
In this project the data set files that are used:  
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

__Summary Process__  
In this project, the data of Human Activity Recognition Using Smartphones Datasets is processed into tidy data. There are several features that are provided in this data set, but only mean and standard deviation features will be used.
For the first step is merge column of subject, activity and feature data set of each training and test. Second step is merge the record / row of train data set and test data set. After that, some manipulation is done like modify the column name to be more meaningfull and choose only related features / measures for analysis.
Last step is create tidy data that contain average of each features for each activity and each subject.  

Please read CodeBook to know more detail on how to process the data.
