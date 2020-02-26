-- Name: Dawid Perkowski
-- File: LAB_5
-- Date: 20200204

--1. Write a report returning the order id, the shipper name, the order date and the city shipped to using
--a derived tableselect orderid, shipper_name, orderdate, shipcity	from (		select s.companyname as shipper_name, s.shipperid, o.orderid, o.orderdate, o.shipcity			from Sales.Orders o 				join Sales.Shippers s 					on o.shipperid = s.shipperid) so;--2. I need a report showing how many orders each customer made during each year. Return the customer
--id, the year, and the number of orders the customer placed during that year. Use a derived table.Select custid, custyear, totalorders	from(		select o.custid, year(o.orderdate) as custyear, count(o.orderid) as totalorders			from Sales.Orders o			group by o.custid, year(o.orderdate) 		) D		order by custid, custyear;--3. What is the growth or decline in the number of orders taken year by year? Your report should contain
--the year, this years order’s, last year’s orders, and the difference between the two. Join two derived
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
--the view sorting the customers by customer id. Don’t forget to drop the view if one exists before you
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
--trouble of normalizing a database, can you think of a good reason to denormalize it?drop view if exists dbo.prodcat;gocreate view dbo.prodcatasselect  p.productid, p.productname, p.unitprice, pc.categoryname	from Production.Products p	join Production.Categories pc	on p.categoryid = pc.categoryidgoselect *		from dbo.prodcat;