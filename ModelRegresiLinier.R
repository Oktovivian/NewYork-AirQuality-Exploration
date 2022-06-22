# SOAL 5
#Regresi Linear
library(tidyverse)
library(ggpubr)
theme_set((theme_pubr())
          model <- lm(suhu~ozone, data=airquality)
          model
          ggplot(data, aes(x = ozone, y = suhu)) + geom_point()+ stat_smooth(method = lm)
          # = A*X + B
          X = 100
          A = 0.2008
          B = 69.4107
          Y = A*X + B
          Y
          
          model1 <- lm(suhu~radiasi, data=airquality)
          model1
          ggplot(data, aes(x = radiasi, y = suhu)) + geom_point()+ stat_smooth(method = lm)
          # = A*X + B
          X = 250
          A = 0.02825
          B = 72.86301
          Y = A*X + B
          Y