
######################################################################
#                                                                    #
# Norman Mattloff. 2011. Art of R Programming, No Starch Press       # 
#                                                                    #
# Extended Example: Regression Analysis                              #
#                                                                    #
#####################################################################

# Dataset: iris
#

data(iris)

iris

# view the column names of iris
head(iris)

# iris is an object of class dataframe
class(iris)


# referencing individual columns of the iris dataframe
iris$Sepal.Length
iris$Sepal.Width

# simple linear regression
# lma is an object of class lm
lma <- lm(iris$Sepal.Length ~ iris$Petal.Length)

# describing the attributes of linear model lma
attributes(lma)


# describing the strucuture of the lma object
str(lma)

# dereferencing the individual attributes of lma
lma$coefficients

# printing the lma object
lma

# getting the model summary

summary(lma)

# learning more about the lm() class
?lm()

# including two or more predictors

lmb <- lm(iris$Sepal.Length ~ iris$Petal.Length + iris$Petal.Width)

summary(lmb)









