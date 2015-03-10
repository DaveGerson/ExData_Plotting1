setwd("C:/Users/gerson64/Desktop/Dropbox Sync/Dropbox/Coursera/ExploratoryAnalysis/project1")
DF <- read.csv("household_power_consumption.txt", sep = ";" , na.strings = "?" , 
	stringsAsFactors = FALSE )
DF <- DF[ DF$Date == "1/2/2007" | DF$Date == "2/2/2007" ,]
DF$DateTime <- strptime(paste(DF$Time , DF$Date) , format="%H:%M:%S %d/%m/%Y")
options(scipen=999)
####Plot 4
png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2)) 
plot( DF$DateTime , DF$Global_active_power , type = "l" ,
 xlab = "" , ylab = "Global Active Power (kilowatts)" )
plot( DF$DateTime , DF$Voltage , type = "l" ,
 xlab = "datetime" , ylab = "Voltage" )
plot( DF$DateTime , DF$Sub_metering_1 , type = "l" ,
 xlab = "" ,  ylab = "Energy sub metering")
lines( DF$DateTime , DF$Sub_metering_2 , col = "red")
lines( DF$DateTime , DF$Sub_metering_3 , col = "blue")
legend("topright", inset= .0 , 
 c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
lty=c(1,1), 
lwd=c(1,1),col=c("black","blue","red")) 
plot( DF$DateTime , DF$Global_reactive_power , type = "l" ,
 xlab = "datetime" , ylab = "Global_reactive_power" )
dev.off()