{{
  config(
    materialized="view",
  )
}}


SELECT DISTINCT
  customer_id,
  tax_id
FROM {{ ref('stg_customers')}}
    -- force it to run after dim_customers
    -- allowing the tests to run in the correct order
    -- {{ ref('dim_customers') }}
