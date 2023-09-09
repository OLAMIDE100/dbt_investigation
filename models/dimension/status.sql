select distinct(status) as status_name,
       {{ dbt_utils.generate_surrogate_key([
                'status'
            ])
        }} as unique_key
        
from {{ ref("google_sheet_stage")}} 