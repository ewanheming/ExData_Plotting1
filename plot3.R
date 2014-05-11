source("./loadData.R")
power<-loadData()

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

dev.copy(png, file = "./plot3.png")
dev.off()
