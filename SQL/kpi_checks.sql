-- revenue
select sum(sales) as total_revenue
from fact_sales;

-- orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM fact_sales;

-- customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM fact_sales;

-- profit
select sum(profit) as total_profit
from fact_sales;


-- top 3 products
select p.product_name,
sum(f.sales)as revenue
from fact_sales f
join dim_product p
on f.product_id=p.product_id
group by p.product_name
order by revenue desc
limit 3;


-- top customers
select c.customer_name,
sum(f.sales)as revenue
from fact_sales f
join dim_customer c
on f.customer_id=c.customer_id
group by c.customer_name
order by revenue desc
limit 3;

-- profit by category

SELECT
    p.category,
    SUM(f.profit) AS profit
FROM fact_sales f
JOIN dim_product p
ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY profit DESC;

-- profit by region
SELECT
    g.region,
    SUM(f.profit) AS profit
FROM fact_sales f
JOIN dim_geography g
ON f.postal_code = g.postal_code
GROUP BY g.region
ORDER BY profit DESC;

-- mom revenue percentage

WITH monthly AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(sales) AS total_revenue
    FROM fact_sales
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
),
mom AS (
    SELECT
        month,
        total_revenue,
        LAG(total_revenue, 1) OVER (ORDER BY month) AS prev_month_revenue
    FROM monthly
)
SELECT
    month,
    total_revenue,
    prev_month_revenue,
    total_revenue - prev_month_revenue as mom_change,
    ROUND(
        ((total_revenue - prev_month_revenue) / prev_month_revenue) * 100,
        2
    ) AS mom_percent_change
FROM mom;


-- revenue by month
SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(sales) AS total_revenue
    FROM fact_sales
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
    order by  DATE_FORMAT(order_date, '%Y-%m')
    
    
