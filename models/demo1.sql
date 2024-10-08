{{
    config(
        materialized='table'
    )
}}
create table demo1 as select * from db1.public.customer