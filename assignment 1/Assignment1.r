#Using rent prediction data set 
# Source:https://www.kaggle.com/datasets/iamsouravbanerjee/house-rent-prediction-dataset

#Importing data set into r

rent_dataset<-read.csv("C:/Users/sidda/Desktop/KSU_Fall/FML/House_Rent_Dataset.csv")

# Descriptive statistics 
summary(rent_dataset)

mean_rent=mean(rent_dataset$Rent)
median_rent=median(rent_dataset$Rent)
mode_rent=mode(rent_dataset$Rent)
sd_rent=sd(rent_dataset$Rent)


#Transforming Rent and size variables of the dataset

transformed_rent=(rent_dataset$Rent-median_rent)/sd_rent + mean_rent

new_size = rent_dataset$Size/2


#plotting rent

library(esquisse)

esquisse::esquisser(rent_dataset)

#Histogram of rent
hist(rent_dataset$Rent)


# bar graph of Rent and City
library(ggplot2)

ggplot(rent_dataset) +
 aes(x = City, weight = Rent) +
 geom_bar(fill = "#112446") +
 labs(x = "City", y = "Rent") +
 theme_minimal()

#scatter plot of rent and size of the house

library(ggplot2)

ggplot(rent_dataset) +
  aes(x = Size, y = Rent) +
  geom_point(shape = "circle", size = 1.5, colour = "#112446") +
  labs(x = "Size", y = "Rent") +
  theme_minimal()



