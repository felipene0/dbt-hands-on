select
	order_id,
	customer_id,
	order_status as status,
	order_purchase_timestamp as purchase_timestamp,
	order_approved_at as approved_at,
	order_delivered_carrier_date as delivered_carrier_date,
	order_delivered_customer_date as delivered_customer_date,
	order_estimated_delivery_date as estimated_delivery_date
from {{ source('raw', 'orders') }}