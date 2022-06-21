data <- airquality
View(airquality)
# Summary Air Quality
SummaryAirQuality <- summary(airquality)
SummaryAirQuality
library(PerformanceAnalytics)

# Soal 2 dan 3
# sebaran data ozone
# Atribute Ozone tipe data Numeric berisi data rata-rata konsentrasi Ozone di Pulau Roosevelt
boxplotOzone2 <- chart.Boxplot(data$Ozone)
boxplotOzone <- boxplot(data$Ozone)
histOzone <- hist(data$Ozone)

# sebaran data solarRadiation
# Atribute Solar.R tipe data Numeric berisi data radiasi matahari di Central Park
boxplotSolarRadiation <- boxplot(data$Solar.R)
histRadiation <- hist(data$Solar.R)

# sebaran data wind
# Wind tipe data numeric berisi data rata-rata kecepatan angin di bandara LaGuardia
boxplotWind <- boxplot(data$Wind)
histRadation <- hist(data$Wind)

# sebaran data temperatur
# Atribute Temp tipe data numeric berisi data suhu harian maksimal di bandara LaGuardia
boxplotTemp <- boxplot(data$Temp)
histTemp <- hist(data&Temp)

# BoxplotAll
boxplotAll <- boxplot(data$Ozone,
                      data$Solar.R,
                      data$Wind,
                      data$Temp
                      )

# HistAll
# hist(x1, col='red', xlim=c(-35, 100))
# hist(x2, col='green', add=TRUE)
# hist(x3, col='blue', add=TRUE)

hist(data$Ozone, col = 'red',xlim=c(0, 500))
hist(data$Solar.R, col= 'green', add=TRUE)
hist(data$Wind, col = 'blue', add=TRUE)
hist(data$Temp, col = 'yellow', add=TRUE)

# nomor 4
relasiBulanKeSOlarR <- plot(data$Month, data$Solar.R)
relasiBulanKeTemperatur <- plot(data$Month, data$Temp)
relasiTemperaturKeSolarR <- plot(data$Temp, data$Solar.R)
relasiOzonKeSolarR <- plot(data$Ozone, data$Solar.R)
relasiOzonKeTemp <- plot(data$Ozone, data$Temp)

cor(data$Month, data$Solar.R, method='pearson')
cor.test(data$Wind,data$Temp,method='pearson')

