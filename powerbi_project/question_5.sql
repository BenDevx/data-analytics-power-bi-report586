
SELECT 
    dp.category,
    SUM((dp.sale_price - dp.cost_price) * o.product_quantity) AS total_profit
FROM 
    orders o
JOIN 
    dim_products dp ON o.product_code = dp.product_code
JOIN 
    dim_stores ds ON o.store_code = ds.store_code
JOIN 
    dim_date dd ON o.order_date = dd.date
WHERE 
    ds.region = 'Wiltshire'
    AND ds.country = 'United Kingdom'
    AND dd.year = 2021
GROUP BY 
    dp.category
ORDER BY 
    total_profit DESC
LIMIT 1;
