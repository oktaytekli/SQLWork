create or replace FUNCTION public.Calisanlar(yil INT)
 returns TABLE (Calisan   varchar, ciro NUMERIC) 
as 
$func$
select  e.First_Name Calisan,sum(od.Quantity*od.Unit_Price*(1-Discount)) Ciro 
    from Employees e
    inner join orders o on e.Employee_ID = o.Employee_ID
    inner join Order_Details od on od.Order_ID=o.Order_ID
    where date_part('year',o.order_date)=yil 
     group by  e.First_Name 
    order by ciro desc ;
$func$
LANGUAGE sql;

select * from Calisanlar(1997);