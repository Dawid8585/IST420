use Northwind;

--1. Write a report giving the employee id, first name, last name, and the average amount of all orders by
--that employee. Here is my output:
select freight
	from Orders
employee id, firstname, lastname, avg ammount 

select e.EmployeeID, e.FirstName, e.LastName, avg(od.unitprice * od.quantity) as AverageSales
	from [Order Details]as od
	join orders as o
		on o.OrderID = od.OrderID
	join Employees as e
		on e.EmployeeID = o.EmployeeID
		group by e.EmployeeID, e.FirstName, e.LastName
		order by avg(od.unitprice * od.quantity) desc;

--2. Write a report that lists our product categories and the average price of all products of that category.
--Include the category id, the category name, and the average price. Here is my output:
select p.CategoryID, c.CategoryName, avg(p.unitprice) averageprice
	from Categories as c
	join Products as p
		on c.CategoryID = p.CategoryID
	group by p.CategoryID, c.CategoryName;
		
--3. In some cities, we have customers, suppliers, and employees. Write a report that lists the customer’s
--contact name, the supplier’s contact name, the employee’s name, and the city in which all three are
--located. Here is my output:select distinct c.ContactName, s.ContactName, e.FirstName+' '+e.LastName as employee_name, s.City	from Employees as e	join Customers as c		on e.City = c.City	join Suppliers as s		on c.city = s.city	order by c.ContactName