
# Read dataset
usage <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?",
                    colClasses=c("character", "character", "numeric", "numeric", "numeric",
                                 "numeric", "numeric", "numeric", "numeric"))

# Create DateTime column
usage$datetime <- paste(usage$Date, usage$Time, sep=' ')

# Convert DateTime column
usage$datetime <- strptime(usage$datetime, format="%d/%m/%Y %H:%M:%S")

#Filter out all records between 2007-02-01 and 2007-02-02
usage <- usage[usage$datetime>="2007-02-01 00:00:00" & usage$datetime<="2007-02-02 23:59:59",]
