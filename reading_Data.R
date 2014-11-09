# required packages
library(data.table)
library(lubridate)


# read the data
column.class<-c(rep('character',2),rep('numeric',7))

#set working directory
#setwd("D:/Cousera/Data science specialization/4-expolatory data analysis/exdata_data_household_power_consumption")

# Make sure that household_power_consumption.txt is in your working directory
my_df_PC<-read.table('household_power_consumption.txt',header=TRUE,
                              sep=';',na.strings='?',colClasses=column.class)

# selecting data from only two days
my_df_PC<-my_df_PC[my_df_PC$Date=='1/2/2007' | my_df_PC$Date=='2/2/2007',]

# Rename variable names according to UCI web site and convert date/time fields
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')


colnames(my_df_PC)<-cols


my_df_PC$DateTime<-dmy(my_df_PC$Date)+hms(my_df_PC$Time)
my_df_PC<-my_df_PC[,c(10,3:9)]

