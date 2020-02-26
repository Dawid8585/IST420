--Dawid Perkowski
--TSQL EX 3/5
use TSQLV4;


	select * from dbo.USPresidents;

--1. Create an appropriate table schema.
create table USPresidents
(
[ID] varchar(255), 
[Last Name] varchar(255),
[First Name] varchar(255) ,
[Middle name] varchar(255),
[Order of Presidents] varchar(255) ,
[Date of Birth] varchar(255) ,
[Date of Death] varchar(255),
[Town or County of Birth] varchar(255) ,
[State of Birth] varchar(255) ,
[Home State] varchar(255) ,
[Party Affiliation] varchar(255) ,
[Date Took Office] varchar(255) ,
[Date Left Office] varchar(255) ,
[Assassination Attempt] varchar(255) ,
[Assassinated] varchar(255) ,
[Religious Affiliation] varchar(255),
[Image Path] varchar(255),
);

--2. Insert the CSV data into the table you just created.
BULK INSERT USPresidents FROM 'C:\Users\perko\Desktop\MSSA\ex5tsql1.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

--3. Delete the column that contains the path to the images
alter table dbo.USPresidents
	drop column [Image Path];

--4. Delete the rst record from your table using the output clause. This is the header.
delete from dbo.USPresidents
	where ID = 'ID'

--Alter the presidents table by adding an integer column, beginning at 1 and ending at 44, that is NOT NULL and UNIQUE.
alter table USPresidents
alter column ID int not null;
	
	--5. Bring the data up to date by updating the last row. Use the output clause.
alter table USPresidents
add unique (ID);

--6. Bring the data up to date by adding a new row. Use the output clause.
update USPresidents 
set [Date Left Office] = '1/20/2017', [Assassination Attempt] = 'false', [Assassinated] = 'false'
OUTPUT inserted.[Date Took Office],
inserted.Assassinated,
inserted.Assassinated
where ID = 44;

--7. How many presidents from each state belonged to the various political parties? Aggregate by party
--   and state. Note that this will in eect be a pivot table.
insert into USPresidents ([ID]
      ,[Last Name]
      ,[First Name]
      ,[Middle name]
      ,[Order of Presidents]
      ,[Date of Birth]
      ,[Town or County of Birth]
      ,[State of Birth]
      ,[Home State]
      ,[Party Affiliation]
      ,[Date Took Office]
      ,[Assassination Attempt]
      ,[Assassinated]
      ,[Religious Affiliation]
)
values(
45,
'Trump',
'Donnald',
'John',
'45',
'6/14/1946',
'Queens',
'New York',
'New York',
'GOP',
'1/20/2017',
'FALSE',
'FALSE',
'Presbyterian'
);
--7. How many presidents from each state belonged to the various political parties? Aggregate by party 
--   and state. Note that this will in eect be a pivot table.
select * from 
(
	select [Home State], [Party Affiliation] from USPresidents
)src
pivot
(
	count([Home State])
	for [Party Affiliation] in ([Democratic],[Democratic-Republican],[Democratic-Republican/National Republican],[Democratic/National Union],
	[Federalist],[GOP],[Independent],[Republican],[Republican/National Union],[Whig])

)pvt;


--8. Create a report showing the number of days each president was in oce.
  select [Last Name],  DATEDIFF(DAY,[Date Took Office],[Date Left Office]) as diffdate FROM USPresidents;
  


  --9. Create a report showing the age (in years) of each present when he took oce.
  select [Last Name],  DATEDIFF(DAY,[Date of Birth],[Date of Death]) as diffdate FROM USPresidents;
  


--10. See if there is any correlation between a president's party and reported religion, or lack of reported religion.
select [Party Affiliation] as Party,[Religious Affiliation] from USPresidents
group by [Party Affiliation],[Religious Affiliation];

