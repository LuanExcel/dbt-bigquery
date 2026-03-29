-- Criando uma Função e chamando ela la nos sql no staging
-- tem que ter o jinja envolvendo a variavel {{column_name}}
{% macro cents_to_dollars(column_name) %}
    round(cast(({{column_name}} / 100) as numeric), 2)
{% endmacro %}
