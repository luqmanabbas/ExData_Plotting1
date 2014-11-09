# load data
source('reading_Data.R')

# open device
png(filename='plot3.png',width=480,height=480,units='px')

# set colors
colors<-c('black','red','blue')

#set labels
lables<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')

#plot the data
plot(my_df_PC$DateTime,my_df_PC$SubMetering1,type='l',col=colors[1],xlab='      ',ylab='Energy sub metering')

# add red lines

lines(my_df_PC$DateTime,my_df_PC$SubMetering2,col=colors[2])

# add blue lines
lines(my_df_PC$DateTime,my_df_PC$SubMetering3,col=colors[3])

# add legend
legend('topright',legend=lables,col=colors,lty='solid')

# close device
x<-dev.off()