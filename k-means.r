data <- iris
data$Species <- NULL
kc <- kmeans(data,3)
plot(data[c("Sepal.Length","Sepal.Width")],col=kc$cluster)
points(kc$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex = 2)