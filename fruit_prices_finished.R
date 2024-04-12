setwd("C:/Users/ajral/Downloads")
library(readr)
Fruit_Prices_2020 <- read_csv("Fruit Prices 2020.csv")
View(Fruit_Prices_2020)
# Exploring the Fruit Prices
#Install Packages
library(tidyverse)
# Loading the dataset
data=read_csv("Fruit Prices 2020.csv", show_col_types = FALSE)
#Explore the Dataset
view(data) # Shows the Data in seperate Tab
head(data) # Top 6 rows
tail(data) # Bottom 6 rows
length(data) # No. of Columns
names(data) # Names of columns
str(data) # Checking the Data Type
summary(data) # Gives a summary of the data
# unique works on categorical Data
# Unique Attributes
unique(data$Form)
unique(data$RetailPriceUnit)
unique(data$Fruit)
# takes the output of one function and pass it to another
data %>%
  select("Fruit", "Form", "RetailPriceUnit", "Yeild") %>%
  view()
# takes the output of one function and pass it to another
data %>%
  select("Fruit", "Form", "RetailPriceUnit", "Yield") %>%
  view()
no_missing_data=drop_na(.)
no_missing_data=drop_na(data)
paste("Number of missing data: ", sum(is.na(no_missing_data)))
Fruit_mean=mean(data$Fruit, na.rm=TRUE)
RetailPrice_mean=mean(data$RetailPrice, na.rm=TRUE)
Yield_mean=mean(data$Yield, na.rm=TRUE)
CES_mean=mean(data$CupEquivalentSize, na.rm=TRUE)
CEP_mean=mean(data$CupEquivalentPrice, na.rm=TRUE)
RetailPrice_median=median(data$RetailPrice, na.rm=TRUE)
Yield_median=median(data$Yield, na.rm=TRUE)
CES_median=median(data$CupEquivalentSize, na.rm=TRUE)
CEP_median=median(data$CupEquivalentPrice, na.rm=TRUE)
data_new=data %>%
  select(Fruit, Form, RetailPrice, Yield, CupEquivalentSize, CupEquivalentPrice)
head(data_new)
install.packages("psych")
library(psych)
write.csv(summary_newdata, 'Summary_Fruit_Prices')
data_new=data_new %>%
  filter(mass<250)
ggplot(data=data_new,
       aes(x=Fruit))+
  geom_bar()
         ggplot(data=data_new,
                aes(x=RetailPrice))+
           geom_histogram(binwidth=20)
         ggplot(data=data_new,
                aes(x=Yield))+
           geom_histogram(binwidth=20)
         ggplot(data=data_new,
                aes(x=Yield,)
         )+
           geom_density()
data_new1=data %>% select(RetailPrice, Yield)
cor(data_new1)

