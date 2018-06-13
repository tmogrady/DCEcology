library(tidyverse)

download.file("https://ndownloader.figshare.com/files/2292169",
              "data/portal_data_joined.csv")

surveys <- read.csv("data/portal_data_joined.csv")
surveys
View(surveys)
head(surveys)
str(surveys)
?str()
#we need a comment here

str(surveys)

sex <- factor(c("male","female","female","male"))
levels(sex)
nlevels(sex)

lvls <- factor(c("high","medium","low"))
levels(lvls)

lvls <- factor(lvls, levels = c("low","medium","high"))
levels(lvls)
lvls <- factor(c("high","medium","low"), levels=c("high","medium","low"))
levels(lvls)

as.character(lvls)
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(as.character(year_fct))
as.numeric(levels(year_fct))[year_fct]

plot(surveys$sex)
levels(surveys$sex)
sex <- surveys$sex
levels(sex)
levels(sex)[1] <- "undetermined"
levels(sex)
plot(sex)

#we renamed a level using: 
levels(sex)[1] <- "undetermined"
#we changed the order of levels using:
lvls <- factor(lvls, levels = c("low","medium","high"))

#Rename “F” and “M” to “female” and “male” respectively:
levels(sex)[2:3] <- c("female","male")
#Change the order of the factors:
sex <- factor(sex, levels=c( "female", "male","undetermined"))
#plot:
plot(sex)

surveys <- read.csv("data/portal_data_joined.csv", 
                    stringsAsFactors = TRUE)
str(surveys)

surveys <- read.csv("data/portal_data_joined.csv", 
                    stringsAsFactors = FALSE)
str(surveys)

surveys$genus <- factor(surveys$genus)
str(surveys)

library(lubridate)

install.packages("lubridate")
install.packages("stringi")

library(tidyverse)
#need to fix some things here
