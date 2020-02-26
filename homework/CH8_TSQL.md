## --Name: Dawid Perkowski

## --File: TSQL Homework 08

1. When using INSERT, is the list of columns necessary? Why or why not?
   yes columns are necessary. 
   - You can even allow nulls in them. However if your column doesn't allow nulls and is left empty, it will fail. However, Specifying the target column names right after the table name is optional and by doing this you control the value-column associations instead of relying on the order of the columns in the create table statement.
2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?

- yes, you would use a subquery to specify the rows and columns. You can use the VALUES clause for the subquery as a table-value constructor where you need to create a table alias (pg 272)

3. What is the operand for the INSERT EXEC statement?

- this statement is used to insert a result set returned from a stored procedure or a dynamic SQL batch into a target table.
- you use the @ symbol but the syntax is the same as the INSERT SELECT statement
- by using the insert EXEC statement you can insert the result set that is returned from the procedure(query) into a table.

4. How would you use the INSERT INTO statement?

- the INSERT INTO statement is used to insert new records
- you would use it if you needed to copy the results over into a
  new table

5. What are the parameters to the BULK INSERT statement?

- FIELDTERMINATOR ('char')
- DATAFILETYPE (',')
- ROWTERMINATOR ('\n')
- BULK INSERT is used to insert into an existing table data originating from a file. you need to specif the table, source file, and options.

6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?

- IDENTITY is a column property that you can define for a column with any numeric type with a scale of zero (No fraction).
- no because you have to define the property by optionally Specifying a seed (first value) and an increment ( a step value).
- if you don't provide these, then the default is 1 for both. This is used to product surrogate keys

7. How do you create a SEQUENCE object?

 - you invoke a function against the object use the returned value wherever your like.
 - you use the CREATE SEQUENCE command. you need the sequence name at a minimum but note that the defaults for the various properties in such a case might not be what you want.
 - if you dont indicate the date type it will use BIGINT by default
 - a sequence object is not tied to a particular table; rather its an independent object in the database
 - if you want a different type you use AS 'type' in < > brackets

8. How do you use a SEQUENCE object?

 - you can use a sequence to generate order
 - SEQUENCE object supports cycling
- it also supports a caching option (CACHE<val>|NO CACHE) that tells SQL server how often to write the recoverable value to disk

9. How do you alter a SEQUENCE object?

- you can use the ALTER SEQUENCE command (MINVAL<val>, MAXVAL<val>, RESTART WITH<Val>, INCREMENT BY <val>, CYCLE | NO CYCLE, or CACHE (val) | NO CACHE)

10. What is the difference between DELETE and TRUNCATE?

 - Delete: a standard statement that is used to delete data from a table based on an optional filter predicate. It uses the FROM and WHERE clauses
 - Truncate: is a statement that has no filters and so it deletes all rows from a table.
 - when there is an identity column, the two have a difference as well. TRUNCATE resets the identity value back to the original seed but DELETE doesnt even when used without a filter.

11. What is the difference between DELETE and DROP TABLE?

- DELETE eliminates certain data from a table.
- DROP TABLE removes both the data from the table along with the structure of the table permanently