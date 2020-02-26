## --Name: Dawid Perkowski

## --File: TSQL Homework 07

1. What is a window function? 	
   
   - A function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query.
   
2. What does PARTITION do?
   
   -  Restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row.
   
3.  What does ORDER BY do?
   
   - Defines ordering, but don’t confuse this with presentation ordering.
   
4. What does ROWS BETWEEN do?
   
   -  Filters a frame, or a subset, of rows from the window partition between the two specified delimiters. 
   
5. What is a ranking window function? Why would you use it? Give an example
   
   - Rank each row with respect to others in the window. T-SQL supports four ranking functions: *ROW_NUMBER*, *RANK*, *DENSE_RANK*, and *NTILE*.
   
6. What is an offset window function? Why would you use it? Give an example.
   
   - Return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame. T-SQL supports two pairs of offset functions: *LAG* and *LEAD*, and *FIRST_VALUE* and *LAST_VALUE*.
   
7.  What do LEAD and LAG DO
   
   -  You use these functions to obtain an element from a row that is at a certain offset from the current row within the partition, based on the indicated ordering. The *LAG* function looks before the current row, and the *LEAD* function looks ahead. 
   
8. . What do FIRST VALUE and LAST VALUE do?
   
   - Return an element from the first and last rows in the window frame
   
9. What is an aggregate window function? Why would you use it? Give an example.
   
   - To aggregate the rows in the defined window. They support window-partition, window-order, and window-frame clauses
   
10. What is a pivot table and what does it do?
    
    - Rotating data from a state of rows to a state of columns, possibly aggregating values along the way. In many cases, the pivoting of data is handled by the presentation layer for purposes such as reporting.
    
11. In mathematical theory, what is a power set? How does this definition of power set relate to grouping sets?

    - Power set would combine like sets to turn into cubes. You can use that to simplify sets for grouping sets.

12. What is a bit array? How can you implement a bit array to represent a set of flags? How does the GROUPING ID() function implement a bit array?

13. Read the documentation on the UNIX/Linux chmod command. How would interpret this command: chmod 755 myscript.sql?

    - used to change file permissions chmod changes user, group and other read, write and execute permission. chmod 755 is popular use case for chmod

    