{% macro learn_variables() %}

    {# {% set my_name_jinja = 'Vitalii' %}
    {{ log("Hello, " ~ my_name_jinja, info=True) }} #}

    {{ log("Hello dbt user " ~ var("user_name", "NO USERNAME IS SET!!!") ~ "!", info=True) }}

{% endmacro %}