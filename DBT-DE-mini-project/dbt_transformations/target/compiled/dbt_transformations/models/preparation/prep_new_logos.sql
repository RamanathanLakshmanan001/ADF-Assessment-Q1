WITH new_logos_cte AS(
    SELECT
        customer_id,
        EXTRACT(YEAR FROM MIN(payment_month)) AS fiscal_year
    FROM
        DE_MINI_PROJECT_DB.staging.stg_transactions
    GROUP BY
        customer_id
)

SELECT  
    fiscal_year,
    COUNT(customer_id) AS no_of_new_logos
FROM
    new_logos_cte
GROUP BY
    fiscal_year
ORDER BY
    fiscal_year