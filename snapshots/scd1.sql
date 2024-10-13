-- snapshots/my_snapshot.sql

{% snapshot mock_orders %}
{{
    config(
        target_database='dbt',
        target_schema='DBT_GANGA426',
        unique_key='ORDER_ID',  -- the primary key of the table
        strategy='timestamp',  -- can be 'timestamp' or 'check' 
        updated_at='updated_at'  -- the timestamp column for tracking changes
    )
}}

SELECT
   *
FROM
    {{ ref('mock_orders') }}

{% endsnapshot %}
