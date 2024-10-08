{{
    config(
        materialized='table'
    )
}}
select * from {{source('shop','customer')}}