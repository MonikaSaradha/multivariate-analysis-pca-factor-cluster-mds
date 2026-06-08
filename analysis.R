# ----------------------------------
# Multivariate Analysis (R)
# PCA + Factor + Clustering + MDS
# ----------------------------------

library(readr)
library(dplyr)
library(ggplot2)
library(cluster)
library(factoextra)

# -------------------------------
# 1. Load Survey Data
# -------------------------------
data <- read_csv("Survey.csv")

# Select numeric columns
numeric_data <- data %>% select(where(is.numeric))

# -------------------------------
# 2. Standardize Data
# -------------------------------
scaled_data <- scale(numeric_data)

# -------------------------------
# 3. PCA
# -------------------------------
pca_result <- prcomp(scaled_data, scale = TRUE)

fviz_eig(pca_result)

# -------------------------------
# 4. Factor Analysis
# -------------------------------
fact_result <- factanal(scaled_data, factors = 3)

print(fact_result)

# -------------------------------
# 5. Clustering (K-Means)
# -------------------------------
set.seed(42)
kmeans_result <- kmeans(scaled_data, centers = 3)

data$Cluster <- kmeans_result$cluster

fviz_cluster(kmeans_result, data = scaled_data)

# -------------------------------
# 6. MDS (Ice Cream Dataset)
# -------------------------------
icecream <- read_csv("icecream.csv")

ice_numeric <- icecream %>% select(where(is.numeric))

dist_matrix <- dist(scale(ice_numeric))

mds_result <- cmdscale(dist_matrix, k = 2)

plot(mds_result, main = "MDS Plot", xlab = "Dim 1", ylab = "Dim 2")
