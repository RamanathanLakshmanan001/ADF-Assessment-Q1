WITH customers_clean_cte AS(
    SELECT
        CAST(customer_id AS INT) AS customer_id,
        customer_name,
        company
    FROM 
        {{source('healthcare_data','customers$')}}
    WHERE
        customer_id IS NOT NULL
        AND customer_name IS NOT NULL
        AND company IS NOT NULL
)

SELECT  
    DISTINCT *
FROM
    customers_clean_cte
