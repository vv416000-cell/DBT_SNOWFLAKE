{% macro check(value) %}
case 
    when {{value}} < 100 then 'Low'
    when {{value}} < 500 and {{value}} > 100 then 'Medium'
    else 'High'
end
{% endmacro %}