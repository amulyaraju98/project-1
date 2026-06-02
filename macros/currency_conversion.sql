-- {% set currency_conversion=adapter.get_columns_in_relation(source('Amulya_sources', 'currency'))  %}

{% macro currency_converter(currency, value) %}
{% if currency=='Rupees' %}
{{value}}
{% if currency=='Yen' %}
{{value/80}}
{% if currency=='Dollars' %}
{{value/62}}
{% if currency=='Par' %}
{{value/20}}
