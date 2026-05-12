
SELECT
    ru.ID,
    ru.USER,
    rc.COUNTRY AS COUNTRYNAME

FROM {{ source('Amulya_sources', 'Raw_users') }} ru

LEFT JOIN {{ source('Amulya_sources', 'Raw_country') }} rc
    ON ru.COUNTRY = rc.COUNTRY_ID
