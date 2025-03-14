
  
    

        create or replace transient table DE_MINI_PROJECT_DB.mart.mart_customer_rank_KPI
         as
        (SELECT
    *
FROM
    DE_MINI_PROJECT_DB.preparation.prep_customer_rank
        );
      
  