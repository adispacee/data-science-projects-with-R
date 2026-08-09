library(tidyverse)


data<-read_csv("C:/Users/Adithi Shashidharan/Downloads/happiness index data.csv")
names(data)[names(data)=="Life evaluation (3-year average)"]<-"life_satisfaction"
names(data)[names(data) == "Explained by: Log GDP per capita"] <- "gdp"
names(data)[names(data) == "Explained by: Social support"] <- "social_support"
names(data)[names(data) == "Explained by: Healthy life expectancy"] <- "life_expectancy"
names(data)[names(data) == "Explained by: Freedom to make life choices"] <- "freedom"
names(data)[names(data) == "Explained by: Generosity"] <- "generosity"
names(data)[names(data) == "Explained by: Perceptions of corruption"] <- "corruption"
names(data)
head(data)
unique(data$Year)

data1<-data%>% filter(Year==2025)

nrow(data1)

data2<-data1[,c("Country name","life_satisfaction","gdp","social_support","life_expectancy","freedom","generosity","corruption")]
colSums(is.na(data2))

data2[is.na(data2$life_expectancy)|is.na(data2$freedom),] 
data2<-data2[complete.cases(data2),]
nrow(data2)
sum(duplicated(data2))
boxplot(data2[,2:8])
summary(data2)
data2_numeric <- data2[sapply(data2, is.numeric)]
cor(data2_numeric)
contrib <- data2_numeric[, !(names(data2_numeric) %in% "life_satisfaction")] / 
  data2$life_satisfaction 

colMeans(contrib, na.rm = TRUE)*100

top <- data2[order(data2$life_satisfaction, decreasing = TRUE), ]
  head(top, 10)
  bottom <- data2[order(data2$life_satisfaction), ]
  head(bottom, 10)
  # remove life satisfaction (target variable)
  vars_data <- data2_numeric[, !(names(data2_numeric) %in% "life_satisfaction")]
  
  # standard deviation (spread)
  sd_values <- apply(vars_data, 2, sd, na.rm = TRUE)
  
  # sort from highest to lowest
  sort(sd_values, decreasing = TRUE)

  # threshold (median split)
  threshold <- median(data2$life_satisfaction, na.rm = TRUE)
  
  happy <- contrib[data2$life_satisfaction >= threshold, ]
  unhappy <- contrib[data2$life_satisfaction < threshold, ]
  happy_mean <- colMeans(happy, na.rm = TRUE) *100
  unhappy_mean <- colMeans(unhappy, na.rm = TRUE)*100
  
  happy_mean
  unhappy_mean
  
  top10 <- data2[order(-data2$life_satisfaction), ][1:10, ]
  bottom10 <- data2[order(data2$life_satisfaction), ][1:10, ]
  vars <- setdiff(names(data2_numeric), "life_satisfaction")
  top_contrib <- top10[, vars] / top10$life_satisfaction
  bottom_contrib <- bottom10[, vars] / bottom10$life_satisfaction
  top_mean <- colMeans(top_contrib, na.rm = TRUE) * 100
  bottom_mean <- colMeans(bottom_contrib, na.rm = TRUE) * 100
  comparison <- data.frame(
    Factor = vars,
    Top10 = top_mean,
    Bottom10 = bottom_mean
  )
  
  top_mean <- colMeans(top10[, vars], na.rm = TRUE)
  bottom_mean <- colMeans(bottom10[, vars], na.rm = TRUE)
  comparison <- data.frame(
    Factor = vars,
    Top10 = top_mean,
    Bottom10 = bottom_mean
    
  )
  
  comparison
  
  







