
source("data.R")

# Initialize graphic device
png(filename="plot1.png", width=480, height=480, units="px")

# Plot chart
hist(usage$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

# Close graphic device
dev.off()
