{{config(materialized='table',
schema='SILVER_LAYER')}}

select 

customer_id,
first_name,
last_name,
email,
active,
create_date
from {{source('src','CUSTOMER')}}