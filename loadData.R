loadData<-function() {
  power<-read.csv("./household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
  power<-subset(power, Date=="1/2/2007" | Date=="2/2/2007")
  power$DateTime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
  power$Global_active_power<-as.numeric(power$Global_active_power)
  power$Global_reactive_power<-as.numeric(power$Global_reactive_power)
  power$Voltage<-as.numeric(power$Voltage)
  power$Sub_metering_1<-as.numeric(power$Sub_metering_1)
  power$Sub_metering_2<-as.numeric(power$Sub_metering_2)
  power$Sub_metering_3<-as.numeric(power$Sub_metering_3)
  power
}