{{ config(
    materialized='table',
    schema='staging'
) }}
SELECT
    PRODUCT,
    TO_DATE(SHIP_DATE, 'DD/MM/YY')         AS SHIP_DATE,
    TO_DATE(DELIVERED_DATE, 'DD/MM/YY')    AS DELIVERED_DATE
FROM {{ source('Amulya_sources', 'shipping') }}