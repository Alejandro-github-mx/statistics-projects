nitrox <- read.csv("../2022-02-18-tarea-phd-statistics/2019-1971-nitrous-TRANSPOSED-Poland.csv")
crops <- read.csv("../dataCropsTransposed.csv")
View(crops)
colnames(crops)

finalCrops <- crops[,c("Cereals..Total", 
                       "Roots.and.Tubers..Total",
                       "Potatoes")]
View(finalCrops)

CropsNitrox <- cbind(nitrox, finalCrops)
View(CropsNitrox)
summary(CropsNitrox)
