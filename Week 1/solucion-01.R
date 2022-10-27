# https://ourworldindata.org/world-population-update-2022
# https://www.kaggle.com/datasets/julihocc/world-population-update-2022

print("Actividad 2")
pop <- read.csv("./Week 1/population-and-demography.csv")
print(head(pop))

print("Actividad 3")
isMexico <- pop$Country.name=="Mexico"
mexico = pop[isMexico,]
print(head(mexico))

print("Actividad 4")
print(sum(isMexico))

print("Actividad 5")
print(mean(mexico$Population.growth.rate))

print("Actividad 6")
cumprodMexico <- cumprod(mexico$Population.growth.rate/100+1)-1
print(cumprodMexico[length(cumprodMexico)])