dat <- read.table("C:/Users/Usuario/Documents/Datascience/Exploratory/Week 1/Quiz 1/household_power_consumption.txt", sep = ";", header = TRUE)
View(dat)
datsub <- dat[dat$Date == "1/2/2007" | dat$Date ==  "2/2/2007",]
View(datsub)

DT <- paste(datsub$Date,datsub$Time, sep= ' ')
DT2 <- as.POSIXlt(DT,format="%d/%m/%Y %H:%M:%S")


png('Plot 2.png', width = 480, height = 480)
par(mar=c(5.1, 4.1, 4.1, 2.1))

plot(DT2, as.numeric(datsub$Global_active_power), type='l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()
