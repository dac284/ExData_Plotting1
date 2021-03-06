data <- read.table('household_power_consumption.txt',sep=';',header=F,skip=66637,nrows=2880)
dataColNames <- read.table('household_power_consumption.txt',sep=';',header=T,nrows=2)
colnames(data) <- colnames(dataColNames)
rm(dataColNames)
data$Date <- as.Date(data$Date, format = "%d/%m/%y")
par(mar = c(4,4,2,2))
hist(data$Global_active_power, main = "Global Active Power", xlab= "Global Active Power (kilowatts)", col = "red")
dev.copy(png,file = 'plot1.png', width = 480, height = 480)
dev.off()

