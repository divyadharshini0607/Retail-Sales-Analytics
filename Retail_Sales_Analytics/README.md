# Retail Sales Analytics

## Project Overview

Retail Sales Analytics is an end-to-end data analytics project that explores retail sales data to identify business trends, evaluate profitability, understand customer purchasing behaviour, and generate actionable business insights.

The project uses Python for data cleaning and exploratory data analysis, PostgreSQL for database management and SQL analysis, and Power BI for interactive dashboard development.

## Project Objectives

- Clean and preprocess raw retail sales data.
- Perform exploratory data analysis (EDA).
- Analyze sales and profit across product categories and regions.
- Understand monthly sales trends.
- Evaluate the relationship between discounts and profitability.
- Identify top-performing customers and products.
- Build an interactive Power BI dashboard.

## Technologies Used

| Technology | Purpose |
|---|---|
| Python | Data cleaning and analysis |
| Pandas, NumPy | Data manipulation |
| Matplotlib, Seaborn | Data visualization |
| Jupyter Notebook | Exploratory data analysis |
| PostgreSQL | Database management |
| SQL | Business data analysis |
| pgAdmin 4 | Database administration |
| Power BI | Interactive dashboard |
| Git & GitHub | Version control |

## Project Structure

```text
Retail_Sales_Analytics/
│
├── dataset/
│   ├── raw_sales.csv
│   └── cleaned_sales.csv
│
├── notebooks/
│   └── sales_analysis.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│
└── README.md
```

## Data Cleaning and Preparation

The original dataset contained 10,800 rows and 21 columns.

The preprocessing workflow included:

- Identifying missing values.
- Separating records with missing Order Date for further investigation.
- Handling missing Postal Code values.
- Converting date columns into appropriate datetime formats.
- Correcting numerical data types.
- Checking for duplicate records.
- Exporting the cleaned transaction dataset.

The resulting transaction dataset contains **9,994 rows and 21 columns**.

## Exploratory Data Analysis

The analysis covered:

- Overall sales and profit performance.
- Monthly sales distribution.
- Category-wise and sub-category-wise performance.
- Regional sales and profitability.
- Customer purchasing behaviour.
- Discount impact on profit.

## SQL Analysis

PostgreSQL was used to perform business-focused queries, including:

- Overall business performance.
- Category and sub-category analysis.
- Regional performance.
- Monthly sales analysis.
- Discount-based profitability analysis.
- Top 10 customers by sales and profit.
- Loss-making sales records.

## Power BI Dashboard

The interactive dashboard contains two pages.

### Page 1 – Sales Overview

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Profit Margin
- Monthly Sales Trend
- Sales by Category
- Regional Sales
- Sub-category Profitability
- Category slicer

### Page 2 – Detailed Analysis

- Year slicer
- Region slicer
- Discount Impact on Profit
- Top 10 Customers
- Sales by Customer Segment

## Key Business Insights

1. Total sales reached **2,297,200.86**, with total profit of **286,397.02**.
2. Technology generated the highest sales and profit among the three product categories.
3. Copiers recorded the highest sub-category profit despite relatively low sales quantity.
4. The West region contributed the highest sales and profit.
5. Tables recorded the largest sub-category loss.
6. Higher discount ranges were associated with negative overall profit in this dataset.
7. November recorded the highest combined monthly sales across the four years.

## Business Recommendations

- Review pricing and discount strategies for loss-making products.
- Investigate the profitability challenges in the Tables sub-category.
- Study successful product categories and regional sales patterns.
- Evaluate customer purchasing behaviour to improve retention.
- Monitor discount levels to maintain profitability.

## Conclusion

This project demonstrates an end-to-end data analytics workflow, from raw data preprocessing and exploratory analysis to SQL-based business analysis and interactive dashboard development.

It highlights how data analytics can transform raw retail data into meaningful business insights that support informed decision-making.

---

**Tools:** Python | PostgreSQL | SQL | Power BI

**Project Domain:** Retail Sales Analytics