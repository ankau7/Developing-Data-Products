library(shiny)
data(mtcars)
mtcars$carnames<-row.names(mtcars)


dataset <- mtcars[mtcars[,"am"]==1 & mtcars[,"cyl"]==4,]
summary(dataset$mpg)

sd(dataset$mpg)


barplot(height=dataset$mpg, names.arg=dataset$carnames, 
xlab="Model Name", ylab="Miles Per Gallon", axis.lty=1, main="Miles Per Gallon"
)