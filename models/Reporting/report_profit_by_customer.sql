select
    customerId,
    customerName,
    country,
    sum(orderProfit) as profit 
from 
{{ ref('stg_orders') }}
group by 
    customerId,
    customerName,
    country