setwd("C:/Users/gerson64/Desktop/Dropbox Sync/Dropbox/Coursera/ExploratoryAnalysis/project1")
DF <- read.csv("household_power_consumption.txt", sep = ";" , na.strings = "?" , 
	stringsAsFactors = FALSE )
DF <- DF[ DF$Date == "1/2/2007" | DF$Date == "2/2/2007" ,]
DF$DateTime <- strptime(paste(DF$Time , DF$Date) , format="%H:%M:%S %d/%m/%Y")
options(scipen=999)
####Plot 1
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(DF$Global_active_power , col="red" , main = paste("Global Active Power") 
, xlab = "Global Active Power (kilowatts)" )
dev.off()