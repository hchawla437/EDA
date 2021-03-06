d1<-read.table("./data/household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")
d1$timestamp<-paste(d1$Date,d1$Time)
d1$timestamp<-strptime(d1$timestamp, "%d/%m/%Y %H:%M:%S")
d1$Date<-as.Date(as.character(d1$Date),format="%d/%m/%Y")
d2<-subset(d1,d1$Date=="2007-02-01" | d1$Date=="2007-02-02")
d2$Voltage<-as.numeric(d2$Voltage)
d2$Global_reactive_power<-as.numeric(d2$Global_reactive_power)
d2$Sub_metering_1<-as.numeric(d2$Sub_metering_1)
d2$Sub_metering_2<-as.numeric(d2$Sub_metering_2)
d2$Sub_metering_3<-as.numeric(d2$Sub_metering_3)

par(mfcol=c(2,2))
plot(d2$timestamp,d2$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(d2$timestamp,d2$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(d2$timestamp,d2$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(d2$timestamp,d2$Global_active_power,type="l",xlab="datetime",ylab="Global_reactive_power")

png("plot4.png",width = 480,height=480)
dev.off()


