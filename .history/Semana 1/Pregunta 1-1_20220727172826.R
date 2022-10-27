# https://ourworldindata.org/world-population-update-2022

pop <- read.csv("./Semana 1/population-and-demography.csv")

Is.Afghanistan <- pop$Country.name=="Afghanistan"

Afghanistan <- pop[Is.Afghanistan, ]

print(Afghanistan)