# NewYork-AirQuality-Exploration
we tried to observe the effect of the month, solar radiation, ozone levels on temperature. It is hoped that the local authorities can predict the weather quickly and can determine disaster response activities in the event of a disaster occurring during that month

## 1. Airquality dataset 
Airquality dataset is a dataset containing daily air quality measurements in New York from May to September 1973 for 5 months. Data sources are obtained from the New York State Department of Conservation (ozone data) and the National Weather Service (meteorological data)

## 2. Variables/Attributes and data types:
* The Ozone attribute is a numeric data type containing data on the average Ozone concentration in per billion from 13:00 - 15:00 on Roosevelt Island
* Attribute Solar.R numeric data type contains data on solar radiation at a frequency of 4000 - 7700 Angstrom from 08.00 - 12.00 in Central Park
* Wind numeric data type contains data on the average wind speed in miles per hour from 07.00 to 10.00 at LaGuardia airport
* The numeric data type Temp attribute contains the maximum daily temperature data in Fahrenheit at LaGuardia airport
* Attribute Month numeric data type contains 5 months of observation data
* The Day attribute of the numeric data type contains 153 total observation days

## 3. Boxplot
### Ozone
![image](https://user-images.githubusercontent.com/68942070/175799472-65a31da2-97ed-4f6a-942b-73e49afcb719.png)
#### In the Ozone boxplot it can be concluded that.
* The minimum value for ozone data is 1.
* Q1 or the lower quartile of the ozone data is 18.
* Q2 or median ozone data is 31.50.
* Mean ozone data is 42.13.
* Q3 or the upper quartile of the ozone data is 63.25.
* The maximum value for ozone data is 168.
* The ozone boxplot has an outlier value (upper extreme) which causes the data to be asymmetrical and also because the distribution of the data is relatively elongated/spread upwards.
* The data centers tend to move away because the distance between the median and the mean is quite far.

### Solar Radiation
![image](https://user-images.githubusercontent.com/68942070/175799473-c1911159-ab8f-40f6-87c9-e503cad91dee.png)
#### In the Solar Radiation boxplot it can be concluded that.
* The minimum value for solar radiation data is 7.
* Q1 or the lower quartile of the solar radiation data is 115.8.
* Q2 or median solar radiation data is 205.
* The mean solar radiation data is 185.9.
* Q3 or the upper quartile of the solar radiation data is 258.8.
* The maximum value for solar radiation data is 334.
* The solar radiation boxplot does not have outlier data, but the data is not symmetrical because the distribution of the data is relatively elongated/spread downwards.
* The data centers tend to move away because the distance between the median and the mean is quite far.

### Wind
![image](https://user-images.githubusercontent.com/68942070/175799476-d90c61d2-1546-475c-ba3f-6439a1da177c.png)
#### In the Wind boxplot it can be concluded that.
* The minimum value for wind data is 1.7.
* Q1 or the lower quartile of the wind data is 7.4.
* Q2 or median wind data is 9.7.
* The mean wind data is 9,958.
* Q3 or the upper quartile of the wind data is 11.5.
* The maximum value for wind data is 20.7.
* The wind boxplot has outlier data (upper extreme) which causes the data to be asymmetrical and also because the data distribution is relatively elongated/downward.
* The data centers tend to be closer because the distance between the median and the mean is quite close.

### Temperature
![image](https://user-images.githubusercontent.com/68942070/175799480-2f474cf8-fca5-49f1-a668-fb2e537b428e.png)
#### In the Temperature boxplot it can be concluded that.
* The minimum value for temperature data is 56.
* Q1 or the lower quartile of the temperature data is 72.
* Q2 or median temperature data is 79.
* The mean temperature data is 77.88.
* Q3 or the upper quartile of the temperature data is 85.
* The maximum value of temperature data is 97.
* The temperature boxplot has no outlier data and because the median is right in the middle, the data is symmetrical.
* The data centers tend to be closer because the distance between the median and the mean is quite close.

## 4. Assumption
Note: We add some assumptions and facts below in order to clarify and make it easier for us to choose which variables to explore

![image](https://user-images.githubusercontent.com/68942070/175806457-ea9378a5-fe44-4628-b3a8-d54f542bb6ee.png)
* Assumption 1:
  Based on the plot above, the level of solar radiation affects the temperature level even though it appears to be not strongly related
  
![image](https://user-images.githubusercontent.com/68942070/175806449-6ab21db7-d62a-4ee5-af7b-478715dcd829.png)
* Fact 1:
  The highest temperature occurs in the 8th month (August)
  
![image](https://user-images.githubusercontent.com/68942070/175806439-4ae8965f-b703-4d5a-83a9-632f9ae07e0a.png)
* Fact 2:
  The highest level of solar radiation occurs in the 5th month (May)

* Formulation of the problem:
  Is there anything else that affects the temperature level more than solar radiation?
  
![image](https://user-images.githubusercontent.com/68942070/175806432-cd4d24d4-9de7-4e23-a221-08b77bd70c5c.png)
* Assumption 2:
  At first glance, based on the plot above, the ozone level affects the temperature level more (the higher the ozone level, the higher the temperature) than the effect   of solar radiation and is strongly related.

![image](https://user-images.githubusercontent.com/68942070/175806428-72b91041-9fa1-4c38-99d0-5ef6f35474d2.png)
* Fact 3:
  The highest ozone levels occur in the 7th (July), 8th (August), and 9th (September) months.

* Final Assumptions:
  Based on the 3 facts and 2 assumptions above, Ozone affects the air temperature level more than solar radiation. The proof will be done on numbers 5 to 7
  
## 5. Linear relation between 2 variables
### Linear relation between temperature and Solar Radiation
![image](https://user-images.githubusercontent.com/68942070/175925641-7bbe4c75-983d-4a3b-a128-6b037927adce.png)
![image](https://user-images.githubusercontent.com/68942070/175925656-d67d4285-23ae-45c8-bba3-a8e93eb8e66f.png)
From the scatter plot and the correlation coefficient above, it can be seen that there is a WEAK linear relation between the concentration of solar radiation and temperature.

Correlation Test:

![image](https://user-images.githubusercontent.com/68942070/175925744-cb6259c9-2812-415a-a1cb-827fc1ae0924.png)

![image](https://user-images.githubusercontent.com/68942070/175925765-b39583d5-ebea-479d-9749-492102065e5e.png)

Conclusion: With a significance level of 5%, solar concentration and maximum temperature have a linear relation, because the t test value = 3.443678 is slightly above the threshold limit of 1.976575.
Then, at the significance level of 0.1%, the t-test value = 3.443678 is slightly larger than the threshold, which is 3.356124

### Linear relation between temperature and ozone

![image](https://user-images.githubusercontent.com/68942070/175926089-0a5392a6-668c-4206-bf7f-bccac09a4e6c.png)

![image](https://user-images.githubusercontent.com/68942070/175926104-36ce9b69-5917-4c79-9b81-175fa7e42a20.png)

From the scatter plot and the correlation coefficient above, it can be seen that there is a linear relation between the ozone concentration and the maximum temperature.

Correlation Test:

![image](https://user-images.githubusercontent.com/68942070/175926200-68e6dd19-de45-4ac5-a11a-a5f17f3d488a.png)

![image](https://user-images.githubusercontent.com/68942070/175926219-10731d72-f89d-4382-889c-9dae632578dd.png)

Conclusion: With a significance level of 5%, ozone concentration and maximum temperature have a linear relation, because the t test value = 10,41772, far above the threshold limit of 1,980992.
In fact, at the significance level of 0.1%, the t-test value = 10.41772, which is greater than the threshold of 3.377922.


## 6. Linear Regression Model

Y = A * X + B
### Below is the modeling X = Solar.R and Y = Temperature
![image](https://user-images.githubusercontent.com/68942070/175926884-c908ade2-a45b-4893-8147-3565d3c3e659.png)

![image](https://user-images.githubusercontent.com/68942070/175926905-c2cb54a2-20fa-4cc3-aa5c-2a60a0ec6f2b.png)

![image](https://user-images.githubusercontent.com/68942070/175926930-08758350-26c7-4abf-a612-c17d7e2ca0e5.png)

From the regression model it can be concluded that:
For example, with solar radiation of 100 lang, the maximum temperature is 75,68801 F. This temperature prediction is obtained by multiplying the sample size of solar radiation with the slope of the line and adding it to the magnitude of the line intercept.

### Below is a model with X = ozone and Y = temperature:
![image](https://user-images.githubusercontent.com/68942070/175927049-65efd955-d6fe-4615-956e-64cddef1c44a.png)

![image](https://user-images.githubusercontent.com/68942070/175927077-5a20b22d-19c6-4a80-be74-384d77f61a1d.png)

From the linear regression model obtained:

* A = 0,2008
* B = 69.4107

If you are going to predict the value of Y (temperature), at a certain value of X (ozone), you can use the equation Y = A * X + B. For example, if you are looking for the value of Y with X = 100, then
Y = 0.2008 * 100 + 69.4107 = 89.4907.

So the maximum temperature prediction if the ozone concentration is 100 ppb, which is 89.4907 F (around the red dot in the picture). This temperature prediction is obtained by multiplying the magnitude of the ozone example with the slope of the line and adding it to the magnitude of the line intercept.

## 7. Interpretation of the Obtained Model
Based on the model obtained from linear regression modeling, it can be concluded that changes in ozone have a strong influence on changes in daily maximum temperature. The effect of ozone concentration on the daily maximum temperature is greater than the effect of solar radiation on the daily maximum temperature. From these results, the prediction of maximum temperature based on ozone concentration will be more accurate than prediction of maximum temperature based on solar radiation. The assumption we have made in number 3 is proven correct.










