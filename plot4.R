source("read_data.R")
png("plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
data <- read_data()
with(data, plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power",type='s'))
with(data, plot(DateTime,Voltage,xlab="datetime",ylab="Voltage",type='s'))
with(data, 
     plot(DateTime,Sub_metering_1,type='s',
          xlab="",ylab="Energy sub metering"
     ))
with(data,lines(DateTime,Sub_metering_2,col="red"))
with(data,lines(DateTime,Sub_metering_3,col="blue"))
with(data,legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                 col=c("black","red","blue"),lty=c(1,1,1),bty='n'))
with(data,plot(DateTime,Global_reactive_power,xlab="datetime",type='s'))
dev.off()