
  create or replace   view DE_MINI_PROJECT_DB.TEST_SCHEMA.checkConnection
  
   as (
    SELECT * FROM DE_MINI_PROJECT_DB.TEST_SCHEMA.customers$
  );

