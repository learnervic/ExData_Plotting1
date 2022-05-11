
cons <- read.table("C:/Users/elerner/downloads/household_power_consumption.txt",header = T,sep = ";", na.strings = "?")


cons$Date <- as.Date(data$Date, format = "%d/%m/%Y")

data <- subset(cons, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

hist(cons$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

