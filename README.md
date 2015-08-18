# README for Tidy Human Activity Data from Smartphones Dataset

The main routine to produce the tidy data is "run_analysis()" found in the "run_analysis.R" script file.  To run this script
one needs to create a directory (run directory) and place the files from this repository in that directory.  Next, the data needs to be downloaded 
from

and unzipped into this directory so that the "UCI HAR Dataset" folder exists in this run directory.  One may use other directory
names for the data, but the script needs to be modified to load from the renamed folder.

###How to run
To run the full analysis and produce the table just run the following commands:  
  
  library(dplr)  
  setwd("<run directory>")  
  source("run_analysis.R")    
  run_analysis()  
   
###How to view data table
To view the data simply run  
  view_table()  

###File listing

|File|Description|
|---------|-------------------------------|
|run_analysis.R|This file produces the tidy dataset or views the data|
|column_filter.txt|This file is used to extract and rename the data columns from the raw dataset.  run_analysis.R loads this file.|
|nicer_activity_labels.txt|This file renames the activities to corresponding tidy names.  run_analysis.R loads this file.|
|README.md|This file|
|CodeBook.md|The tidy dataset code book|

For documentation on how the routines work see the "run_analysis.R" script file.

Notes to run analysis.  
1) one must load dplyr "library(dplyr)"
