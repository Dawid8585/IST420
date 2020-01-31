use Northwind;

--1. which regions have employees who have made sales of products by german suppliers.
--list region, employee names, suppliers names, and product names.


select distinct E.EmployeeID, S.CompanyName, P.ProductName, R.RegionDescription,
E.FirstName+' '+E.LastName as Name
	from Orders as O
	join Employees as E
		on O.EmployeeID = E.EmployeeID
	join [Order Details] as OD
		on OD.OrderID = O.OrderID
	join Products as P
		on OD.ProductID = P.ProductID
	join Suppliers as S
		on S.SupplierID = P.SupplierID
	join EmployeeTerritories as ET
		on ET.EmployeeID = E.EmployeeID
	join Territories as T
		on T.TerritoryID = ET.TerritoryID
	join Region as R
		on R.RegionID = T.RegionID
	where S.Country = 'Germany';


	

