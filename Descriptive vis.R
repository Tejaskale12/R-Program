ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary)
plot(salary,ages)


help(plot)
########################################################

#Import Dataset
data()
airquality=datasets::airquality

#top 10 rows and last 1 rows
head(airquality,10)
tail(airquality,10)
names(airquality)#names of all coloumns
dim(airquality)

airquality[,c(1,2)]
df=airquality[,-6]#exclude coloumn 6
df

summary(airquality[,1])#summary for col 1

summary(airquality$Temp)
summary(airquality$Wind)

summary(airquality)

##############visualization
plot(airquality$Wind)

plot(airquality$Temp,airquality$wind,type="p")

plot(airquality) #Scater plot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)


#points and lines
plot(airquality$Wind,type= "p")
plot(airquality$Wind,type= "l")
plot(airquality$Wind,type= "b")
help(plot)

plot(airquality$Wind,
     xlab="Ozone Concentration",
     ylab="No of Instances",
     main="Ozone levels in NY city",
     col="chartreuse",
     type="l")
plot(airquality,col="cyan")#plot of entire dataset        
plot(airquality$Ozone,airquality$Solar.R)#x-axis
plot(airquality$Solar.R,airquality$Ozone.R)

#horizontal bar plot
barplot(airquality$Ozone,
        main="Ozone concentration in air",
        col="cyan",
        horiz=T,
        axes=F
       )
help(barplot)


#Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main="Solar radiation values in air",
     xlab="Solar rad",
     col="cyan",
     border="chartreuse")
help(hist)

#single box plot

boxplot(airquality$Wind,
        main="Boxplot",
        col="blue",
        border="red",
        horizontal=T)
boxplot.stats(airquality$Wind)$out#outlier value

airquality$Ozone

#multiple box plots
boxplot(airquality[,1:4],
        main="Multiple box plots",
        horizontal=T,
        col="salmon")
#############
help(par)
par(mfrow=c(3,3),mar=c(1,2,1,2),las=0,bty="0")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="l")
plot(airquality$Wind,type="l")
plot(airquality$Solar.R,type="l")
barplot(airquality$Ozone,main="Ozone concentration",
        xlab="Ozone levels",col="cyan",horiz=T)
hist(airquality$Solar.R)
boxplot(airquality)
boxplot(airquality[,0:4],main="Multiple box plots")

#considering NA values
airquality
max(airquality$Wind)
min(airquality$Ozone)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T)#o remove na values
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm=T)

#google foll func as variance in R,etc
#var
#skewness
#kurtosis
#Density plot

var(airquality$Wind)
sd(airquality$Ozone)#standard deviation
sd(airquality$Ozone,na.rm=T)

skewness(airquality$Ozone)
kurtosis(airquality$Ozone)

skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone,na.rm=T)
skewness(airquality[,1:4],na.rm=T)

#Density plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))
??density #check kernel density estimation

##In class exr
e_quakes=datasets::quakes
















