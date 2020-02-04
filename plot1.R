setwd("E://data science//Exploratory data analysis//Week1")
library(data.table)
data<-fread("household_power_consumption.txt", na.strings = "?")
rdata<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
png(filename = "plot1.png")
hist(as.numeric(rdata$Global_active_power), col = "red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
