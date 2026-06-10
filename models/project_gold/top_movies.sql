{{ config(materialized='view',
schema='GOLD_LAYER') }}

select

film_id,

count(*) rental_count

from {{ ref('fact_rental') }}

group by film_id

order by rental_count desc