# Global Housing Market Analysis (2015-2024)

This project analyzes the global housing market trends from 2015 to 2024, focusing on house price trends, affordability, economic indicators, and their impact on housing prices. The project also includes predictive modeling using machine learning to forecast house price indices.

## Data Source  

The dataset used in this project is sourced from Kaggle:  

📌 **Global Housing Market Analysis (2015-2024)**  
🔗 [Kaggle Dataset Link](https://www.kaggle.com/datasets/atharvasoundankar/global-housing-market-analysis-2015-2024)  

This dataset contains global housing market trends, including **House Price Index, Rent Index, Affordability Ratio, Mortgage Rate, Inflation Rate, GDP Growth, Population Growth, Urbanization Rate, and Construction Index** from **2015 to 2024**.

# Trends & Patterns Over Time

- House Price Index & Rent Index: Analyzed trends globally & per country.

- Affordability Ratio: Assessed whether housing has become more or less affordable.

- Mortgage Rate & Inflation: Investigated their impact on house prices.

## Findings:

- House prices increased steadily in most regions, while rent showed moderate growth.
- Higher mortgage rates & inflation tend to reduce house price growth.

# Country-Level Analysis

- Country Comparisons: Identified countries with the highest & lowest house price growth.
- Urbanization vs. Housing Market: Examined whether higher urbanization leads to higher house prices.
- Economic Growth Impact: Explored the correlation between GDP growth and house price trends.

## Findings:

- Countries with high urbanization rates tend to have higher house price indices.
- GDP growth showed a moderate positive correlation with house price increases.

# Correlation & Relationships

- House Price vs. Rent Index: Checked if house price increases lead to rent increases.
- Affordability vs. Economic Indicators: Analyzed the relationship between affordability, inflation, and mortgage rates.
- Construction Index vs. Housing Market: Examined if increased construction lowers housing prices.

## Findings:

- Construction Index negatively correlated with house prices (suggesting increased construction helps control prices).
- Higher mortgage rates reduced affordability.

# Machine Learning Models

## Model Performance Summary (Before Feature Selection)

| Model                        | MAE ↓  | RMSE ↓  | R² Score ↑  |
|------------------------------|--------|--------|------------|
| **Gradient Boosting (GBR)**  | 24.99  | 31.40  | -0.07      |
| **Random Forest (RF)**       | 27.25  | 31.69  | -0.09      |
| **XGBoost**                  | 26.50  | 32.10  | -0.11      |
| **Linear Regression**        | 26.91  | 30.50  | -0.01      |

---

## Model Performance (After Feature Selection - Recursive Feature Elimination)

| Model                        | MAE ↓  | RMSE ↓  | R² Score ↑  |
|------------------------------|--------|--------|------------|
| **Gradient Boosting (GBR)**  | 22.89  | 27.27  | 0.19       |
| **Random Forest (RF)**       | 23.77  | 28.19  | 0.13       |
| **XGBoost**                  | 25.09  | 29.99  | 0.02       |
| **Linear Regression**        | 26.96  | 30.04  | 0.02       |

**Best Model: Gradient Boosting Regressor (GBR)**
- Lowest MAE & RMSE
- Best R² Score (0.19)

# Key Takeaways

- Housing affordability is decreasing in many regions due to rising mortgage rates.
- Urbanization and GDP growth impact house prices, but construction can help stabilize them.
- Gradient Boosting performed best and was used in the final deployment.

# Future Improvements

- Include more economic factors (e.g., interest rates, wages).
- Experiment with deep learning models (LSTMs for time series forecasting).