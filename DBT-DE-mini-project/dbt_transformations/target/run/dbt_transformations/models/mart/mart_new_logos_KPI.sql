
  
    

        create or replace transient table DE_MINI_PROJECT_DB.mart.mart_new_logos_KPI
         as
        (SELECT
    *
FROM
    DE_MINI_PROJECT_DB.preparation.prep_new_logos
        );
      
  