### Exploratory Data Analysis
### Coursera Data Science Specialization
### Plot 2 - URL: https://github.com/jamesclarence/ExData_Plotting1/blob/master/figure/unnamed-chunk-3.png

# Set working directory
setwd("~/Documents/Coursera - Data Science Specialization/Part 4 - Exploratory Data Analysis")

# Reading data into R
data <- read.table("household_power_consumption.txt", header = T, sep = ";", 
                   stringsAsFactors = F,
                   colClasses=c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'),
                   na.strings="?")
df <-data[data$Date %in% c("1/2/2007","2/2/2007"),] 
df$datetime<-strptime(paste(df$Date,df$Time),"%d/%m/%Y %H:%M:%S")

# Plot 2
png("plot2.png", height = 480, width = 480)
plot(df$datetime, df$Global_active_power, type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()

ylab = "Global Active Power (kilowatts)"