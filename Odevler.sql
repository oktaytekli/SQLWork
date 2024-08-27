--Ulkelerin yaptigi cirolari bulalim.
select c.Country,Round(sum(od.Quantity*od.UnitPrice*(1-Discount)),0) Ciro 
from orders o 
inner join Customers c on c.CustomerID=o.CustomerID
inner join [Order Details] od on od.OrderID = o.OrderID
group by c.Country
order by Ciro desc

--Ulkelerin yaptigi ciorlari yillara gore dagitalim.
select top 10 * from Orders
select top 10 * from [Order Details]
--calisanlarin yaptigi ciro nedir (1997 yili) 
select e.FirstName + ' '+ e.LastName ,Round(sum(od.Quantity*od.UnitPrice*(1-Discount)),0) Ciro 
from Employees e
inner join orders o on e.EmployeeID = o.EmployeeID
inner join [Order Details] od on od.OrderID=o.OrderID
where year(o.OrderDate) = 1997
group by  e.FirstName + ' '+ e.LastName
order by ciro desc 
--kargo firmalarinin tasidigi siparislerin toplam degeri nedir 
select s.CompanyName,Round(sum(od.Quantity*od.UnitPrice*(1-Discount)),0) Ciro 
from Shippers s 
inner join orders o on o.ShipVia = s.ShipperID
inner join [Order Details] od on od.OrderID=o.OrderID
GROUP by s.CompanyName
Order by ciro desc 
--kategorilere gore ciro nedir ?
select c.CategoryName,Round(sum(od.Quantity*od.UnitPrice*(1-Discount)),0) Ciro 
from Categories c 
inner join Products p on p.CategoryID = c.CategoryID
inner join [Order Details] od on od.ProductID=p.ProductID
inner join orders o on o.OrderID = od.OrderID
GROUP by c.CategoryName
Order by ciro desc 


select c.CategoryName,Round(sum(od.Quantity*od.UnitPrice*(1-Discount)),0) Ciro 
from products p 
inner join Categories c on c.CategoryID =p.CategoryID
inner join [Order Details] od on od.ProductID = p.ProductID
GROUP by c.CategoryName
order by ciro desc 
--1997 yilindaki cirolarin aylara gore dagilimi nedir ?
select month(o.OrderDate) ay , Round(sum(od.Quantity*od.UnitPrice*(1-Discount)),0) Ciro 
from [Order Details] od 
inner join orders o on o.OrderID = od.OrderID
where year(o.OrderDate) = 1997
Group by month(o.OrderDate)
Order by ay 