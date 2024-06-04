{{ config(materialized='table') }}


SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM {{source('uwinnipeg', 'ORDERS')}} O
JOIN {{source('uwinnipeg', 'CUSTOMER')}} c ON o.customer_id = c.customer_id