+{% snapshot mock_order %}
{% set new_schema = target.schema + '_snapshot' %}
    {{
        config(
            target_schema='dbt_schema',
            target_database='db1',
            unique_key='order_id',
            strategy='timestamp',
            updated_at='updated_at'
        )
    }}

    select * from db1.{{ target.schema}}.mock_orders
 {% endsnapshot %}


 