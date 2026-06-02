-- {% set currency_conversion=adapter.get_columns_in_relation(source('Amulya_sources', 'currency'))  %}
-- {% for i in  currency_conversion %}
-- {{case when {{i}} }}

{% macro currency_converter(currency, value) %}
{% if currency=='Rupees' %}
{{value}}
{% elif currency=='Yen' %}
{{value/80}}
{% elif currency=='Dollars' %}
{{value/62}}
{% elif currency=='Par' %}
{{value/20}}
{% endif %}
{% endmacro %}
