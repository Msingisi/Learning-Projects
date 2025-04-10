# Avocado Price Analysis

## Business Problem
The goal of this project is to predict the average price of avocados in the United States based on historical data.

## Data Overview
- The dataset contains **53,415** entries with **12** columns.
- Key features include:
  - `Date`: The timestamp of the recorded price.
  - `AveragePrice`: The target variable (price of avocados).
  - `TotalVolume`: Total volume of avocados sold.
  - `TotalBags`, `SmallBags`, `LargeBags`, `XLargeBags`: Different types of avocado packaging.
  - `plu4046`, `plu4225`, `plu4770`: Price look-up codes for different avocado varieties.

## Data Cleaning
- Missing values were found in `SmallBags`, `LargeBags`, and `XLargeBags` (12,390 each) and were filled with **0**.
- `Date` was converted to datetime format.
- **TotalBags Mismatch**: 39,457 rows where `TotalBags` didn’t match the sum of its components.
- **TotalVolume Mismatch**: 38,010 rows where `TotalVolume` didn’t match the sum of `plu4046`, `plu4225`, `plu4770`, and `TotalBags`.

## Exploratory Data Analysis (EDA)

### 1. Avocado Sales Trends Over Time
- **Findings**: Seasonal fluctuations in sales volume, with peaks in specific months.
- **Plot Interpretation**: Line charts showed clear demand variations, likely due to seasonal factors or marketing campaigns.

### 2. Price Distribution
- **Findings**: The price distribution was right-skewed, indicating that most avocado prices were in the lower range, but some high prices created a long tail.
- **Plot Interpretation**: A histogram and KDE plot confirmed this skewness.

### 3. Regional Price Differences
- **Findings**: Some regions consistently had higher avocado prices than others.
- **Plot Interpretation**: A bar chart displayed the average price per region, highlighting costlier areas.

### 4. Impact of Avocado Type on Price
- **Findings**: Different avocado types (conventional vs. organic) had varying price patterns.
- **Plot Interpretation**: A boxplot showed that organic avocados were priced higher on average.

### 5. Relationship Between Total Volume and Price
- **Findings**: Higher sales volume did not always correlate with lower prices.
- **Plot Interpretation**: A scatter plot with a regression line suggested a weak correlation.

## Conclusion
- Avocado prices fluctuate seasonally.
- Certain regions have significantly higher avocado prices.
- Organic avocados tend to be more expensive than conventional ones.
- Sales volume does not always predict price changes.


