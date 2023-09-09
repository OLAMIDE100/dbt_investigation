select class, 
       count(class) as class_count         
from {{ ref("google_sheet_stage")}}
group by class