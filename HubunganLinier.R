#SOAL 4
#Hubungan Linear
ozone <- data$Ozone
suhu <- data$Temp
plot(ozone, suhu)
cor.test(ozone, suhu)
n = length(ozone)-sum(is.na(ozone))
n
r = 0.6983603
r
alpa = 0.001
batas = qt(1-alpa/2,n-2)
batas
tresh = c(-batas, batas)
tresh
t = r/sqrt((1-r^2)/(n-2))
t


radiasi <- data$Solar.R
suhu <- data$Temp
plot(radiasi, suhu)
cor.test(radiasi, suhu)
n1= length(radiasi)-sum(is.na(radiasi))
n1
r1= 0.2758403 
r1
alpa1= 0.001
batas1 = qt(1-alpa1/2, n-2)
batas1
tresh1 = c(-batas1, batas1)
tresh1
t1 = r1/