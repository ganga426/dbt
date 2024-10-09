{{
    config(
        materialized='table'
    )
}}
--select * from {{source('shop','customer')}}
SELECT * FROM DBT.DBT_SCHEMA.CUSTOMER