{{ config(materialized='view') }}

WITH orders AS (
    SELECT * FROM {{ ref('stg_orders') }}
),
payments AS (
    SELECT order_id, payment_type, payment_value
    FROM {{ ref('stg_order_payments') }}
)

SELECT
    o.order_id,
    o.customer_id,
    p.payment_type,
    p.payment_value
FROM orders o
LEFT JOIN payments p USING (order_id)