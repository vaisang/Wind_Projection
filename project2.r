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

                     
levels(wnd_data$COUNTY)
nlevels(wnd_data$COUNTY)
                     
                     
                
                     
                     
                                                         