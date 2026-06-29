# 🛒 Zepto Product Analysis — SQL Project

## 📌 Project Overview

Zepto is a quick commerce platform operating in India's highly competitive grocery delivery space. This project analyzes Zepto's product catalog of **3,700+ SKUs across 14 categories** using SQL (PostgreSQL) to uncover pricing inefficiencies, inventory gaps, and revenue opportunities.

The goal was to answer real business questions a category manager or pricing team would ask — not just run queries, but generate actionable insights.

---

## 🎯 Problem Statement

Zepto lists thousands of products on their app — but without proper analysis, they risk:
- Losing revenue from **high-value products going out of stock**
- **Wasting margin** on over-discounted low-revenue categories
- Having **no visibility** into which categories are worth investing in

This project addresses these gaps using structured SQL analysis.

---

## 📁 Repository Structure

```
zepto-product-analysis-sql/
│
├── README.md
├── queries/
│   └── zepto.sql                  ← All SQL queries
└── results/
    ├── top_10_products_by_discount_percentage.csv
    ├── top_5_category_highest_discount_percent.csv
    ├── estimated_revenue_by_each_category.csv
    ├── high_mrp_but_out_of_stock.csv
    ├── in_stock_vs_out_of_stock.csv
    ├── product_in_weight_category.csv
    ├── total_inventory_weight_per_category.csv
    └── product_mrp_less_than_500_and_discountpercent_greater_than_10.csv
```

---

## 🔍 Analyses Performed

| # | Analysis | Business Question |
|---|----------|-------------------|
| 1 | Top 10 products by discount % | Which products offer the best value to customers? |
| 2 | Top 5 categories by average discount | Which categories are most aggressively discounted? |
| 3 | High MRP products that are out of stock | Where are we losing premium revenue? |
| 4 | Estimated revenue potential by category | Which categories should we invest in? |
| 5 | Products with MRP > ₹500 and discount < 10% | Which expensive products have minimal offers? |
| 6 | Price per gram for products above ₹100 | Which products offer the best value for money? |
| 7 | Products grouped by weight category | How is the catalog distributed across Low, Medium, Bulk? |
| 8 | Total inventory weight per category | Which categories hold the most inventory by weight? |

---

## 📊 Key Findings

- 🏆 **Cooking Essentials** has the highest revenue potential at **₹3.37 lakhs**
- ⚠️ **Fruits & Vegetables** receives the highest average discount at **15.46%** but generates the lowest revenue — a margin concern
- 🚨 **4 premium products** priced up to ₹565 MRP are completely out of stock — direct missed revenue
- 💰 Highest discount on a single product touches **51% off**

---

## 💡 Recommendations

1. **Restock** the 4 high-MRP out-of-stock products immediately — high intent buyers, avoidable revenue loss
2. **Revisit discounting** in Fruits & Vegetables — highest discounts, lowest revenue return
3. **Double down** on Cooking Essentials — highest revenue potential, strong candidate for targeted promotions

---

## 🛠️ Tools Used

- **PostgreSQL** — All queries written and executed in PostgreSQL
- **Excel/CSV** — Result outputs saved and documented

---

## 👤 Author

**Shivam Nagpal**  
Aspiring Data Analyst | SQL • Power BI • Excel  
[GitHub](https://github.com/shivamnagpal1906-eng)
