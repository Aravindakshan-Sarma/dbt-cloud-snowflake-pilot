{{ config(schema='staging') }}

SELECT
  customer_id,
  UPPER(full_name) AS full_name,
  email,
  LOWER(country) AS country,
  signup_date
FROM {{ source('raw', 'raw_customers') }}
