
  
    

        create or replace transient table DE_MINI_PROJECT_DB.mart.mart_product_rank_KPI
         as
        (SELECT  
    *
FROM
    DE_MINI_PROJECT_DB.preparation.prep_product_rank
        );
      
  