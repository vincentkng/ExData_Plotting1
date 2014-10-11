
source("data.R")

# Initialize graphic device
png(filename="plot2.png", width=480, height=480, units="px")

# Plot chart
plot(usage$datetime, usage$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Close graphic device
dev.off()
