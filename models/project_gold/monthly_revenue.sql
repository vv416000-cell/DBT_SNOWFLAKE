{{ config(materialized='view',
schema='GOLD_LAYER') }}

select

date_trunc('month',to_date(payment_date)) month,

sum(amount) revenue

from {{ ref('fact_rental') }}

group by 1