
  
    

        create or replace transient table DE_MINI_PROJECT_DB.staging.stg_products
         as
        (SELECT
    DISTINCT *
FROM
    DE_MINI_PROJECT_DB.RAW.products$
WHERE
    product_id IS NOT NULL
    AND product_family IS NOT NULL
    AND product_sub_family IS NOT NULL
        );
      
  