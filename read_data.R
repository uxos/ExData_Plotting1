read_data <- function( file = "./household_power_consumption.txt" ){
    data <- read.table("household_power_consumption.txt",header=FALSE,
               sep = ';',skip=66637,nrows=2880,na.strings = c("?"),
               col.names=c("Date","Time","Global_active_power",
                           "Global_reactive_power","Voltage","Global_intensity",
                           "Sub_metering_1","Sub_metering_2","Sub_metering_3"
                          )
               )
    data$DateTime <- strptime(paste(data$Date,data$Time,sep="T"), format="%d/%m/%YT%H:%M:%S")
    data[,c("DateTime","Global_active_power","Global_reactive_power",
            "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2",
            "Sub_metering_3")]
}