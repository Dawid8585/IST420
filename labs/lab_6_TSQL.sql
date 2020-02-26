-- Name : Dawid Perkowski
-- File : Lab_6
-- Date : February 10, 2020

use TSQLV4;
-- Write a query that returns customer and employee pairs that had order activity in January
--2016 but not in February 2016:

select custid , empid, year(orderdate) as year, month(orderdate) as month, day(orderdate) as day
	from Sales.Orders
	where orderdate like '2016-01-%'
EXCEPT
select custid , empid, year(orderdate) as year, month(orderdate) as month, day(orderdate) as day
	from Sales.Orders
	where orderdate like '2016-02-%';

--Write a query that returns customer and employee pairs that had order activity in both January
--2016 and February 2016:

select custid , empid
	from Sales.Orders
	where orderdate like '2016-01-%'
INTERSECT
select custid , empid
	from Sales.Orders
	where orderdate like '2016-02-%';

--Write a query that returns customer and employee pairs that had order activity in both January
--2016 and February 2016 but not in 2015:

select custid , empid
	from Sales.Orders
	where orderdate like '2016-01-%'
INTERSECT
select custid , empid
	from Sales.Orders
	where orderdate like '2016-02-%'
EXCEPT
select custid , empid
	from Sales.Orders
	where orderdate like '2015-%';


--You are given the following query:
--SELECT country, region, city
--FROM HR.Employees
--UNION ALL
--SELECT country, region, city
--FROM Production.Suppliers;
--You are asked to add logic to the query so that it guarantees that the rows from Employees
--are returned in the output before the rows from Suppliers. Also, within each segment, the
--rows should be sorted by country, region, and city:

SELECT country, region, city
FROM (SELECT 1 AS sort, country, region, city
FROM HR.Employees
UNION ALL
SELECT 2, country, region, city
FROM Production.Suppliers) AS D
ORDER BY sort, country, region, city;

