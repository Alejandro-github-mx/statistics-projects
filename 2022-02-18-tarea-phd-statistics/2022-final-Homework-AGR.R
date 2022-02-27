# Script for Crops dataset merge
## Akademia Leona Kozminskiego
### Class: Quantitative Methods
### Student: Alejandro Guzmán Rivera (23-DS)

## 1. Import the dataset

nitrox <- read.csv("../2022-02-18-tarea-phd-statistics/2019-1971-nitrous-TRANSPOSED-Poland.csv")
crops <- read.csv("../dataCropsTransposed.csv")

## 2. Check crops dataset characteristics
View(crops)
colnames(crops)

## 3. Create the dataset I will work with
finalCrops <- crops[,c("Cereals..Total", 
                       "Roots.and.Tubers..Total",
                       "Potatoes")]
View(finalCrops)

## 5. Merge Nitrox & finalCrops datasets
CropsNitrox <- cbind(nitrox, finalCrops)
View(CropsNitrox)

## 6. Summary of CropsNitrox dataset
summary(CropsNitrox)


## 7. Export CropsNitrox dataset
write.csv(CropsNitrox, 
          "C:\\Users\\USER\\Documents\\Desarrollador\\PYTHON\\2021-Python-exercises\\statistics-projects\\CropsNitrox.csv",
          row.names = TRUE)


getwd()