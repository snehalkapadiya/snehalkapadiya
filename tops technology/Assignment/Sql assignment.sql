# Statement to create the Contact table 
CREATE DATABASE ASSIGNMENT ;
 USE ASSIGNMENT;
 CREATE TABLE CONTACT
 (
 CONTACTID INT ,
 COMPANYID INT ,
 FIRSTNAME VARCHAR(45) ,
 LASTNAME VARCHAR(45) ,
 STREET VARCHAR(45) ,
 CITY VARCHAR(45) ,
 STATE VARCHAR(02) ,
 ZIP VARCHAR(10) ,
 ISMAIN BOOLEAN ,
 EMAIL VARCHAR(45) ,
 PHONE VARCHAR(12) 
 );
 
 #2) Statement to create the Employee table
 USE ASSIGNMENT;
 CREATE TABLE EMPLOYEE
 (
 EMPLOYEEID INT ,
 FIRSTNAME VARCHAR(45) ,
 LASTNAME VARCHAR(45) ,
 SALARY DECIMAL(10,2),
 HIREDATE DATE ,
 JOBTITLE VARCHAR(25) ,
 EMAIL VARCHAR(45) ,
 PHONE VARCHAR(12) 
 );
 
 /*3) Statement to create the ContactEmployee table   HINT: Use DATE as the datatype for ContactDate. 
 It allows you to store the date in this format: YYYY-MM-DD (i.e., ‘2014-03-12’ for March 12, 2014).*/
 
 USE ASSIGNMENT;
 CREATE TABLE CONTACTEMPLOYEE
 (
 CONTACTEMPLOYEEID INT ,
 CONTACTID INT ,
 EMPLOYEEID INT ,
 CONTACTDATE DATE ,
 DESCRIPTION VARCHAR(100) 
 );
 
 #4) In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800
 
 UPDATE EMPLOYEE SET PHONE = 215-555-8800 WHERE EMPLOYEEID = 1505 ;
 
 #5) In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” . 
 
 USE ASSIGNMENT;
 CREATE TABLE COMPANY
 (
 COMPANYID INT PRIMARY KEY ,
 COMPANYNAME VARCHAR(45) ,
 STREET VARCHAR(45) ,
 CITY VARCHAR(45) ,
 STATE VARCHAR(02) ,
 ZIP VARCHAR(10) 
 );
 UPDATE COMPANY SET COMPANYNAME = "URBAN OUTFITTERS" WHERE COMPANYID = 100;

/*6)  In ContactEmployee table, the statement that removes Dianne Connor’s contact event with Jack lee (one statement). 
#HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove.*/  
 
 DELETE FROM ContactEmployee 
WHERE EmployeeID = (SELECT EmployeeID FROM Employee WHERE FIRSTNAME = 'Dianne') 
AND ContactID = (SELECT EmployeeID FROM Employee WHERE FIRSTNAME = 'Jack');
 
 
 /*7) Write the SQL SELECT query that displays the names of the employees that have contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. 
 Copy the results below as well. */

 SELECT Employee.FirstName, Employee.LastName FROM Employee JOIN ContactEmployee ON Employee. EmployeeID = ContactEmployee. EmployeelD JOIN Contact ON

ContactEmployee.ContactID = Contact.ContactID JOIN Company ON Contact.CompanyID = Company.CompanyID WHERE Company. CompanyName = 'Toll Brothers';
 
 
 #8) What is the significance of “%” and “_” operators in the LIKE statement? 
 The LIKE operator is used in a WHERE clause to search for a specified pattern in a column. There are two wildcards often used in conjunction with the LIKE operator: The
 percent sign % represents zero, one, or multiple characters. The underscore sign _ represents one, single character.
 
 #9) Explain normalization in the context of databases. 
Normalization is the process of organizing data in a database. It includes creating tables and establishing relationships between those tables according to rules designed both
 to protect the data and to make the database more flexible by eliminating redundancy and inconsistent dependency.
 
#10) What does a join in MySQL mean?  
 JOINs help you fetch data from several tables, which share a common field, and get a single result.
 
 #11)What do you understand about DDL, DCL, and DML in MySQL? 
DDL stands for Data Definition Language. DML stands for Data Manipulation Language. DCL stands for Data Control Language. It helps us to define the structure of the database.
 
 #12) What is the role of the MySQL JOIN clause in a query, and what are some common types of joins?
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
 
 
 
 
 
 
 
 
 