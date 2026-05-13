{% set list_of_countries=dbt_utils.get_column_values(source('Amulya_sources', 'Raw_users'), 'country')%}
{% for i in list_of_countries %}
{{i}}
{% endfor %}
{{list_of_countries}}
