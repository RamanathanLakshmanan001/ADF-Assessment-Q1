WITH transactions_products_joined_cte AS (
    SELECT  
        product_id,
        product_family,
        product_sub_family,
        revenue,
        revenue_type
    FROM    
        {{ref('stg_transactions')}}
    INNER JOIN
        {{ref('stg_products')}}  
        USING (product_id)
)

SELECT
    SUM(revenue) AS total_revenue_by_product,
    DENSE_RANK() OVER(ORDER BY total_revenue_by_product DESC) AS product_rank,
    product_id,
    product_family,
    product_sub_family
FROM
    transactions_products_joined_cte
WHERE 
    revenue_type=1
GROUP BY 
    product_id,product_family,product_sub_family
ORDER BY    
    product_rank

    