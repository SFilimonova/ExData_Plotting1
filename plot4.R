#set working directory to the data location and use data.table library
setwd("C:/Users/SFilimonova/Desktop/CourseraR/Exploratory Analysis")
library(data.table)
library(datasets)

#Read data set
data <- data.table::fread("household_power_consumption.txt", na.strings= "?", header= TRUE)

#Subset the data to dates of interest
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

#Open Png grapgics device
png("plot4.png", width = 480, height = 480, units = "px")

#Build the plot

par(mfrow = c(2,2))

#1 plot
plot(as.POSIXct(paste(data_fin$Date,data_fin$Time), 
                format = "%d/%m/%Y %H:%M:%S"),
     data_fin$Global_active_power,
     type="l",
     ylab="Global Active Power",
     xlab="")

#2 plot
plot(as.POSIXct(paste(data_fin$Date,data_fin$Time), 
                format = "%d/%m/%Y %H:%M:%S"),
     data_fin$Voltage,
     type="l",
     ylab="Voltage",
     xlab="datetime")

#3 plot
plot(as.POSIXct(paste(data_fin$Date,data_fin$Time), 
                format = "%d/%m/%Y %H:%M:%S"),
     data_fin$Sub_metering_1,
     type="l",
     col= "black",
     ylab="Energy sub metering",
     xlab="")

lines(as.POSIXct(paste(data_fin$Date,data_fin$Time), 
                 format = "%d/%m/%Y %H:%M:%S"),
      data_fin$Sub_metering_2,
      type="l",
      col= "red",
      ylab="",
      xlab="")

lines(as.POSIXct(paste(data_fin$Date,data_fin$Time), 
                 format = "%d/%m/%Y %H:%M:%S"),
      data_fin$Sub_metering_3,
      type="l",
      col= "blue",
      ylab="",
      xlab="")

#4 plot
plot(as.POSIXct(paste(data_fin$Date,data_fin$Time), 
                format = "%d/%m/%Y %H:%M:%S"),
     data_fin$Global_reactive_power,
     type="l",
     ylab="Global_reactive_power",
     xlab="datetime")

dev.off()
