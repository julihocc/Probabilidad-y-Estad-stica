#install.package("ggplot2")
library(ggplot2) 
library(dplyr)

#?rnorm
normal_sample <- rnorm(100,0,1)

#?qplot
qplot(normal_sample, bins = 6)

qplot(mtcars$carb, bins=8)

tempCut <- cut(airquality$Temp, 9)

table(tempCut) 

# https://stackoverflow.com/questions/42231363/defined-interval-in-r-by-cut-and-make-a-histogram-plot
# https://ggplot2.tidyverse.org/reference/geom_bar.html

table(tempCut) %>% 
  as.data.frame() %>%
  ggplot(aes(x = tempCut, y = Freq)) + 
  geom_col()

print(table(mtcars$carb) / length(mtcars$carb))
print(prop.table(table(mtcars$carb)))

propCarbs <- prop.table(table(mtcars$carb))

propCarbs %>% 
  as.data.frame() %>%
  ggplot(aes(x = Var1, y = Freq)) + 
  geom_col()
