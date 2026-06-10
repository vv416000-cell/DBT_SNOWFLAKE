{{ config(materialized='table',
schema='SILVER_LAYER') }}

select

store_id,

manager_staff_id

from {{ source('src','STORE') }}