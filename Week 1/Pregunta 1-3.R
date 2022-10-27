# https://ourworldindata.org/world-population-update-2022

pop <- read.csv("./Semana 1/population-and-demography.csv")

IsMexico <- pop$Country.name=="Mexico"

print(sum(IsMexico))
