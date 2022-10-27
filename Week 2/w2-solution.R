library(readr)

median_age <- read_csv("Week 2/median-age.csv", 
                       col_types = cols(Year = col_integer()))
head(median_age)

median_age_2015 <- na.omit(median_age[median_age$Year==2015,])
head(median_age_2015)

unique(median_age_2015$Code)
owid_list <- c("OWID_CIS", "OWID_MNS", "OWID_PYA", "OWID_WRL") 

median_age_2015 <- median_age_2015[! median_age_2015$Code %in% owid_list,]
unique(median_age_2015$Code)

#?qplot

data <- cut(median_age_2015$`UN Population Division (Median Age) (2017)`, 10)

table(data) %>%
  as.data.frame() %>%
  ggplot(aes(x=data, y=Freq)) + 
  geom_col()

