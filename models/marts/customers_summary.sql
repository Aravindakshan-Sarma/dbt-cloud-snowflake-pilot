{{ config(schema='marts') }}

SELECT
  country,
  COUNT(*) AS total_customers
FROM {{ ref('stg_customers') }}
GROUP BY country
