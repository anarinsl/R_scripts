# Script used to follow Chapter 2 of R4 Data Science (2e)

# Load packages
library(tidyverse)
library(palmerpenguins)
library(ggthemes)


# load penguins data frame
mydata <- penguins


# Create plot
myplot <- ggplot(
  data = mydata,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "and this is the subtitle",
    x = "Flipper length (mm)",
    y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) + 
  scale_color_colorblind()

# View plot
myplot

# ------- Exercises --------

# How many rows are in penguins?
nrow(mydata)

# What does the bill_depth_mm variable in the penguins data frame describe? Read the help for ?penguins to find out.
?penguins

# Make a scatterplot of bill_depth_mm vs. bill_length_mm. That is, make a scatterplot with bill_depth_mm on the y-axis and bill_length_mm on the x-axis. Describe the relationship between these two variables.
ggplot(data = mydata,
       mapping = aes(x = bill_depth_mm, y = bill_length_mm)
       ) +
  geom_point(aes(color = species))

# 27/08/23 Continue from here 


