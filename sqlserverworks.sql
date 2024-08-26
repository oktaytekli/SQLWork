select * from customers where country='usa' and city = 'seattle'
select * from customers where region is null 

select * from orders where year(ORderDate) = 1996
select * from orders where month(ORderDate) = 7
select * from orders where day(ORderDate) = 5
select * from orders where datepart(year,ORderDate) = 1996