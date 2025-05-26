

with customers as (
    select*from {{ ref('stg_customers') }}
),

order_data as (
    select*from {{ ref('stg_orders') }}
),

customer_orders as(
    select*from customers as a
    left join order_data as b using(customer_id)
)
select*from customer_orders