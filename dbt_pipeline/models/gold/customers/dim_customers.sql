{{
  config(
    materialized='table',
    file_format='delta',
  )
}}

SELECT DISTINCT customer_id, customer_name
FROM {{ ref('stg_customers') }}
