### Exploratory Data Analysis
### Coursera Data Science Specialization
### Plot 1

# Set working directory
setwd("~/Documents/Coursera - Data Science Specialization/Part 4 - Exploratory Data Analysis")

# Reading data into R
data <- read.table("household_power_consumption.txt", header = T, sep = ";", 
                   stringsAsFactors = F,
                   colClasses=c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'),
                   na.strings="?")
df <-data[data$Date %in% c("1/2/2007","2/2/2007"),] 
df$datetime<-strptime(paste(df$Date,df$Time),"%d/%m/%Y %H:%M:%S")

# Plot 1
png("plot1.png", height = 480, width = 480)
hist(df$Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",
     cex.axis=0.75)
dev.off()