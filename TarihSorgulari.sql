-- Tarih sorgularinda genel olarak kullanilan date_part fonksiyonu vardir.
select * from Orders where  DATEPART(year,OrderDate)=1996 -- Sql server
select * from Orders where  year(OrderDate)=1996  and month(OrderDate)= 7 and day(orderDate) = 8  -- Sql server


select * from Orders where  DATE_PART('year',Order_Date)=1996 -- postgre server
select * from Orders where  DATE_PART('month',Order_Date)=7 -- postgre server
select * from Orders where  DATE_PART('day',Order_Date)=7 -- postgre server

select DATEPART(DAYOFYEAR,GetDate())
select DATE_PART('doy',CURRENT_TIMESTAMP) -- Day Of Year
select DATE_PART('dow',CURRENT_TIMESTAMP) -- Day Of Week
select DATE_PART('quarter',CURRENT_TIMESTAMP)
select * from orders where  DATE_PART('quarter',order_date)=4 and DATE_PART('year',order_date)=1996

select CURRENT_TIMESTAMP -- Postgresql => su anki zamani verir
select GetDate() -- sql server => su anki zamani verir

select * from employees
select Age(CURRENT_TIMESTAMP,Birth_Date) from employees -- Postgresql 

select DATEDIFF(month,Birthdate,getDate())  from employees -- Sql server


select now(),CURRENT_TIMESTAMP
SELECT LOCALTIME;
show timezone;