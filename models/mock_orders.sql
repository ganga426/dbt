{{
    config(
        materialized='table'
    )
}}
select * from db1.dbt_schema.mock_orders