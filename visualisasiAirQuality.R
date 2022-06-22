data <- airquality

library(dplyr)
library(ggplot2)
library(GGally)
library(tidyverse)
library(treemap)
library(purrr)

# Eksplorasi Ozon dengan Temperatur
g1 <- ggplot(data, aes(x = Ozone, y = Temp, color = 'red')) + geom_point(alpha = .5)
g1

# Semakin rendah Ozon, semakin rendah kecepatan angin
g2 <- ggplot(data, aes(x = Ozone, y = Wind, color = 'green' )) + geom_point(alpha = .5)
g2

# Semakin tinggi solar radiation, semakin tinggi temperatur
g3 <- ggplot(data, aes(x = Solar.R, y = Temp, color = 'green' )) + geom_point(alpha = .5)
g3

# Semakin tinggi temperatur, kecepatan angin semakin rendah dan sebaliknya
g4 <- ggplot(data, aes(x = Temp, y = Wind, color = 'green' )) + geom_point(alpha = .5)
g4


# Penting
g5 <- ggplot(data, aes(x = Month, y = Temp, color = 'green' )) + geom_point(alpha = .5)
g5

g6 <- ggplot(data, aes(x = Month, y = Solar.R, color = 'green' )) + geom_point(alpha = .5)
g6

g7 <-  ggplot(data, aes(x = Month, y = Ozone, color = 'green' )) + geom_point(alpha = .5)
g7


# Hubungan linear antara suhu dan Solar Radiation
# Soal 4
radiasi <- data$Solar.R
suhu <- data$Temp
plot(radiasi, suhu)
cor.test(radiasi, suhu)

# Uji korelasi no 4
n1= length(radiasi)-sum(is.na(radiasi))
n1

r1= 0.2758403 
r1

alpa1= 0.05

batas1 = qt(1-alpa1/2, n-2)
batas1

tresh1 = c(-batas1, batas1)
tresh
t1 = r1/sqrt((1-r1^2)/(n1-2))
t1

