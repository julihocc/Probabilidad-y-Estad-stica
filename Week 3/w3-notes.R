library(dplyr)
library(ggplot2)

library(tidyverse)
library(hrbrthemes)
library(viridis)


# https://r-graph-gallery.com/boxplot.html

head(iris)

iris %>%
  ggplot( aes(x=Species, y=Petal.Length, fill=Species)) + 
  geom_boxplot()

head(airquality)

by(airquality$Temp, airquality$Month, mean) 

airquality %>%
  mutate(Month = factor(Month)) %>%
  ggplot( aes(x=Month, y=Temp, fill=Month)) + 
  geom_boxplot()

airquality %>%
  mutate(Month = factor(Month)) %>%
  ggplot( aes(x=Month, y=Temp, fill=Month)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("A boxplot with jitter") +
  xlab("") 
