## --Name: Dawid Perkowski

## --File: TSQL Homework 09

1.  The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.
   - update dbo.statments  set salestax+salestax where state is X
2. The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?

- You would take the orders and multiply it by sales then by the old tax and then take that and multiply it by the new tax rate and that will get your answer	

3. Explain how the proprietary assignment update command works.

- this statement is used to insert a result set returned from a stored procedure or a dynamic SQL batch into a target table.

4. What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?

- ETL is extract transform and load they are responsible for designing and creating the data warehouse and all related extraction, transformation and load of data functions in the company.

5. What are the semantics of MERGE?

- You specify the target table name in the MERGE clause and the source table name in the USING clause. You define a merge condition by specifying a predicate in the ON clause. The merge condition defines which rows in the source table have matches in the target and which don’t. You define the action to take when a match is found in a clause called WHEN MATCHED THEN, and the action to take when a match is not found in the WHEN NOT MATCHED THEN clause.

6. Write a typical INSERT OUTPUT statement.

- insert into dbo. select X from X where X
- no because you have to define the property by optionally Specifying a seed (first value) and an increment ( a step value).
- if you don't provide these, then the default is 1 for both. This is used to product surrogate keys

7. Write a typical UPDATE OUTPUT statement.

 - update .dboX select X from X where X

8. Write a typical DELETE OUTPUT statement.

 - DELETE FROM dbo.Orders
   WHERE orderdate < '20150101';

9. Write a typical MERGE OUTPUT statement.

- merge into dbo.X using dbo.X on X.sfs = X.s when X 

10. What is nested DML?

 - Nested triggers in SQL Server are actions that automatically execute when a certain database operation is performed, for example, INSERT, DROP, UPDATE etc.

11.  (Not in book) Write a query adding a new column to a table named PERSON. The new column name is DayOfBirth and the data type is string. Use ANSI SQL syntax.
    - DROP TABLE IF EXISTS dbo.person;
    - GO
      CREATE TABLE dbo.person
      (
      custid INT NOT NULL,
      companyname VARCHAR(25) NOT NULL,
      phone VARCHAR(20) NOT NULL,
      address VARCHAR(50) NOT NULL,
      CONSTRAINT PK_Customers PRIMARY KEY(custid)
      );
      INSERT INTO dbo.Customers(custid, companyname, phone, address)
      VALUES
12. (Not in book) Write a query adding a DEFAULT constraint to the column DayOfBirth. The constraint is that the value matches one of SUN, MON, TUE, WED, THU, FRI, or SAT.
    - create table  dbo.X  go alter table dbo.X with nocheck  add constraint X check (dob ('mon''tue))
13. . (Not in book) Write a query adding a foreign key to the column DayOfBirth. The referenced table is named WEEK and the referenced column is ValidDay.
    - alter table person add foreign key (dayofweeek) not null refrence week(calid day)

