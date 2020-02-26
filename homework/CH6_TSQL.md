## --Name: Dawid Perkowski

## --File: TSQL Homework 06

1. What does a set operator do?
   
   - Operators are operators that combine rows from two query result sets (or multisets). They manipulate sets.
2. What are the general requirements of a set operator
   
   -  They have to have the same number of columns and the data has to be compatible.
3. What is a Venn Diagram? This is not in the book.
   
   - Shows relation between two different things.
4. Draw a Venn Diagram of the UNION operator. What does it do?
   
   - The *UNION* operator unifies the results of two input queries.
5. Draw a Venn Diagram of the UNION ALL operator. What does it do?
   
   - The *UNION ALL* operator unifies the two input query results without attempting to remove duplicates from the result. 
6. Draw a Venn Diagram of the INTERSECT operator. What does it do?
   
   - The *INTERSECT* operator returns only the rows that are common to the results of the two input queries.
7. . If SQL Server supported the INTERSECT ALL operator, what would it do?
   
   - It doesn’t eliminate duplicate rows. 
8. . Draw a Venn Diagram of the EXCEPT operator. What does it do?
   
   - The *EXCEPT* operator implements set differences.
9. If SQL Server supported the EXCEPT ALL operator, what would it do?
   
   - The *EXCEPT ALL* operator is similar to the *EXCEPT* operator, but it also takes into account the number of occurrences of each row. 
10. What is the precedence of the set operators?
    
    - The *INTERSECT* operator precedes *UNION* and *EXCEPT*, and *UNION* and *EXCEPT* are evaluated in order of appearance.
    
    