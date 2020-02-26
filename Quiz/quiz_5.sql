-- Name :
-- File :
-- Date :

select custid, companyname, contactname
	from Sales.Customers 
		where custid in(
		select  custid
			from Sales.Orders 
				where orderdate like '2016-%-%'
	union
		select  custid
			from Sales.Orders 
				where orderdate like '2015-%-%'
		except
		select custid
			from Sales.Orders
				where orderdate like '2014-%-%'
				);





