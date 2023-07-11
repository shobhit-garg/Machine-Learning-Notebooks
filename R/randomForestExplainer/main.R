# Loading random forest library
library(randomForest)

ind <- sample(
  2, nrow(iris),
  replace = TRUE, prob = c(0.7,0.3)
)

trainData <- iris[ind == 1,]
testData <- iris[ind == 2,]

forest <- randomForest(Species~., data = trainData, ntree = 100, localImp = TRUE)

predictions <- predict(forest, newdata = testData)

accuracy <- mean(predictions == testData$Species)

cat("Accuracy : \n")
accuracy

# Using RandomForestExplainer
library(randomForestExplainer)

explain_forest(forest, interactions = TRUE, data = iris)

