select country ,count(country) 
from employees
group by country 

-- Hangi ulkeden kac adet musterim var.
select country,count(*) Adet
from customers
group by country 
order by Adet desc --2 desc--count(*) desc

-- hangi categoriden kac adet urun var ? --products
select category_id ,count(*) from products group by category_id order by 2 desc
-- hangi tedarikciden kac adet urun aliyorum ? --products
select supplier_id ,count(*) from products group by supplier_id order by 2 desc
-- 1997 yilinda hangi ulkeye kac adet siparis gonderdim . --orders
select date_part('year',order_date) yil ,ship_country ,count(*) Adet 
from orders 
--where date_part('year',order_date)=1997
group by date_part('year',order_date),ship_country
order by Adet desc, yil desc

-- 1997 yilinda en az siparis veren ulkeler hangileridir --orders
select ship_country ,count(*) Adet 
from orders 
where date_part('year',order_date)=1997
group by ship_country
order by Adet 
limit 3
-- 1998 yilnda en fazla siparis alan calisanlarimdan ilk 3'u hangisidir. Prim verecegim.--orders
select employee_id ,count(*) Adet 
from orders 
where date_part('year',order_date)=1998
group by employee_id
order by Adet desc
limit 3
-- kargo firmalarinin taşıdıgı siparis sayisi nedir ?
select  ship_via ,count(*) Adet  
from orders
group by ship_via
order by Adet desc
