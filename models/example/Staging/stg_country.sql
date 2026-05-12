{{ config(
    materialized='table',
    schema='staging'
) }}


SELECT
    ru.SALES_ID,
    ru.SALES,
    rc.COUNTRY

FROM {{ source('Amulya_sources', 'Raw_Sales') }} ru

LEFT JOIN {{ ref('country_code') }} rc
    ON ru.COUNTRY = rc.COUNTRY_CODE