{% macro learn_logging() %}
    {# {{ log("Call your mam!") }} #}
    {{ log("Call your dad!", info=True) }}
{% endmacro %}