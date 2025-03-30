/*
CREATE VIEW s_type_sales_summary AS
WITH store_sales AS (
    SELECT 
        ds.store_type,
        SUM(o.product_quantity * dp.sale_price) AS total_sales,
        COUNT(*) AS order_count
    FROM 
        orders o
    JOIN 
        dim_stores ds ON o.store_code = ds.store_code
    JOIN 
        dim_products dp ON o.product_code = dp.product_code
    GROUP BY 
        ds.store_type
),
total_sum AS (
    SELECT SUM(total_sales) AS grand_total
    FROM store_sales
)
SELECT 
    ss.store_type,
    ss.total_sales,
    CAST((100.0 * ss.total_sales / ts.grand_total) AS numeric(10, 2)) AS percentage_of_total_sales,
    ss.order_count
FROM 
    store_sales ss, total_sum ts;
*/

SELECT * FROM s_type_sales_summary