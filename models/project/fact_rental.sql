{{ config(materialized='table',
schema='SILVER_LAYER') }}

select

r.rental_id,

r.customer_id,

i.film_id,

p.payment_id,

p.amount,

p.payment_date,

s.store_id

from {{ source('src','RENTAL') }} r

join {{ source('src','INVENTORY') }} i
on r.inventory_id=i.inventory_id

join {{ source('src','PAYMENT') }} p
on r.rental_id=p.rental_id

join {{ source('src','CUSTOMER') }} c
on r.customer_id=c.customer_id

join {{ source('src','STORE') }} s
on c.store_id=s.store_id