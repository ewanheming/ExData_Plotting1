source("./loadData.R")
power<-loadData()

par(mfrow = c(2, 2))

plot(power$DateTime, 
     power$Global_active_power, 
     type="n", 
     xlab="",
     ylab="Global Active Power"
)
lines(power$DateTime, power$Global_active_power)

plot(power$DateTime, 
     power$Voltage, 
     type="n", 
     xlab="datetime",
     ylab="Voltage"
)
lines(power$DateTime, power$Voltage)

plot(power$DateTime, 
     power$Sub_metering_1, 
     type="n", 
     xlab="",
     ylab="Energy sub metering"
)
lines(power$DateTime, power$Sub_metering_1, col="black")
lines(power$DateTime, power$Sub_metering_2, col="red")
lines(power$DateTime, power$Sub_metering_3, col="blue")
legend("topright", 
       lty=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)

plot(power$DateTime, 
     power$Global_reactive_power, 
     type="n", 
     xlab="datetime",
     ylab="Global_reactive_power"
)
lines(power$DateTime, power$Global_reactive_power)

dev.copy(png, file = "./plot4.png")
dev.off()
