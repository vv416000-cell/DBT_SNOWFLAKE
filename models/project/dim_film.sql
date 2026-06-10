{{ config(materialized='table',
schema='SILVER_LAYER') }}

select

film_id,

title,

description,

release_year,

rental_rate,

length

from {{ source('src','FILM') }}