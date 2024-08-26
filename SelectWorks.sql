-- Tek satirlik yorum satiri
/*
Cok satirli yorum 
*/
-- select veritabindaki tablolari yada view'leri sorgulamaya yarar. 
-- Genel kullanimi select * from <tablo_adi> 
--ornekler 
-- product'lari listeleyelim

select * from products;
select * from categories;
select * from shippers;
select * from employees;
select * from orders limit 5;
select * from order_details limit 5;
select * from products where product_id=72 ;select * from suppliers
/*
select ifadesinde * kullanilirsa tablodaki butun feild alanlari gelir.
Bu genelede tercih edilmez. Cunku fazladan network trafigine neden olur.
Bundan kacmanin yolu ihtiyac duyulan field'larin tke tek aralarinda , olmak kaydiyla belirlenmesidir.

*/
select employee_id,first_name,last_name from employees;-- Bu sekildeki sorgu tercih edilir.
select * from employees;

-- Data Filtreleme : Filtreleme yapmak icin where sarti kullanilir. 
-- Amerika daki musterilerin listesi 
select * from customers where country='USA';
-- Amerika daki musterilerin seattle olanlarin listesi 
select * from customers where country='USA' and city = 'Seattle'

-- where sartinda null kayitlarin aranmasi 
select * from customers where region is null 

-- Tarih ile iligili alanlarin sorgulanmasi
select * from orders where date_part('year',ORder_Date) = 1996
select * from orders where date_part('month',ORder_Date) = 7
select * from orders where date_part('day',ORder_Date) = 5

-- Sayisal alanlarda sorgulama 
select * from orders where ship_via = 3
select * from suppliers

-- Amerika disindaki tedarikcilerin listesi 
select * from suppliers where country != 'USA'
-- işlenencek konular
-- like komutu , count,sum,avg fonksiyonlari , sub query
-- gruplama ve having 
-- join (inner,left,right,full) 
-- procedure ,view , trigger  konulari ele alinacak

--crud islemleri Create,update,delete

--Kendi database'imizi olusturma 
-- Normalization , 

select * from employees where firstname like '[AM]%'
select * from employees where firstname like '%[al]%' 
--firstname alaninda isimlerin j-r arasinda olan kayitlarin getirilmesi
select * from employees where firstname like '[j-r]%' order by FirstName


Select GetDate()