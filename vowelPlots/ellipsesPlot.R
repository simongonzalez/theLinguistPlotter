#loads libraries
#for data wrangling and plotting
library(tidyverse)
#getting vowel data and functions
library(vowels)

#loads the vowel data from the vowels library
data("ohiovowels")

#assgins the data to a dataframe with a new name
df <- ohiovowels

#plots by vowels
ggplot(df, aes(F2, F1, fill = vowel.frame, color = vowel.frame)) +
  #plots the ellipses
  stat_ellipse(geom = 'polygon', alpha = 0.7) +
  #supress legends for a cleaner plot
  guides(color = FALSE, fill = FALSE) +
  #reverse axes
  scale_x_reverse() + scale_y_reverse() +
  #sets a minimal plotting
  theme_minimal()

#saves the plot
ggsave('vowelPlotEllipses.png')
