# 1. Importing the dataset

nitrox <- read.csv("../2022-02-18-tarea-phd-statistics/2019-1971-nitrous-TRANSPOSED-Poland.csv")
crops <- read.csv("../dataCropsTransposed.csv")

# 2. Checking crops dataset characteristics
View(crops)
colnames(crops)

# 3. Creating the dataset I will work with
finalCrops <- crops[,c("Cereals..Total", 
                       "Roots.and.Tubers..Total",
                       "Potatoes")]
View(finalCrops)

# 5. Merging Nitrox & finalCrops datasets
CropsNitrox <- cbind(nitrox, finalCrops)
View(CropsNitrox)

# 6. Summary of CropsNitrox dataset
summary(CropsNitrox)


# 7. Exporting CropsNitrox dataset
write.csv(CropsNitrox, 
          "C:\\Users\\USER\\Documents\\Desarrollador\\PYTHON\\2021-Python-exercises\\statistics-projects\\CropsNitrox.csv",
          row.names = TRUE)
