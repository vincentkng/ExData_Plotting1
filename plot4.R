
source("data.R")

# Initialize graphic device
png(filename="plot4.png", width=480, height=480, units="px")

par(mfrow=c(2,2))

# Plot chart #1
plot(usage$datetime, usage$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# Plot chart #2
plot(usage$datetime, usage$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Plot chart #3
plot(usage$datetime, usage$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(usage$datetime, usage$Sub_metering_2, col="red")
lines(usage$datetime, usage$Sub_metering_3, col="blue")
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lwd=1)

# Plot chart #4
plot(usage$datetime, usage$Global_reactive_power, type="l",  xlab="datetime", ylab="Global_reactive_power")

# Close graphic device
dev.off()