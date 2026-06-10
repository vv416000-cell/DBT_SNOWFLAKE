{{config(materialized='table')
}}

select *
from {{ source('src', 'ACTOR') }}