select
-- from raw orders
o.orderid, 
o.orderdate,
o.shipdate,
o.shipmode,

ordersellingprice - ordercostprice as OrderProfit
-- from raw_customer
,c.customername
,c.segment
,c.country
,p.category
,p.productname
,p.subcategory

from {{ ref('raw_orders') }} o
left join 
{{ ref('raw_customers') }} as c
on o.customerid = c.customerid

left join
{{ ref('raw_product') }} as p
on p.productid = o.productid
