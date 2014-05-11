source("./loadData.R")
power<-loadData()

plot(power$DateTime, 
     power$Global_active_power, 
     type="n", 
     xlab="",
     ylab="Global Active Power (kilowatts)"
     )
lines(power$DateTime, power$Global_active_power)
dev.copy(png, file = "./plot2.png")
dev.off()

