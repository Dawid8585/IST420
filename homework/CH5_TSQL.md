## --Name: Dawid Perkowski

## --File: TSQL Homework 05

1. What is a table expression? Can you give a technical definition of a table expression?
   - Named query expression that represents a valid relational table. 
2. In what SQL clause are derived tables (table valued subqueries) located?
   -  In a FROM clause of an outer query.
3. Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?
   - The table expression is supposed to represent a relation, and they all have unique names.
4. What SQL key word defines a common table expression?
   - WITH
5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?
   - The inner query defining the CTE must follow all requirements mentioned earlier to be valid to define a table expression.
6. Can a main query refer to a previously defined common table expression by multiple aliases?
   - Yes you can each CTE can refer to all previously defined CTEs.
7. In SQL, is a view a durable object?
   - They are permanent objects in the database, making them reusable. 
8. In a view, what does WITH CHECK OPTION do? Why is this important?
   - Its a optional clause on the CREATE VIEW statement. It specifies the level of checking when data is inserted or updated through a view.
9. In a view, what does SCHEMABINDING do? Why is this important?
   - It binds the schema of referenced objects and columns to the schema of the referencing object. It helps avoid errors.
10. What is a table valued function?
    - Reusable table expressions that support input parameters.
11. What does the APPLY operator do?
    - Operates on two input tables (left and right), its used in the FROM clause and there are two APPLY operators; CROSS APPLY, and OUTER APPLY.
12. What are the two forms of the APPLY operator? Give an example of each. 
    - CROSS APPLY, and OUTER APPLY. CROSS APPLY is similar to a CROSS JOIN. OUTER APPLY is similar to a LEFT OUTER JOIN.