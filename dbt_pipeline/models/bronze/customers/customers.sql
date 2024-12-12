{{
    config(
        materialized='table',
        file_format='delta'
    )
}}

WITH customers AS (
    select
        customer_id,
        valid_from,
        data,
        source_filename,
        loaded_at
    from {{ ref('customers_raw') }}
)

select *
from customers