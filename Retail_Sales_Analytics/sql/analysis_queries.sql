
-- =====================================================
-- RETAIL SALES ANALYTICS
-- SQL BUSINESS ANALYSIS
-- Database: retail_sales_db
-- Table: retail_sales
-- =====================================================


-- 1. OVERALL BUSINESS KPIs

SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;


-- 2. CATEGORY-WISE SALES AND PROFIT

SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(AVG(profit), 2) AS average_profit
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;


-- 3. SUB-CATEGORY PERFORMANCE

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY sub_category
ORDER BY total_profit DESC;


-- 4. REGIONAL PERFORMANCE

SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;


-- 5. MONTHLY SALES ANALYSIS

SELECT
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY sales_year, sales_month;


-- 6. DISCOUNT IMPACT ON PROFIT

SELECT
    CASE
        WHEN discount = 0 THEN '0% Discount'
        WHEN discount <= 0.10 THEN '1-10%'
        WHEN discount <= 0.20 THEN '11-20%'
        WHEN discount <= 0.30 THEN '21-30%'
        WHEN discount <= 0.50 THEN '31-50%'
        ELSE 'Above 50%'
    END AS discount_range,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS average_profit,
    COUNT(*) AS total_records
FROM retail_sales
GROUP BY discount_range
ORDER BY MIN(discount);


-- 7. TOP 10 CUSTOMERS BY SALES

SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- 8. TOP 10 CUSTOMERS BY PROFIT

SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM retail_sales
GROUP BY customer_id, customer_name
ORDER BY total_profit DESC
LIMIT 10;


-- 9. TOP 10 MOST LOSS-MAKING SALES RECORDS

SELECT
    order_id,
    customer_name,
    category,
    sub_category,
    ROUND(sales, 2) AS sales,
    ROUND(profit, 2) AS profit,
    discount
FROM retail_sales
WHERE profit < 0
ORDER BY profit ASC
LIMIT 10;


-- 10. LOSS-MAKING RECORDS BY CATEGORY

SELECT
    category,
    COUNT(*) AS loss_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_loss,
    ROUND(AVG(discount) * 100, 2)
        AS average_discount_percentage
FROM retail_sales
WHERE profit < 0
GROUP BY category
ORDER BY total_loss ASC;
