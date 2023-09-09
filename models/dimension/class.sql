select distinct(class) as class_name,
     {{ dbt_utils.generate_surrogate_key(['class'])}} as unique_key      
from {{ ref("google_sheet_stage")}}
 