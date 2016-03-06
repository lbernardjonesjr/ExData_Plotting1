dataFile <- "Source_Classification_Code.rds"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
activePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(activePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
