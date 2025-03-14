WITH transactions_customers_joined_cte AS(
    SELECT
        customer_id,
        customer_name,
        revenue_type,
        revenue
    FROM
        {{ref('stg_transactions')}}
    INNER JOIN 
        {{ref('stg_customers')}}
        USING(customer_id)
)


SELECT  
    CAST(SUM(revenue) AS DECIMAL(10,2)) AS total_revenue_by_customer,
    DENSE_RANK() OVER(ORDER BY total_revenue_by_customer DESC) AS customer_rank,
    customer_id,
    customer_name
FROM    
    transactions_customers_joined_cte
WHERE
    revenue_type=1
GROUP BY    
    customer_id,customer_name
ORDER BY    
    customer_rank