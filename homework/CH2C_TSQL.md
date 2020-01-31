

--Name: Dawid Perkowski
--File: CH3_TSQL.SQL
--Date: 20200124

1. List the date/time types in T-SQL

   - DATETIME, *SMALLDATETIME*,  *DATE*, *TIME*, *DATETIME2*, DATETIMEOFFSET

2. How do you express a date/time literal in T-SQL?

   - You would write it out i.eWHERE orderdate = '20160212';

3. What is the setting DATEFORMAT used for?

   - Determines how SQL Server interprets the literals you enter when they are converted from a character-string type to a date and time type.  i.e. dmy

4. Wriite a T-SQL snippet changing the date format to German. Read the documentation on how to do this.

   - Changed language setting to german.

5. What is the difference between CAST(), CONVERT(), and PARSE()?

   - Cast converts the original integer supplier ID to a string data type , Convert explicitly convert the character-string literal to the requested data type, Parse function supports the indication of a culture.

6. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins

   - SELECT SWITCHOFFSET(SYSDATETIMEOFFSET(), '+00:00');

7. How do you add one day to the current date? Add one week? Add one month? Add one year?

   - *DATEADD*

8. Write a SQL snippet to return the number of years between your birth date and today’s date.

   - select julianday('now') - julianday('1996-12-13');

9. . How do you check a string literal to see if it represents a valid date?

   - ISDATE

10. What does EOMONTH() do? Give an example of why this might be very useful.

    - This function returns the last day of the month containing a specified date, with an optional offset.

11. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.

    - SELECT payid, paydate,  empid
      FROM Sales.payments
      WHERE paydate = EOMONTH(paydate);

12. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this.

    - SELECT age

      ​	ROW_NUMBER() age AS rownum

      FROM child
      WHERE age = EOMONTH(age);

    