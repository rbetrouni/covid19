library(readxl)
covid16 <- read_excel("P:/COVID-19 Documents/Using_avergae_temp_January_030920.xlsx", 
                                                sheet = "Sheet1")

covid16$dep=log(10^8*covid16$Index)
covid16[1:1,"dep"]=0

fit <- glm(data=covid16,dep~Temp)
summary(fit)
fit$coefficients


fit$R
plot(fit)
plot(covid16$dep,covid16$Temp)
library(rpart)
library(rpart.plot)
fit0 <- rpart(data=covid16,dep~Temp)
rpart.plot(fit0,main="covid-19 Infection v.s Temperature")
summary(fit0)


fit1 <- rpart(data=covid16,dep~Air_Quality)
rpart.plot(fit1,main="covid-19 Infection v.s Air Quality")
summary(fit1)

fit2 <- rpart(data=covid16,dep~Temp+Air_Quality )
rpart.plot(fit2,
           main="covid-19  v.s Temperature & Air Quality")
summary(fit2)
