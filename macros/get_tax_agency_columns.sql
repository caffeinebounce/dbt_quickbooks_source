{% macro get_tax_agency_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "display_name", "datatype": dbt.type_string()},
    {"name": "id", "datatype": dbt.type_string()},
    {"name": "sync_token", "datatype": dbt.type_string()},
    {"name": "tax_tracked_on_purchases", "datatype": "boolean"},
    {"name": "tax_tracked_on_sales", "datatype": "boolean"},
    {"name": "tax_registration_number", "datatype": dbt.type_string()},
    {"name": "created_at", "datatype": dbt.type_timestamp()},
    {"name": "updated_at", "datatype": dbt.type_timestamp()},
    {"name": "_fivetran_deleted", "datatype": "boolean"}
] %}

{{ return(columns) }}

{% endmacro %}
