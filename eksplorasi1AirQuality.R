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

# Semakin rendah Ozon, semakin rendah temperatur
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
