# 🛍️ Retail Sales SQL Analysis

This project explores a retail dataset using structured SQL queries to extract insights related to sales, revenue, customer demographics, and product performance. It was created as part of a broader effort to build analytical skills in SQL and prepare for analyst roles in business, data, or financial domains.

---

## 🧰 Tools Used
- **MySQL** – for data querying and transformation
- **Retail Sales Dataset** – sample data from a fictional retail company

---

## 📌 Objectives
- Analyze product category performance
- Understand customer behavior by gender and age
- Track monthly revenue trends
- Identify low-volume transactions
- Practice SQL data transformation and cleaning

---

## 🧪 Key SQL Queries & Insights

### 🔹 Top-Selling Product Categories
```sql
SELECT prod_category, COUNT(*) AS total_orders
FROM retail
GROUP BY prod_category
ORDER BY total_orders DESC
LIMIT 1;

![Alt text]("C:\Users\LENOVO\Pictures\Screenshots\Screenshot 2025-05-28 194634.png")
