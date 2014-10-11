
source("data.R")

# Initialize graphic device
png(filename="plot3.png", width=480, height=480, units="px")

# Plot chart
plot(usage$datetime, usage$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(usage$datetime, usage$Sub_metering_2, col="red")
lines(usage$datetime, usage$Sub_metering_3, col="blue")
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
              col=c("black", "red", "blue"), lwd=1)

# Close graphic device
dev.off()