WITH country_clean_cte AS(
    SELECT 
        CAST(customer_id AS INT) AS customer_id,
        country,
        region
    FROM
        {{source('healthcare_data','countryRegion')}}
    WHERE   
        customer_id IS NOT NULL
        AND country IS NOT NULL
        AND region IS NOT NULL
)

SELECT 
    DISTINCT *
FROM    
    country_clean_cte