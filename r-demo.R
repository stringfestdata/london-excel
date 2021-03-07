# Do this once
# install.packages('tidyverse')

# "Open the app"
library(tidyverse)

# Pull a dataset from this tidyverse package
library(ggplot2)
diamonds

## Explore the dataset

# Spreadsheet-like viewer
View(diamonds)

# Stats are R's jam
summary(diamonds)


# "Get me the average price 
# for each cut, sorted 
# from high to low." 

diamonds %>% 
  group_by(cut) %>% 
  summarise(avg_price = mean(price)) %>% 
  arrange(desc(avg_price))
