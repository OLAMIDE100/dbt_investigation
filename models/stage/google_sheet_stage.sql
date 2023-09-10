{{ config(
    materialized='table'
)}}


select * 
from {{ source('google_sheet_source','google_sheet')}}
where Id is not null
order by Id

