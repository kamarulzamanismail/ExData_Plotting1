plot(house_sub$dt, house_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, 'plot2.png')
dev.off()