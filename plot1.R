source("./loadData.R")
power<-loadData()

hist(power$Global_active_power, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)"
     )
dev.copy(png, file = "./plot1.png")
dev.off()

