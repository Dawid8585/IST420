-- Name: Dawid Perkowski
-- File: LAB_5
-- Date: 20200204

--1. Write a report returning the order id, the shipper name, the order date and the city shipped to using
--a derived table
--id, the year, and the number of orders the customer placed during that year. Use a derived table.
--the year, this years order�s, last year�s orders, and the difference between the two. Join two derived
--tables.

select thisyear, curorders, prevorders, (curorders-prevorders) as diff
	from
		 (select year(orderdate) thisyear, count(orderid) curorders 
			from Sales.Orders
			group by year(orderdate)) cy
			left join
			(select year(orderdate) lastyear, count(orderid) prevorders 
			from Sales.Orders
			group by year(orderdate)) py
			on cy.thisyear = py.lastyear + 1

--6. Create a view that aggregates the number of orders per customer per year. Then run a query against
--the view sorting the customers by customer id. Don�t forget to drop the view if one exists before you
--create it. Use the DBO schema			

Drop view if exists dbo.bob;
go
create view dbo.bob
as
select custid, year(orderdate) as custyear, count(orderid) as orders
	from Sales.Orders
	group by custid, year(orderdate)

go
select custid, custyear, orders
	from dbo.bob
	order by custid, custyear;

--7. Create a view similar to the Production.Products table, but include the category name as a column.
--Use the DBO schema. This is an example of denormalizing a database table. After going to all the
--trouble of normalizing a database, can you think of a good reason to denormalize it?