# Movie Data Correlation Analysis

## Overview
This project analyzes a movie dataset from Kaggle to discover correlations between various features like budget, gross earnings, IMDb votes, and other attributes to understand their impact on profitability.

## Dataset
- **Source:** [Kaggle Movie Dataset](https://www.kaggle.com/datasets/danielgrijalvas/movies/data)
- The dataset includes movie attributes such as budget, gross earnings, IMDb scores, production companies, and more.

## Tools & Libraries
- **Pandas**: Data cleaning and manipulation.
- **NumPy**: Numerical operations.
- **Matplotlib & Seaborn**: Data visualization.
- **Jupyter Notebook**: For interactive data analysis and visualization.

## Key Steps

1. **Data Cleaning:**
   - Checked for missing values and removed incomplete records.
   - Transformed data types for key numerical columns to ensure consistency.
   - Extracted relevant information from date columns for better analysis.

2. **Visualizations:**
   - **Scatter Plot (Budget vs. Gross Earnings):** Visualized the relationship between movie budget and gross earnings.
   - **Seaborn Regression Plot (Budget vs. Gross Earnings):** Further explored the relationship between budget and earnings with a regression line.
   - **Correlation Matrix (Numeric Features):** Calculated and visualized the correlation between numeric features.
   - **Heatmap (Correlation Matrix):** Displayed the correlation matrix after converting categorical features to numeric codes.

3. **Correlation Analysis:**
   - Conducted Pearson correlation to measure relationships between key features like budget, gross earnings, and votes.
   - Focused on identifying highly correlated pairs to reveal patterns affecting movie profitability.

4. **Key Findings:**
   - **Budget** and **Votes** have the highest correlation with **Gross Earnings**.
   - Other features, like **Company**, show a lower correlation with gross earnings, indicating a lesser impact on movie success.


## Running the Project
1. Install the required libraries:
   ```bash
   pip install pandas numpy matplotlib seaborn
