# R code from Forecasting text book

# Load packages
library(tidyverse)
library(fpp2)
library(GGally)

# a ts object is used to represent time series data
# convert an object to a ts object using ts()

y <- ts(c(123,39,78,52,110), start=2012)

# Time series plot of Economy class passengers
autoplot(melsyd[,"Economy.Class"]) +
  ggtitle("Economy class passengers: Melbourne-Sydney") +
  xlab("Year") +
  ylab("Thousands")


# Seasonal Plots
ggseasonplot(a10, year.labels=TRUE, year.labels.left=TRUE) +
  ylab("$ million") +
  ggtitle("Seasonal plot: antidiabetic drug sales")


# Plotting multiple variables against one another in a grid
GGally::ggpairs(as.data.frame(visnights[,1:5]))


#... 2.8 Autocorrelation
