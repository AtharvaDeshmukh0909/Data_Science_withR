
# Assignment - 2 
# Atharva Deshmukh
# Roll No. - 210231

###################################

library(tidyverse)
library(imager)
library(rvest)
library(dplyr)
library(stringr)
library(ggplot2)


###################################

# Question - 1 



data(iris)

ggplot(iris,aes(x=Petal.Length,y=Sepal.Length))+geom_point(aes(color=Species,shape=Species))

# Conclusion - Setosa has low petal and sepal length
#              Versicolor has medium
#              virginica has max sepal and petal length

#####################################################################

# Question - 2

data(txhousing)
  


ggplot(txhousing, aes(x=volume, y=sales)) +
  geom_point() + labs(title="Sales vs Volume")

ggplot(txhousing, aes(x=median, color=factor(month))) + 
  geom_density() + labs(title="Median Density over months")

ggplot(txhousing, aes(x=factor(year), y=median)) + 
  geom_boxplot() + labs(title="Boxplot of Median over Years")

ggplot(txhousing, aes(x=date, y=sales)) + 
  geom_line() + labs(title="Sales vs Year")

ggplot(txhousing, aes(x=date, y=sales, color=city)) + 
  geom_line() + labs(title="Sales vs Year over different cities")

ggplot(txhousing, aes(x=year, y=sales)) + 
  stat_summary() + labs(title="Sales vs Year")

ggplot(txhousing, aes(x = city, y = sales )) + 
  geom_bar(stat = 'identity', color = 'black' ,width=0.1) +
  labs(title = 'Total Sales for each City',  x = 'City', y = 'Sales') + coord_flip()



####################################################################

# Question - 3

getwd()
setwd("C:/Users/Atharva Deshmukh/Desktop/DataScience_R")
getwd()

data <- read.csv("titanic.csv",header=TRUE)

data$Survived <- as.factor(data$Survived)

levels(data$Survived) <- c("Died","Survived")

final_plot <- ggplot(data, aes(x = Survived, y =Fare, color = Sex , Fill = Survived, levels))+
              geom_boxplot() + 
              labs(title="Fare vs Survival",
                   subtitle = "Irrespective of Sex, richer people survived",
                   x="") + 
              coord_flip()

final_plot

######################################################################################################
  