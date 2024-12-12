{{
  config(
    materialized='table',
    file_format='delta',
    tblproperties = {
      'delta.enableChangeDataFeed': 'true',
    },
  )
}}


SELECT customer_id
  , get_json_object(data, "$.customer_name") customer_name
  , get_json_object(data, "$.tax_id") tax_id
  , get_json_object(data, "$.state") state
  , get_json_object(data, "$.city") city
  , get_json_object(data, "$.loyalty_segment") loyalty_segment
FROM {{ ref('customers') }}
