# plot1.r
# Author Pierre Evans
# Purpose - examine how household energy usage varies over a 2 day period in February 2007  and construct a plot 'Global Active Power' based on the data
# Date 5/1/2016
#
#Methodology
# Access R graphics library
# Open  file
# Filter records to desired date
# Plot Data
# Save File 

library(ggplot2)
setwd("c:/users/pae/downloads")
windows.options(width=480,height=480)
datafile <-data.frame()
datafile <- read.csv("household_power_consumption.txt",header=TRUE,sep=";")
Start_date <-as.Date("01/02/2007")
End_date   <-as.Date("02/02/2007")
df13 <-datafile[,c(1,3)]
converted_dates  <-as.Date(df13$Date, format="%D/%M/%Y"), df13$Global_active_power,)
filtered_data <-converted_dates [converted_dates$date>=Start_date & converted_dates$date <=End_date,converted_Dates$Global_active_power,]
cleaned_and_filtered_data <-na.omit(filtered_data)
hist(cleaned_and_filtered_data$Global_active_power,main="Global Active Power",col="orange",xlab="Global Active Power (kilowatts)",xlim=c(0,6),ylab="Frequency",ylim=c(0,1200))
dev.copy(png,file="plot1.png")
dev.off()




