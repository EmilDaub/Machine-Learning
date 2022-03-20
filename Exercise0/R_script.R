#----------data1----------------------------------
parkinsons_updrs <- read.csv("~/Uni stuff/Master Data Science/ML/data/parkinsons_updrs.data")


library(tidyverse)

ggplot(parkinsons_updrs) +
  geom_histogram(aes(total_UPDRS), bins=50, fill = "gray70",color="gray26") +
  theme_minimal()

parkinsons_updrs %>% 
  group_by(subject.) %>%
  summarise(n = n(),age = mean(age)) %>%
  ggplot() +
  geom_point(aes(n,age)) +
  theme_minimal()

#----------data2------------------------------------------
adult <- read.csv("~/Uni stuff/Master Data Science/ML/data/adult.data", header=FALSE)
adult <- read.csv("/Dataset1/adult.data",header=FALSE)

names(adult) <- c("age", "workclass", "fnlwgt", "education", "education_num", "marital_status", "occupation", "relationship", "race", "sex", "capital_gain", "capital_loss", "hours_per_week", "native_country","over50")
summary(adult)


ggplot(adult) +
  geom_bar(aes(as.factor(over50)), fill = "gray70",color="gray26") +
  theme_minimal()

ggplot(adult) +
  geom_boxplot(aes(hours_per_week,over50,fill=sex)) +
  theme_minimal()
