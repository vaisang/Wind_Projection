#wind projection-----------------------------------------------
getwd()

setwd("C:/Program Files/Git/dev/R")
wd <- "C:/Program Files/Git/dev/R"
wd

dir()
list.files()

# Read full data CSV into R
wnd_data <- read.csv(paste(wd, "Windprojection.csv", sep="/"))
class(wnd_data)
head(wnd_data)
tail(wnd_data)
sapply(wnd_data,class)

#2015 data
wnd15 <- read.csv(paste(wd, "wndproj2015.csv", sep = "/"))
class(wnd15)
head(wnd15)
tail(wnd15)
sapply(wnd15,class)

#2016 data
wnd16 <- read.csv(paste(wd, "wndproj2016.csv", sep = "/"))
class(wnd16)
head(wnd16)
tail(wnd16)
sapply(wnd16,class)

#2017 data 
wnd17 <- read.csv(paste(wd, "wndproj2017.csv", sep = "/"))
class(wnd17)
head(wnd17)
tail(wnd17)
sapply(wnd17,class)


#plotting all data
library(gridExtra)
grid.table(wnd_data)


#number of states operating in                     
levels(wnd_data$STATE)
nlevels(wnd_data$STATE)

#number of Facilities
wnd_data$FACILITY_CODE <- as.factor(wnd_data$FACILITY_CODE)
sapply(wnd_data, class)

levels(wnd_data$FACILITY_CODE)
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

#plotting facilities on map
