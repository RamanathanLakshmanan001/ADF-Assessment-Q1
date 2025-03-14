WITH transactions_clean_cte AS(
    SELECT
        CAST(customer_id AS INT) AS customer_id,
        product_id,
        CAST(payment_month AS DATE) AS payment_month,
        CAST(revenue_type AS INT) AS revenue_type,
        CAST(revenue AS FLOAT) AS revenue,
        CAST(quantity AS INT) AS quantity,
        companies AS company
    FROM
        {{source('healthcare_data','transaction$')}}
    WHERE
        customer_id IS NOT NULL
        AND product_id IS NOT NULL
        AND payment_month IS NOT NULL
        AND revenue_type IS NOT NULL
        AND revenue IS NOT NULL
        AND quantity IS NOT NULL
        AND company IS NOT NULL
 )   

 SELECT 
    DISTINCT *
FROM
    transactions_clean_cte
