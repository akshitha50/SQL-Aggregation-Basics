
-- Task 23: SQL Aggregation Basics

-- Query 1: COUNT
SELECT COUNT(*) AS total_sales
FROM sales;

-- Query 2: COUNT column
SELECT COUNT(total_amount) AS amount_count
FROM sales;

-- Query 3: SUM
SELECT SUM(total_amount) AS total_revenue
FROM sales;

-- Query 4: AVG
SELECT AVG(total_amount) AS average_amount
FROM sales;

-- Query 5: MIN
SELECT MIN(total_amount) AS minimum_amount
FROM sales;

-- Query 6: MAX
SELECT MAX(total_amount) AS maximum_amount
FROM sales;

-- Query 7: SUM with GROUP BY
SELECT category, SUM(total_amount) AS category_total
FROM sales
GROUP BY category;

-- Query 8: COUNT with GROUP BY
SELECT city, COUNT(*) AS sales_count
FROM sales
GROUP BY city;

-- Query 9: AVG with GROUP BY
SELECT category, AVG(total_amount) AS average_amount
FROM sales
GROUP BY category;

-- Query 10: Multiple aggregate functions
SELECT category,
       COUNT(total_amount) AS amount_count,
       SUM(total_amount) AS total_amount,
       MIN(total_amount) AS minimum_amount,
       MAX(total_amount) AS maximum_amount
FROM sales
GROUP BY category;
