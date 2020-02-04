setwd("E://data science//Exploratory data analysis//Week1")
library(data.table)
data<-fread("household_power_consumption.txt", na.strings = "?")
rdata<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
png(filename = "plot2.png")
datetime <- strptime(paste(rdata$Date, rdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime,rdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()
