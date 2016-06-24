dat <- read.table("C:/Users/Usuario/Documents/Datascience/Exploratory/Week 1/Quiz 1/household_power_consumption.txt", sep = ";", header = TRUE)
View(dat)
datsub <- dat[dat$Date == "1/2/2007" | dat$Date ==  "2/2/2007",]
View(datsub)


png('Plot 3.png', width = 480, height = 480)
par(mar=c(5.1, 4.1, 4.1, 2.1))

hist(as.numeric(datsub$Global_active_power), col='red', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main='Global Active Power')

dev.off()