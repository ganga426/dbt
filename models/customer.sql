--SELECT * FROM DB1.DBT_SCHEMA.CUSTOMER
select * from {{ source('shop', 'customer') }}
--select * from {{ref('customer')}}