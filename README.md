# Multivariate Analysis: PCA, Factor Analysis, Clustering & MDS

Application of multivariate statistical techniques on real-world consumer datasets to uncover patterns, segmentation, and relationships.

---

## Overview

This project applies advanced multivariate analysis methods to understand consumer behavior and product positioning.

Using real-world datasets, the analysis explores dimensionality reduction, latent factor identification, clustering, and similarity mapping to extract meaningful insights.

---

## Techniques Used

### Principal Component Analysis (PCA)

* Reduces dimensionality of high-dimensional data
* Identifies key components explaining maximum variance

### Factor Analysis

* Extracts latent variables influencing observed data
* Helps interpret underlying consumer decision factors

### Cluster Analysis (K-Means)

* Segments consumers into homogeneous groups
* Useful for market segmentation and targeting

### Multidimensional Scaling (MDS)

* Visualizes similarity/dissimilarity between products
* Helps understand product positioning

---

## Dataset

This project uses two real-world datasets:

* **Survey Dataset (Survey.csv)**
  Contains demographic and preference data of Bangalore home buyers, including income, budget, amenities, and decision factors.
  Used for PCA, Factor Analysis, and Cluster Analysis.

* **Ice Cream Dataset (icecream.csv)**
  Contains attributes and ratings of dairy brands such as price, taste, flavor, and shelf life.
  Used for Multidimensional Scaling (MDS).

---

## Key Insights

* Consumer preferences are driven by a few dominant latent factors
* Clear segmentation exists among home buyers based on income and preferences
* PCA effectively reduces complexity while retaining key information
* MDS reveals positioning differences among competing brands

---

## Applications

* Market segmentation and targeting
* Consumer behavior analysis
* Product positioning and branding
* Decision-making in real estate and FMCG sectors

---

## Tech Stack

* Python (pandas, scikit-learn, matplotlib)
* R (stats, cluster, factoextra)
* Statistical modeling and machine learning techniques

---

## Project Structure

* `analysis.ipynb` – Python implementation
* `analysis.R` – R implementation
* `README.md` – project overview
* `project_report.pdf` – detailed report
* `data.csv` – dataset
