### Part One  
install.packages("titanic")
library(titanic)

#1.
titanic_train[,2]=as.factor(titanic[,2])

#2.
data=titanic_train[,c(2,3,5,6,7,8)

#3.
set.seed(587)
indices <- split(sample(nrow(data), nrow(data),replace=FALSE), as.factor(1:3))

test_set1 <- data[indices[[1]], ]
train_set1 <- data[-indices[[1]], ]

test_set2 <- data[indices[[2]], ]
train_set2 <- data[-indices[[2]], ]

test_set3 <- data[indices[[3]], ]
train_set3 <- data[-indices[[3]], ]

###Part Two
install.packages("e1071")
library(e1071)

#1.
NB1 <- naiveBayes(train_set1[,2:6], train_set[,1])
NB2 <- naiveBayes(train_set1[,2:6], train_set[,1])
NB3 <- naiveBayes(train_set1[,2:6], train_set[,1])





