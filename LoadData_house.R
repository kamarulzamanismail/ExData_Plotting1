house <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
> house$dt <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
> house$Date <- as.Date(hpc$Date, "%d/%m/%Y")
> house_sub <- subset(hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))