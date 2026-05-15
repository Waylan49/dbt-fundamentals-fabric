with payments as (
    select * from {{ ref('stg_dbo_payments') }}
)
select o.order_id, 
       o.customer_id, 
       p.amount
from  {{ ref('stg_dbo_orders') }} o
left join payments p
on o.order_id = p.order_id