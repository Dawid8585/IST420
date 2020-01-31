## Dawid Perkowski 

## TSQL CH 2B

## 20200121

1. What is a data type? Why do we have data types?	

   - A data type specifies what data the object holds. We use data types to set what we want the computer to know.
2. What is a collation? Name four elements of a collation.

   - Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity.
3. How would you strip whitespace from a string? For example, suppose you had “ Dave ” but wanted only “Dave”.

   - Using LTRIM and RTRIM
4. Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.

   - select  collegename from college where Institute = 1;	
   - select * from colleges where collegename like "%institute";
5. How would you find the number of the index of the first space in a string? For example, the index of the first space in “Barack Hussein Obama” would be 7.
   - You would use CHARINDEX.
   - SELECT instr("Barack Hussein Obama"," ");
6. How would you select just the first name in a list of the presidents. Each record looks like the: ”George Washington”, ”John Adams”, ”Thomas Jefferson”. First names can be an arbitrary length, from “Cal” to “Benjamin.” (e.g., Cal College, Benjamin Harrison)
   -  SELECT SUBSTR("firstname", 1, instr("firstname", " ")) FROM tblPresident; 
7. What is the order of precedence for the logical operators?
   - Parentheses, Multiplication/Division, Subtraction/Addition, Comparison operators, NOT, AND, OR , Assignment
8. What is the order of precedence for the math operators?
   - Parentheses, Multiplication/Division, Subtraction/Addition (PEMDAS)
9. What is the difference between a simple and a searched CASE expression?;
   - searched case expressions are more flexible, while the simple CASE has a single test value
10. How would you turn a list of names like this: “LASTNAME, FIRSTNAME”, to a list like this: “FIRSTNAME LASTNAME”?
    - select substr("firstname, lastname", 1, instr("firstname, lastname"",")-1);
11. How would you turn a list of names like this: “FIRSTNAME LASTNAME”, to a list like this: “LASTNAME, FIRSTNAME”?
    - select substr("firstname, lastname", instr("firstname, lastname", " "));

