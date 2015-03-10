setwd("C:/Users/gerson64/Desktop/Dropbox Sync/Dropbox/Coursera/ExploratoryAnalysis/project1")
DF <- read.csv("household_power_consumption.txt", sep = ";" , na.strings = "?" , 
	stringsAsFactors = FALSE )
DF <- DF[ DF$Date == "1/2/2007" | DF$Date == "2/2/2007" ,]
DF$DateTime <- strptime(paste(DF$Time , DF$Date) , format="%H:%M:%S %d/%m/%Y")
options(scipen=999)
####Plot 3
png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot( DF$DateTime , DF$Sub_metering_1 , type = "l" ,
 xlab = "" ,  ylab = "Energy sub metering")
lines( DF$DateTime , DF$Sub_metering_2 , col = "red")
lines( DF$DateTime , DF$Sub_metering_3 , col = "blue")
legend("topright", inset= .0 , 
 c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
lty=c(1,1), 
lwd=c(2.5,2.5),col=c("black","blue","red")) 
dev.off()