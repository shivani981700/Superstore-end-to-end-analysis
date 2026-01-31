# End-to-End Sales Analytics Project (Python | SQL | Power BI)

## 📌 Project Objective
This project focuses on analyzing Superstore sales data to evaluate overall business performance, identify key revenue and profit drivers, understand customer purchasing behavior, and assess the impact of discounting on profitability.

---

## 📊 Data Overview
- Superstore transactional sales dataset  
- Time period covered: **2014 – 2017**  
- Data cleaned, validated, and explored using **Python**

---

## 🛠️ Tools & Technologies
- **Python**: Pandas, Matplotlib, Seaborn (data cleaning & EDA)  
- **MySQL**: Data modeling and transformations  
- **Power BI**: Data modeling, DAX measures, and dashboard creation  

---

## 🗂️ Data Modeling Approach
- Designed an **analytical star schema** for efficient reporting  
- Central **fact_sales** table connected to dimension tables  
- Dimensions include:
  - Product  
  - Customer  
  - Geography  
  - Date  
  - Ship Mode  
- Implemented **surrogate keys** for Product and Geography to ensure proper relationships and avoid duplication issues  

---

## 📈 Key Metrics (KPIs)
- Total Revenue  
- Total Profit  
- Total Orders  
- Customer Count  
- Average Order Value (AOV)  
- Month-over-Month (MoM) Revenue Growth  

---

## 💡 Key Business Insights
- High discounts (above 30%) frequently result in negative profit margins  
- Technology category and West region are the strongest contributors to profitability  
- Furniture category shows lower margins despite healthy sales volume  
- Customer retention is very strong, with approximately **98% repeat customers**  

---

## 📊 Dashboard Preview


---

## ▶️ How to Run the Project
1. Execute Python notebooks for data cleaning and exploratory analysis  
2. Load the cleaned dataset into MySQL  
3. Run SQL scripts to create fact and dimension tables  
4. Open the Power BI report file (`.pbix`) and refresh the data  

---
