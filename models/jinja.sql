-- {%- set var1= "Amulya" -%}
-- {{var1}}

{# amulya #}

{% if i==1 %}
    {{"I'm in first block"}}
{% else %}
    {{"I'm in second block"}}
{% endif %}

{%- for i in [1,2,3] -%}
{{i}}
{% endfor %}