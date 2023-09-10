{{ config(
    materialized='incremental',
    unique_key='Id'
)}}


select *, current_time as ingested_time
from {{ source('google_sheet_source','google_sheet') }}

{% if is_incremental() %}

where date > (select max(date) from {{ this }}) and Id is not null

{% else %}

where Id is not null

{% endif %}



order by Id