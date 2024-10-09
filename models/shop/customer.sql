--{{
--    config(
--        materialized='table'
--    )
--}}
-- select * from {{source('shop','customer')}}

select * from db1.dbt_schema.customer