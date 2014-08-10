source("read_data.R")
png("plot2.png",width = 480, height = 480)
with(read_data(), 
     plot(DateTime,Global_active_power,type='s',
          xlab="",ylab="Global Active Power (kilowatts)"
          )
    )
dev.off()
