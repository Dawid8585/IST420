--Dawid Perkowski
--LAB 03_TSQL
--20200128

--1. What is the order number and the date of each order sold by each employee?

select OrderID, FirstName, LastName, OrderDate	
	from Orders as O
	inner join Employees as E
	on O.EmployeeID = E.EmployeeID;

--2. List each territory by region.

select *
	from Territories as T
	join Region as R
	on T.RegionID = R.RegionID
	order by R.RegionID;

--3. What is the supplier name for each product alphabetically by supplier?

select ProductName, CompanyName
	from Suppliers as s
	inner join Products as P
	on s.SupplierID = P.SupplierID
	order by CompanyName;

--4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the item?

select *	
	from [Order Details]
select *
	from Orders;


select sum(Quantity)as qty,UnitPrice, OrderDate, ProductID
	from [Order Details] as OD
	inner join Orders as O
	on OD.OrderID = O.OrderID
	where OrderDate = ('1998-05-05')
	group by ProductID, UnitPrice, OrderDate
	order by ProductID;

--5.For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and what was the price of the item?

select * from Orders where OrderDate = '1998-05-05';
select * from [Order Details];
select * from Products;

select ProductName, OD.UnitPrice, sum(Quantity) as qty
	from Orders as O
	join [Order Details] as OD
		on O.OrderID = OD.OrderID
	join Products as P
		on OD.ProductID = P.ProductID
	where OrderDate = '1998-05-05'
	group by OD.ProductID, ProductName, OD.UnitPrice;

-- 6. For every order in May, 1998, what was the customer�s name and the shipper�s name?
--customer name, shipper name, may 1998



select C.CompanyName, S.CompanyName 
	from Orders as O
	join Shippers as S
		on O.ShipVia = S.ShipperID
	join Customers as C
		on C.CustomerID = O.CustomerID
	where month(OrderDate) =5
	and year(OrderDate) = 1998;

--7. What is the customer�s name and the employee�s name for every order shipped to France?
--Customers name employees name order shipped germany

select C.CompanyName,
		E.FirstName+' '+E.LastName as Customer
	from Orders as O
	join Employees as E
		on O.EmployeeID = E.EmployeeID
	join Customers as C
		on C.CustomerID = O.CustomerID
	where ShipCountry = 'France'
	order by ShipCountry;

--8. List the products by name that were shipped to Germany

select P.ProductName
	from Orders as O
	join [Order Details] as OD
		on OD.OrderID = o.OrderID
	join Products as P
		on OD.ProductID = P.ProductID
	where ShipCountry = 'Germany'
	group by ProductName
	order by ProductName;