# Take data from
source('reading_Data.R')

# open device for png
png(filename='plot1.png',width=480,height=480,units='px')

# plot
hist(my_df_PC$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()