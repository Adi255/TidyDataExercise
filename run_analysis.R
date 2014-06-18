##Script to read in and merge test and training UCI HAR Data sets
##Input - path to data file archive

run_analysis <- function(dataFile = "getdata-projectfiles-UCI HAR Dataset.zip") {

  dataDir <- "UCI HAR Dataset"

  if (!file.exists(dataFile)){
    message("Downloading data file")
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile=dataFile, method=internal)
  }
  if (!file.exists(dataDir)){
    message("Unzipping archive")
    unzip(dataFile)
}

#Read feature names in order to extract relevent columns 
#from the following tables
featureFrame <- read.table(paste(dataDir,"/features.txt", sep=""))

#Read in activty labels
classLabels <- read.table(paste(dataDir,"/activity_labels.txt", sep=""), sep =" ")

testDir <- "test"
trainDir <- "train"

#Find features describing useful measurements
usefulFeatures <- featureFrame[grepl("(mean\\(\\)|std\\(\\))",featureFrame[,2]),]
#Remove brackets from variable names
usefulFeatures[,2] <- gsub("\\(\\)","",usefulFeatures[,2])

readDataSet <- function(set){
  #Read the training data and extract the mean/std fields
  data <- read.table(paste(dataDir,"/", set, "/X_", set, ".txt", sep=""), colClasses="numeric")
  data <- data[,usefulFeatures[,1]]
  
  #Read in the subjects and activity data sets
  subjects <- read.table(paste(dataDir,"/", set,"/subject_",set,".txt", sep=""), colClasses="numeric")
  activity <- read.table(paste(dataDir,"/",set,"/Y_",set,".txt", sep=""), colClasses="numeric")
  
  #Comibine them all
  data <- cbind(subjects[,1], activity[,1], data)

  #Replace activity label with written description
  data[,2] <- classLabels[data[,2],2]
  
  colnames(data) <- c("Subject","Activity", as.character(usefulFeatures[,2]))
  data
}

trainingData <- readDataSet(trainDir)
testData <- readDataSet(testDir)

rbind(trainingData,testData)


# 
# testFrame <- read.table("train/X_test.txt", colClasses="numeric")
# testSubjects <- read.table("test/subject_test.txt", colClasses="numeric")
# 
# testData <- trainingFrame[,usefulFeatures[,1]]
# 

}