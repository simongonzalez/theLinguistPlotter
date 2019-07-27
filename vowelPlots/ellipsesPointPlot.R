#loads libraries
#for data wrangling and plotting
library(tidyverse)
#getting vowel data and functions
library(vowels)

#loads the vowel data from the vowels library
data("ohiovowels")

#assgins the data to a dataframe with a new name
df <- ohiovowels

#plot by vowels
ggplot(df, aes(F2, F1, color = vowel.frame, fill = vowel.frame)) +
  #plots points
  geom_point(alpha = 0.6) +
  #plots ellipses
  stat_ellipse(geom = 'polygon', alpha = 0.7) +
  #supress legends for a cleaner plot
  guides(color = FALSE, fill = FALSE) +
  #reverse axes
  scale_x_reverse() + scale_y_reverse() +
  #sets minimal plot
  theme_minimal()

ggsave('vowelPlotPointEllipses.png')
