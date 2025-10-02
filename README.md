# Using_pythonlibraries_wrote_sql_queries
# 🧾 Basic Sales Analysis with SQLite & Python

_Visualizing and analyzing a tiny sales dataset using SQL inside Python_

---

# 📌 Table of Contents
* <a href="#overview">Overview</a> 
* <a href="#objective">Objective</a> 
* <a href="#dataset">Dataset</a> 
* <a href="#tools--technologies">Tools & Technologies</a> 
* <a href="#project-structure">Project Structure</a> 
* <a href="#steps-performed">Steps Performed</a> 
* <a href="#sql-queries--key-findings">SQL Queries & Key Findings</a> 
* <a href="#export-to-sql-file">Export to SQL File</a> 
* <a href="#how-to-run-this-project">How to Run This Project</a> 
* <a href="#author--contact">Author & Contact</a>

---

## Overview

This project demonstrates how to use **SQLite with Python** to analyze sales data.  
It covers creating a database, inserting sample data, running SQL queries to compute key metrics, and visualizing results using simple bar charts.

---

## Objective

* Learn to connect to a SQLite database in Python  
* Create a table and insert data programmatically  
* Run SQL queries to calculate total/revenue/average/total orders  
* Visualize results using **matplotlib**  
* Export the database as a `.sql` file  

---

## Dataset

* **Type:** Sample sales dataset (created programmatically)  
* **Columns:**  
  - `order_id` → Unique ID of the order  
  - `product` → Product name (Apples, Bananas, Oranges)  
  - `quantity` → Number of units sold  
  - `price` → Price per unit  
* **Rows:** 5 sample rows (demo purposes)  

---

## Tools & Technologies

* **Python** (SQLite, Pandas, Matplotlib)  
* **SQLite** (Database engine)  
* **Jupyter Notebook** (Code execution and visualization)  
* **GitHub** (Version control & documentation)  

---

## Project Structure

```

sales-analysis-sqlite-python/
│
├── README.md
├── .gitignore
├── data/
│ └── sample_sales.csv
├── notebooks/
│ └── sales_analysis.ipynb
├── images/
│ └── revenue_by_product.png
├── sales_data.db
└── sales_data.sql

```

---

## Steps Performed

1. **Connect to SQLite database** (creates `sales_data.db` if it doesn't exist)  
2. **Create `sales` table** with columns: order_id, product, quantity, price  
3. **Insert sample data** into the table  
4. **Run SQL queries** to get:
   - Total quantity sold  
   - Total revenue  
   - Average order value  
   - Total quantity and revenue per product  
   - Total number of orders  
   - Product with highest revenue  
5. **Visualize results** using a bar chart (Revenue by Product)  
6. **Export database** to a `.sql` file using `iterdump()`  

---

## SQL Queries & Key Findings

### Total Revenue per Product
```sql
1)what is highest revenue product?
SELECT product, SUM(quantity * price) AS revenue
FROM sales
GROUP BY product;
findings:-
product  revenue
0  Apples     40.0

2)what is avg sales?
SELECT product, SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 1;
findings :- 
   avg_order_value  14.24

3)what Total quantity and revenue by product?
SELECT AVG(quantity * price) AS avg_order_value
FROM sales;
Findings:-
   product  total_qty  revenue
0   Apples         16     40.0
1  Bananas         14     16.8
2  Oranges          8     14.4

4)what is total_orders?
SELECT COUNT(*) AS total_orders
FROM sales;
Findings:-
  total_orders
       5

5)find product with lowest revenue?
SELECT product, SUM(quantity) AS total_qty, SUM(quantity*price) AS revenue
FROM sales
GROUP BY product;
Findings:-
Product with Lowest Revenue:
   product  revenue
   Oranges     14.4
```
## How to Run This Project

1. **Clone the repository** to your local machine:  
```bash
git clone https://github.com/your-username/sales-analysis-sqlite-python.git
Open the Jupyter Notebook (sales_analysis.ipynb) in your preferred environment (Jupyter Notebook, VS Code, or Anaconda).
```
## How to Run This Project

1. **Open the Jupyter Notebook**  
   Open `sales_analysis.ipynb` in your preferred environment (Jupyter Notebook, VS Code, or Anaconda).

2. **Run all cells** to:  
   - Create the SQLite database (`sales_data.db`)  
   - Create the `sales` table  
   - Insert sample data  
   - Execute SQL queries to summarize sales  

3. **Generate visualizations**  
   - Bar chart of Revenue by Product  

4. **Optional: Export the database**  
   Export the database to a `.sql` file using `iterdump()` for sharing or backup:
   
```python
conn = sqlite3.connect("sales_data.db")
with open("sales_data.sql", "w") as f:
    for line in conn.iterdump():
        f.write(f"{line}\n")
conn.close()

```

---
## Author & Contact

**Tarun Burla**  
Data Analyst | Business Intelligence Enthusiast  

📧 Email: [tarunburla1234@gmail.com](mailto:tarunburla1234@gmail.com)  
🔗 LinkedIn: [https://www.linkedin.com/](https://www.linkedin.com/)  
🔗 GitHub: [https://github.com/](https://github.com/)














