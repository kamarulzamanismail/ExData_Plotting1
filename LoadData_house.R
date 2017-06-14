house <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
house$dt <- strptime(paste(house$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
house$Date <- as.Date(house$Date, "%d/%m/%Y")
house_sub <- subset(house, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))