# load data
source('reading_Data.R')

# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(my_df_PC$DateTime,my_df_PC$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()