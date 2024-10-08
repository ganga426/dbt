{{
    config(
        materialized='table'
    )
}}
 select * from {{source('shop','customer')}}

--select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.customer