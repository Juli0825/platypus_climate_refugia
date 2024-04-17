library(dismo)

library(maps)

library(raster)

#platypus observation records downloaded from ATLA,2014-2024
orecord <- read.csv("variables/observation_records.csv") 

#set up observation records in filled coloured circles, with xy limits and labels
plot(orecord$Longitude, orecord$Latitude, col="red", xlim=c(113, 154), ylim=c(-44, -10), pch=19, xlab="Longitude", ylab="Latitude")
map(add=T)

#load climate variables already downloaded from worldclim, and cropped with AU mask(I did this last year in Arcmap) 
bio1 = raster("variables/bio_1.asc")
bio5 = raster("variables/bio_5.asc")
bio6 = raster("variables/bio_6.asc")
bio12 = raster("variables/bio_12.asc")
bio15 = raster("variables/bio_15.asc")
bio16 = raster("variables/bio_16.asc")
bio17 = raster("variables/bio_17.asc")

#testing if these variables looks 
plot(bio1, main="Annual mean temperature")
plot(bio5, main="Max temperature of warmest month")
plot(bio1, main="Annual mean temperature")
plot(bio1, main="Annual mean temperature")
plot(bio1, main="Annual mean temperature")
plot(bio1, main="Annual mean temperature")
plot(bio1, main="Annual mean temperature")
plot(bio1, main="Annual mean temperature")

