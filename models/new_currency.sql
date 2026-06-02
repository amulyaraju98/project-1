{% set columns = dbt_utils.get_filtered_columns_in_relation(
    from=source('Amulya_sources', 'currency')
) %}

select
    c.*,

    {% for i in columns %}
        {% if i|lower != 'currency' %}
            {{ currency_converter('c.' ~ i, 'e.exchange_rate') }} as {{ i|lower }}_in_rupees
            {% if not loop.last %},{% endif %}
        {% endif %}
    {% endfor %}

from {{ source('Amulya_sources', 'currency') }} c
join {{ ref('exchange_rates') }} e
    on c.currency = e.currency