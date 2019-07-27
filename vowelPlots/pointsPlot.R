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
ggplot(df, aes(F2, F1, color = vowel.frame)) +
  #plots points
  geom_point() +
  #supress plotting legend for a cleaner plot
  guides(color = FALSE) +
  #reverse axes
  scale_x_reverse() + scale_y_reverse() +
  #sets a minimal plotting setting
  theme_minimal()

#saves the plotting
ggsave('vowelPlot.png')
