#set working directory to the data location and use data.table library
setwd("C:/Users/SFilimonova/Desktop/CourseraR/Exploratory Analysis")
library(data.table)
library(datasets)

#Read data set
data <- data.table::fread("household_power_consumption.txt", na.strings= "?", header= TRUE)

#Subset the data to dates of interest
data_fin <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

#Open Png grapgics device
png("plot1.png", width = 480, height = 480, units = "px")

#Build the plot
hist(data_fin$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
