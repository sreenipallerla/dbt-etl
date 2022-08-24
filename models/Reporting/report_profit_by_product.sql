select
    productId,
    productName,
    category,
    Subcategory,
    sum(orderProfit) as profit 
from 
{{ ref('stg_orders') }}
group by 
    productId,
    productName,
    category,
    Subcategory