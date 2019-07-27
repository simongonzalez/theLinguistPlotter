#loads libraries
#for data wrangling and plotting
library(tidyverse)
#getting vowel data and functions
library(vowels)

#loads the vowel data from the vowels library
data("ohiovowels")

#assgins the data to a dataframe with a new name
df <- ohiovowels

#calculates mean values per vowel
dfMean <- df %>% group_by(vowel.frame) %>%
  summarise(F1 = mean(F1), F2 = mean(F2))

#plot by vowels
ggplot(dfMean, aes(F2, F1, color = vowel.frame, label = vowel.frame)) +
  #plot labels
  geom_label() +
  guides(color = FALSE) +
  scale_x_reverse() + scale_y_reverse() +
  theme_minimal()

ggsave('vowelPlotLabels.png')
