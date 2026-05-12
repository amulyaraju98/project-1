-- select * from {{ref ('stg_country')}}

select *,
{{ difference('ship_date') }} as ship_date_diff,
{{ difference('delivered_date') }} as delivered_date_diff
from {{ ref('stg_shipping') }} 

-- select *
-- from {{ source('Amulya_sources', 'shipping') }} 
