#Q1
ufo_data <- read.csv("ufo.csv", na = "")
ufo_data

str(ufo_data)
head(ufo_data, 15)
install.packages("plyr")
library(plyr)
count(ufo_data)

#Q2

ufo_data$datetime
converted_date <- as.Date(ufo_data$datetime, "%m/%d/%y")
converted_date
ufo_data$Date = converted_date
ufo_data$Date
# Examine the structure of managers date field
str(ufo_data$datetime)

#Q3




#Q4
 names(ufo_data)
 names(ufo_data)[names(ufo_data) == 'duration..seconds.'] <- 'DurationSeconds'
 names(ufo_data)[names(ufo_data) == 'duration..hours.min.'] <- 'DurationHrsMins'
 names(ufo_data)[names(ufo_data) == 'date.posted'] <- 'DatePosted'
 
 names(ufo_data)
 
 #Q5
 ufo_data$latitude <- as.numeric(ufo_data$latitude)
 str(ufo_data)
 
 #Q6
 
 sum(!complete.cases(ufo_data))
 sum(complete.cases(ufo_data))
 colSums(is.na(ufo_data))
 
 install.packages("mice")
 library(mice)
 md.pattern(ufo_data)
 
 install.packages("VIM")
 library(VIM)
 # prop = proportions, numbers either shows or suppresses the numeric labels 
 missing_values <- aggr(ufo_data, prop = TRUE, numbers = FALSE)
 # Show summary of the contents of missing_values
 summary(missing_values)
 
 #Q8
 attach(ufo_data)
 df1 <- ufo_data[order(ufo_data$shape, ufo_data$city),]                   
 sorted_ufo_data <- df1[names(df1) %in% c("datetime", "city", "country", "shape")]
head(sorted_ufo_data, 15)
 
#Q9

ufo_gb_disk <- subset(ufo_data, country == "gb" & shape == "disk")
ufo_gb_disk

nrow(ufo_gb_disk)

write.csv(ufo_data, file = "modified_ufo.csv")





 
 
 
 
 
 
 




