--Join Islemi
-- 1 Inner join : Bir tablodaki her bir kaydin diger tabloda bir karsiligi olan kayitlari listeler
-- inner join ifadesini yazarken inner yazmasak ta default olarak inner join işlemi yapacaktir.

-- Not: Eger sectigimiz sutunlar icerisinde her iki tabloda da ayni sutunlar var ise 
-- acikca bildirilmek zorundadir.

select * from products
inner join categories on products.category_id = categories.category_id

select products.product_name,categories.category_name 
from products
inner join categories on products.category_id = categories.category_id


select p.product_name,c.category_name ,s.company_name
from products p
inner join categories c on p.category_id = c.category_id
inner join suppliers s on s.supplier_id = p.supplier_id

-- select * from products;
-- select * from categories; 
-- select * from suppliers;

select o.order_id SiparisNo,c.company_name SiparisiVeren, (e.First_Name ||' ' || e.last_name ) Calisan ,
s.company_name Kargo , o.Order_Date SiparisTarihi 
from orders o 
inner join customers c on c.customer_id=o.customer_id
inner join employees e on e.employee_id = o.employee_id
inner join shippers s on s.shipper_id = o.ship_via

--Almanyadan tedarik ettigim urunler hangileridir. Ve kategorileri nedir ?
select p.product_name,c.category_name, s.company_name,s.country 
from products p 
inner join suppliers s on p.supplier_id=s.supplier_id
inner join categories c on c.category_id=p.category_id
where s.country='Germany'


Select * from orders
select * from order_details
-- Yilllara gore ciro dagilimi 
select date_part('year',o.order_date) Yil,Round(sum(FLOOR(od.unit_price*od.quantity))) Ciro
from orders o
inner join order_details od on o.order_id = od.order_id
group by date_part('year',o.order_date)
order by yil


