data(mtcars)
head(mtcars)
str(mtcars)
summary(mtcars)
####MPG Distribution (Visualization)####
hist(mtcars$mpg,
     breaks = 10,         
     col = "skyblue",   
     border = "white",    
     main = "Distribution of Fuel Efficiency (MPG)",
     xlab = "Miles per Gallon (mpg)",
     ylab = "Frequency")

boxplot(mtcars$mpg,
        col = "lightgreen",
        main = "Boxplot of Fuel Efficiency (MPG)",
        ylab = "Miles per Gallon (mpg)")

####Correlation Analysis####
cor_matrix <- cor(mtcars)   
cor_matrix["mpg", ]     

####Scatterplots (MPG vs Strongest Variables)####
install.packages("ggplot2")
library(ggplot2)

#Scatterplot: MPG vs Weight
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Fuel Efficiency vs Car Weight",
       x = "Weight (1000 lbs)",
       y = "Miles Per Gallon (MPG)")

#Scatterplot: MPG vs Horsepower
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "darkgreen", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Fuel Efficiency vs Horsepower",
       x = "Horsepower",
       y = "Miles Per Gallon (MPG)")

#Scatterplot: MPG vs Cylinders
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(fill = "orange", alpha = 0.7) +
  labs(title = "Fuel Efficiency vs Number of Cylinders",
       x = "Cylinders",
       y = "Miles Per Gallon (MPG)")

#Scatterplot: MPG vs Transmission
ggplot(mtcars, aes(x = factor(am), y = mpg)) +
  geom_boxplot(fill = "purple", alpha = 0.7) +
  labs(title = "Fuel Efficiency vs Transmission",
       x = "Transmission (0 = Automatic, 1 = Manual)",
       y = "Miles Per Gallon (MPG)")

####Correlation Heatmap####
install.packages("corrplot")
library(corrplot)

# Numeric variables of correlation matrix
num_vars <- mtcars[, sapply(mtcars, is.numeric)]
cor_matrix <- cor(num_vars)

# Correlation Heatmap
corrplot(cor_matrix, method = "color", type = "upper",
         tl.col = "black", tl.srt = 45,
         addCoef.col = "black", number.cex = 0.7,
         title = "Correlation Heatmap of mtcars Variables",
         mar = c(0,0,1,0))

####Strongest Correlations with MPG####

#Numeric variables correlation matrix
num_vars <- mtcars[, sapply(mtcars, is.numeric)]
cor_matrix <- cor(num_vars)

mpg_corr <- cor_matrix["mpg", ]
mpg_corr <- mpg_corr[names(mpg_corr) != "mpg"]

mpg_corr_sorted <- sort(mpg_corr, decreasing = TRUE)
mpg_corr_sorted










