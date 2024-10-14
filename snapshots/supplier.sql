{% snapshot supplier_history%}

{{
    config(
        target_schema='DBT_snapshot',
        target_database='dbt',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

--select * from dbt.{{ target.schema}}.supplier
select * from db1.DBT_SCHEMA.supplier
{% endsnapshot%} 
