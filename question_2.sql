SELECT 
    dim_date.month_name AS highest_revenue_month,
    SUM(orders.product_quantity * dim_product.sale_price) AS total_revenue
FROM 
    orders orders
JOIN 
    dim_date dim_date ON orders.order_date = dim_date.date
JOIN 
    dim_products dim_product ON orders.product_code = dim_product.product_code
WHERE 
    dim_date.year = 2022
GROUP BY 
    dim_date.month_name, dim_date.month_number
ORDER BY 
    total_revenue DESC
LIMIT 1;