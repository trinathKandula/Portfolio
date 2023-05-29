install.packages("ggthemes") # Install 
library(ggthemes) # Load
library(scales) # used this library to display comma in y axis
library(ggplot2)
library(tidyverse)

mydata = read.csv("C:\\Users\\Student\\Downloads\\CovidDataCanada.csv")
dt = strftime(mydata$date_active, format="%Y/%m")
short.date = strftime(mydata$date_active, "%Y/%m")

aggr.stat = aggregate(cbind(cumulative_cases,cumulative_deaths)~short.date, mydata,FUN = max)



p <- ggplot(aggr.stat, aes(x=short.date, group = 1))
p <- p + geom_line(aes(y = cumulative_deaths, colour = "Cumulative Deaths"))#darkred
p <- p + geom_line(aes(y = cumulative_cases/38,  colour = "Cumulative Cases"))#darkgreen
p <- p + scale_y_continuous(sec.axis = sec_axis(~.*38, name = "Cumulative Cases" , labels = comma),labels = comma)

p <- p + labs(y = "Cumulative Deaths",x = "Year and Month",colour = "")
p <- p + theme_tufte()+ ggtitle("Canada Covid-19 Status")
p <- p + scale_colour_manual(values = c("darkgreen", "darkred"))
#ref:  https://ggplot2.tidyverse.org/reference/theme.html
p <- p + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),legend.position = c(0.8, 0.15),
               legend.direction = "horizontal",
               panel.border = element_rect(colour = "black", fill=NA, size=0.5))



p