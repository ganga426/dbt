{% snapshot mock_orders %}
{%set new_schema=target.schema +'_snapshot' %}
    {{
        config(
            target_schema='new_schema',
            target_database='dbt',
            unique_key='order_id',
            strategy='timestamp',
            invalidate_hard_deletes=False,
            updated_at='updated_at'
        )
    }}

    select * from dbt.{{ target.schema}}.mock_orders
 {% endsnapshot %}%}















{% endsnapshot %}