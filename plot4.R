dat <- read.table("C:/Users/Usuario/Documents/Datascience/Exploratory/Week 1/Quiz 1/household_power_consumption.txt", sep = ";", header = TRUE)
View(dat)
datsub <- dat[dat$Date == "1/2/2007" | dat$Date ==  "2/2/2007",]
View(datsub)

DT <- paste(datsub$Date,datsub$Time, sep= ' ')
DT2 <- as.POSIXlt(DT,format="%d/%m/%Y %H:%M:%S")

png('Plot 4.png', width = 480, height = 480)
par(mar=c(5.1, 4.1, 4.1, 2.1), mfrow = c(2,2))


plot(DT2, as.numeric(datsub$Global_active_power), type='l', xlab = '', ylab = 'Global Active Power (kilowatts)')
plot(DT2, as.numeric(datsub$Voltage), type='l', xlab = 'datetime', ylab = 'Voltage')

plot(DT2, as.numeric(datsub$Sub_metering_1), type='l', col = 'black', xlab = '', ylab = 'Energy sub metering')
lines(DT2, as.numeric(datsub$Sub_metering_2), type='l', col = 'red' , xlab = '', ylab = 'Energy sub metering') 
lines(DT2, as.numeric(datsub$Sub_metering_3), type='l', col = 'blue', xlab = '', ylab = 'Energy sub metering') 
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lwd = 2.5, lty = 1, bty = 'n')
plot(DT2, as.numeric(datsub$Global_reactive_power), type='l', lwd = 0.1, xlab = 'datetime', ylab = 'Global_reactive_power')

dev.off()