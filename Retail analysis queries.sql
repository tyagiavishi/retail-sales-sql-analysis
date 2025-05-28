use db;
drop table retail;
select * from retail;

SELECT prod_category, COUNT(*) AS total_orders
FROM retail
GROUP BY prod_category
ORDER BY total_orders DESC
LIMIT 1; 					-- top 1 category sold;

SELECT prod_category, ROUND(SUM(total_amt), 2) AS total_revenue
FROM retail
GROUP BY prod_category
ORDER BY total_revenue DESC; -- total revenue by categories

SELECT gender, ROUND(SUM(total_amt), 2) AS gender_revenue, COUNT(*) AS total_orders
FROM retail
GROUP BY gender
ORDER BY gender_revenue DESC; -- total revenue by gender and their total orders sold;

SELECT DATE_FORMAT(date_order,'%M') AS Months, ROUND(SUM(total_amt), 2) AS monthly_revenue
FROM retail
GROUP BY months
ORDER BY months;  -- sales by month;

SELECT age, sum(total_amt) as revenue
from retail
group by age
having age>40
order by age;  -- revenue made by sales to customers above 40;

SELECT transaction_id, COUNT(*) AS order_count
FROM retail
GROUP BY transaction_id
HAVING order_count < 5
ORDER BY order_count ASC; -- low sales products;

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE retail ADD COLUMN date_order DATE; -- adding new column for new date format;

UPDATE retail
SET date_order = STR_TO_DATE(order_date, '%m/%d/%Y'); -- changing fromat from string to date;

ALTER TABLE retail
DROP COLUMN order_date;  -- removing the old format date column;

