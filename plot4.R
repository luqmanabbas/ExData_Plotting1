# load data
source('reading_Data.R')


# open graphics device
png(filename='plot4.png',width=480,height=480,units='px')

# for plotting 4 plots
par(mfrow=c(2,2))

# top left plot
plot(my_df_PC$DateTime,my_df_PC$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

# top right plot
plot(my_df_PC$DateTime,my_df_PC$Voltage,xlab='datetime',ylab='Voltage',type='l')

# bottom left plot

#set colors
colors<-c('black','red','blue')

#set labels
label<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')

#plot with specs 
plot(my_df_PC$DateTime,my_df_PC$SubMetering1,type='l',col=colors[1],xlab='',ylab='Energy sub metering')
lines(my_df_PC$DateTime,my_df_PC$SubMetering2,col=colors[2])
lines(my_df_PC$DateTime,my_df_PC$SubMetering3,col=colors[3])
# add legend / be sure to remove box of legend by bty ="n"
legend('topright',legend=label,col=colors,lty='solid',bty="n")

# bottom right plot
plot(my_df_PC$DateTime,my_df_PC$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

# close device
x<-dev.off()