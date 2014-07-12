### Exploratory Data Analysis
### Coursera Data Science Specialization
### Plot 4

setwd("~/Documents/Coursera - Data Science Specialization/Part 4 - Exploratory Data Analysis")

# Reading data into R
data <- read.table("household_power_consumption.txt", header = T, sep = ";", 
                   stringsAsFactors = F,
                   colClasses=c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'),
                   na.strings="?")
df <-data[data$Date %in% c("1/2/2007","2/2/2007"),] 
df$datetime<-strptime(paste(df$Date,df$Time),"%d/%m/%Y %H:%M:%S")

# Plot 4
png("plot4.png", height = 480, width = 480)
par(mfrow=c(2,2))

# Plot 1
plot(df$datetime, df$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

# Plot 2
plot(df$datetime,df$Voltage, type="l",
     xlab = "datetime",
     ylab = "Voltage")

# Plot 3
plot(df$datetime,df$Sub_metering_1, type="l",
     xlab="",
     ylab= "Energy sub metering")
lines(df$datetime,df$Sub_metering_2, col="red")
lines(df$datetime,df$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       col = c("black", "red","blue"), lty=1, bty="n")

# Plot 4
plot(df$datetime, df$Global_reactive_power, type="l",
     xlab="datetime",
     ylab="Global_reactive_power")
dev.off()

