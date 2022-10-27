library(dplyr)
library(ggplot2)
library(readr)
library(tidyverse)
library(hrbrthemes)
library(viridis)

#https://ourworldindata.org/tourism
arrivals <- read_csv("Week 3/international-tourism-number-of-arrivals.csv") %>%
  rename(Arrivals = `International tourism, number of arrivals`)

head(arrivals)

countries <- arrivals %>% 
  filter(!is.na(Code)) %>%
  distinct(Code) %>%
  mutate(CodeLen = apply(., 2, nchar)) %>%
  filter(CodeLen <= 3) %>%
  select(Code)

arrivals <- arrivals %>%
  filter(Code %in% countries$Code) %>%
  mutate(Code = factor(Code))

arrivals <-arrivals %>%
  filter(Year >= 2000)

top_arrivals <- arrivals %>%
  group_by(Code) %>%
  summarise(mean.arrivals = mean(Arrivals)) %>%
  arrange(desc(mean.arrivals)) %>%
  head(n = 10)

arrivals <- arrivals %>%
  filter(Code %in% top_arrivals$Code) 

by(arrivals$Arrivals, arrivals$Entity, summary) 

arrivals %>%
  ggplot( aes(x=reorder(Entity, -Arrivals), y=Arrivals, fill=Entity)) +
  geom_boxplot() +
  geom_jitter(width=0.15, alpha=0.1)+
  theme(axis.text.x = element_text(angle = 90))

