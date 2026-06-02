{% set list_of_countries=dbt_utils.get_column_values(source('Amulya_sources', 'Raw_users'), 'country')%}

{% for i in list_of_countries %}
{{i}}
{% endfor %}
{{list_of_countries}}

{% set list_of_columns=adapter.get_columns_in_relation(source('Amulya_sources', 'Raw_users')) %}
{% for i in list_of_columns %}
{{i.column}}
{% endfor %}