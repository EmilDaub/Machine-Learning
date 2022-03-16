adult <- read.csv("./Dataset1/adult.data",header=FALSE)
names(adult) <- c("age", "workclass", "fnlwgt", "education", "education_num", "marital_status", "occupation", "relationship", "race", "sex", "capital_gain", "capital_loss", "hours_per_week", "native_country")
summary(adult)



