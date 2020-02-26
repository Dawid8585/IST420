### -- Dawid Perkowski

### -- File CH4_TSQSL_HW



1. In your own words, what is a subquery?
   - Used to return data that will be used in the main query as a condition to further restrict the data to be retrieved.
2. In your own words, what is a self contained subquery?
   - Its a query that runs before the main query and is good for troubleshooting. You can run it by itself.
3. In your own words, what is a correlated subquery?
   - Row by row query's, each subquery is executed once for every row of the outer query. Cant run it by itself, because it depends on something from the outside.
4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
   - A scalar subquery is a subquery that returns a single value. Such a subquery can appear anywhere in the outer query where a single-valued expression can appear (such as WHERE or SELECT).
      You would use this subquery if you wanted to pull a single piece of data like the first name on a table of x amount of people.
 5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
    - A multivalued subquery is a subquery that returns multiple values as a single column. Some predicates, such as the IN predicate, operate on a multivalued subquery.
      You would use the multivauled subquery if for instance you wanted multiple value like customerid, orderid, and orderdate that are all on the same column.

6. Give an example of a subquery that returns table values. When would you use this kind of subquery?
   - Correlated subqueries are subqueries that refer to attributes from the tables that appear in the outer query. This means the subquery is dependent on the outer query and cannot be invoked independently.
     You would use the correlated subquery if you needed to compare information with the outer query and the subquery, you would utilize this if you needed specific information from two tables.

7. What does the exists predicate do? Give an example.
   - T-SQL supports a predicate called EXISTS that accepts a subquery as input and returns TRUE if the subquery returns any rows and FALSE otherwise.
     If you were searching multiple tables and you needed the information to be on both this is how you would check it.

8. What happens if we use the not operator before a predicate? Give an example.
   - The NOT operator will make it so the predicate following the operator is negated.

9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
   - Two values because it when the query is ran it is either true or false.

10. How would you use a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.
    Running aggregates are aggregates that accumulate values based on some order.
     SELECT orderyear, qty,
    (SELECT SUM(O2.qty)
    FROM Sales.OrderTotalsByYear AS O2
    WHERE O2.orderyear <= O1.orderyear) AS runqty
     FROM Sales.OrderTotalsByYear AS O1
     ORDER BY orderyear;