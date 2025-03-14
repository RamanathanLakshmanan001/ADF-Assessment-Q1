SELECT
    DISTINCT *
FROM
    {{source('healthcare_data','products$')}}
WHERE
    product_id IS NOT NULL
    AND product_family IS NOT NULL
    AND product_sub_family IS NOT NULL