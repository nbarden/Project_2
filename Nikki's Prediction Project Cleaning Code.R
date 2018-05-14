#cleaning environment
rm(list=ls())

#set filepath to desktop
filepath <- ("/Users/nicolebarden/Desktop")

#set working directory
setwd(filepath)

#load training data into R
train_data <- read.csv("training.csv")
View(train_data)

#Count NA values
sapply(train_data, function(x) sum(is.na(x)))

#Remove all columns containing at least one NA
train_data2 <- train_data[ , apply(train_data, 2, function(x) !any(is.na(x)))]

#Count NA values again to check
sapply(train_data2, function(x) sum(is.na(x)))

#input NAs into all blank observations
train_data2[train_data2==""] <- NA

#Remove all columns containing at least one NA 
train_data3<- train_data2[ , apply(train_data2, 2, function(x) !any(is.na(x)))]

#rename dataset 
train <- train_data3