{% snapshot supplier_history%}

{{
    config(
        target_schema='DBT_GANGA426',
        target_database='dbt',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

select * from dbt.{{ target.schema}}.supplier
{% endsnapshot%} 
