# Bellabeat Smart Device Data Analysis

## Overview
This project analyzes Bellabeat smart device data using R programming to explore patterns in user activity, sleep habits, and wellness trends. The goal is to provide insights and actionable recommendations that help Bellabeat enhance their products and identify growth opportunities.

## Dataset
- **Source:** [Kaggle Bellabeat Dataset](https://www.kaggle.com/datasets/arashnic/fitbit)
- The dataset includes attributes related to users' physical activity, sleep patterns, and overall wellness of 30 Fitbit users.


## Key Steps

1. **Data Cleaning:**
   - Loaded datasets related to daily activity, calories, steps, sleep, and heart rate.
   - Merged daily activity and sleep datasets based on user ID and activity date.
   - Skipped weight dataset due to insufficient participant data.
   - Formatted date columns and removed unnecessary fields.

2. **Visualizations:**
   - **Total Steps vs. Calories Burned:** Visualized the correlation between physical activity (steps) and calories burned.
   - **Sleep vs. Sedentary Minutes:** Analyzed how sleep duration affects sedentary behavior.
   - **Average Steps vs. Time of Day:** Identified peak activity times throughout the day.

3. **Analysis:**
   - Investigated the relationship between user activity, sleep duration, and calories burned.
   - Visualized key trends to identify potential areas for user engagement and product improvements.

4. **Key Findings:**
   - Higher activity levels lead to greater calorie expenditure.
   - Sleep duration doesn’t significantly influence sedentary time.
   - Most steps are taken during mid-day and evenings, peaking around 6 PM to 7 PM.
  
5. **Marketing Recommendations:**
   - Encourage users to reach a daily step goal of 10,000 by offering rewards or challenges.
   - Promote short, high-intensity workouts to increase active minutes.
   - Send reminders to break up long sedentary periods with activity prompts.
   - Provide personalized sleep tips to improve sleep consistency.

## Tools & Libraries
- **R Programming**: Data cleaning and analysis.
- **tidyverse (dplyr, ggplot2)**: Data manipulation and visualization.

## Running the Project
1. Download the dataset from Kaggle.
2. Install the required R libraries:
   ```r
   install.packages("tidyverse")

## For Detailed Analysis and Visualizations:
You can view the full analysis and visualizations in my Kaggle notebook [here](https://www.kaggle.com/code/vandithavb/bellabeat-data-analysis-project).



