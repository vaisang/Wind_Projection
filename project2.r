#wind projection#
getwd()

setwd("C:/Program Files/Git/dev/R")
wd <- "C:/Program Files/Git/dev/R"
wd

dir()
list.files()

# Read CSV into R
wnd_data <- read.csv(paste(wd, "Windprojection.csv", sep="/"))

class(wnd_data)
head(wnd_data)
tail(wnd_data)
sapply(wnd_data,class)

#number of states operating in                     
levels(wnd_data$STATE)
nlevels(wnd_data$STATE)

#number of Facilities
nlevels(wnd_data$FACILITY_CODE)

#Range of nameplate capacity
range(wnd_data$NAMEPLATE)
#Range of operating year
range(wnd_data$OPERATING_YEAR)                     
                
#plot of nameplate cap vs operating year 
plot(wnd_data$OPERATING_YEAR, wnd_data$NAMEPLATE)

# r
r <- cor(wnd_data$OPERATING_YEAR, wnd_data$NAMEPLATE)
# sy
sy <- sd(wnd_data$NAMEPLATE)
# sx
sx <- sd(wnd_data$OPERATING_YEAR)
#  ybar
ybar <- mean(wnd_data$NAMEPLATE)
#  xbar
xbar <- mean(wnd_data$OPERATING_YEAR)
#  slope
slope <- (ybar / xbar)
int <- (ybar - slope * sx)
int








                                                         
