-- {% macro per_change(a,b) %}
-- ({{a}}-{{b}})/{{b}}*100
-- {% endmacro %}

{% macro difference(a) %}
DATEDIFF(
    day, 
    {{ a }},
    CURRENT_DATE()
    )
{% endmacro %} 