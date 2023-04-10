"""
---1
n SQL Server Express, the bit data type can be used to store boolean values. 
The bit data type can store a value of 0, 1, or NULL, where 0 is usually 
interpreted as false and 1 as true.

Here's an example of how to define a column with the bit data type:

---2
In this example, the IsManager column is defined as bit data type, which allows 
it to store boolean values. You can insert and retrieve boolean values using the 
same syntax as other numeric data types. For example, to insert a value of true 
into the IsManager column:

---3
To retrieve boolean values, you can use a CASE statement to convert the bit 
value to a string representation of "true" or "false". For example:
"""
---1
CREATE TABLE Employees (
   EmployeeID int PRIMARY KEY,
   FirstName varchar(50),
   LastName varchar(50),
   IsManager bit
);
---2
INSERT INTO Employees (EmployeeID, FirstName, LastName, IsManager)
VALUES (1, 'John', 'Doe', 1);
---3
SELECT EmployeeID, FirstName, LastName,
   CASE WHEN IsManager = 1 THEN 'true' ELSE 'false' END AS IsManager
FROM Employees;