{{ config(materialized='view',
schema='GOLD_LAYER') }}

select

customer_id,

sum(amount) total_revenue

from {{ ref('fact_rental') }}

group by customer_id

order by total_revenue desc