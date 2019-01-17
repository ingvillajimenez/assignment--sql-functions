CREATE DATABASE Sprint3;

USE Sprint3;

CREATE TABLE Orders (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Amount DECIMAL(6, 2) NOT NULL,
  Date DATE NOT NULL,
  CustomerId INT NOT NULL,
  SalesmanId INT NOT NULL
);

CREATE TABLE Customer (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  City VARCHAR(255) NOT NULL,
  Grade INT(3),
  SalesmanId INT
);

CREATE TABLE Salesman (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  City VARCHAR(50),
  Comission DECIMAL(3, 2)
);

CREATE TABLE Product (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Price INT,
  CompanyId INT
);

CREATE TABLE Department (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Allotment INT
);

CREATE TABLE Employee (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  DepartmentId INT
);

INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70001,150.5,"2012-10-05",3005,5002);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70009,270.65,"2012-09-10",3001,5005);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70002,65.26,"2012-10-05",3002,5001);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70004,110.5,"2012-08-17",3009,5003);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70007,948.5,"2012-09-10",3005,5002);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70005,2400.6,"2012-07-27",3007,5001);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70008,5760,"2012-09-10",3002,5001);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70010,1983.43,"2012-10-10",3004,5006);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70003,2480.4,"2012-10-10",3009,5003);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70012,250.45,"2012-06-27",3008,5002);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70011,75.29,"2012-08-17",3003,5007);
INSERT INTO Orders (Id, Amount, Date, CustomerId, SalesmanId) VALUES (70013,3045.6,"2012-04-25",3002,5001);

INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3002,"Nick Rimando","New York",100,5001);
INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3005,"Graham Zusi","California",200,5002);
INSERT INTO Customer (Id, Name, City, SalesmanId) VALUES (3001,"Brad Guzan","London",5005);
INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3004,"Fabian Johns","Paris",300,5006);
INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3007,"Brad Davis","New York",200,5001);
INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3009,"Geoff Camero","Berlin",100,5003);
INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3008,"Julian Green","London",300,5002);
INSERT INTO Customer (Id, Name, City, Grade, SalesmanId) VALUES (3003,"Jozy Altidor","Moscow",200,5007);


INSERT INTO Salesman (Id, Name, City, Comission) VALUES (5001,"James Hoog","New York",0.15);
INSERT INTO Salesman (Id, Name, City, Comission) VALUES (5002,"Nail Knite","Paris",0.13);
INSERT INTO Salesman (Id, Name, City, Comission) VALUES (5005,"Pit Alex","London",0.11);
INSERT INTO Salesman (Id, Name, City, Comission) VALUES (5006,"Mc Lyon","Paris",0.14);
INSERT INTO Salesman (Id, Name, Comission) VALUES (5003,"Lauson Hen",0.12);
INSERT INTO Salesman (Id, Name, City, Comission) VALUES (5007,"Paul Adam ","Rome",0.13);

INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (101,"Mother Board",3200,15);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (102,"Key Board", 450,16);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (103,"ZIP drive", 250,14);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (104,"Speaker", 550,16);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (105,"Monitor",5000,11);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (106,"DVD drive", 900,12);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (107,"CD drive", 800,12);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (108,"Printer",2600,13);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (109,"Refill cartridge", 350,13);
INSERT INTO Product (Id, Name, Price, CompanyId) VALUES (110,"Mouse", 250,12);

INSERT INTO Department (Id, Name, Allotment) VALUES (57,"IT", 65000);
INSERT INTO Department (Id, Name, Allotment) VALUES (63,"Finance", 15000);
INSERT INTO Department (Id, Name, Allotment) VALUES (47,"HR",240000);
INSERT INTO Department (Id, Name, Allotment) VALUES (27,"RD", 55000);
INSERT INTO Department (Id, Name, Allotment) VALUES (89,"QC", 75000);

INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (127323,"Michale","Robbin",57);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (526689,"Carlos","Snares",63);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (843795,"Enric","Dosio",57);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (328717,"Jhon","Snares",63);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (444527,"Joseph","Dosni",47);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (659831,"Zanifer","Emily",47);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (847674,"Kuleswar","Sitaraman",57);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (748681,"Henrey","Gabriel",47);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (555935,"Alex","Manuel",57);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (539569,"George","Mardy",27);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (733843,"Mario","Saule",63);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (631548,"Alan","Snappy",27);
INSERT INTO Employee (Id, FirstName, LastName, DepartmentId) VALUES (839139,"Maria","Foster",57);



-- Write a SQL statement to find the total purchase amount of all orders.



-- Write a SQL statement to find the average purchase amount of all orders.



-- Write a SQL statement to find the number of salesmen currently listing for all of their customers.



-- Write a SQL statement to know how many customers have listed their names.



-- Write a SQL statement to find the number of customers who gets at least a value gradation for his/her performance.



-- Write a SQL statement to get the maximum purchase amount from all the orders.



-- Write a SQL statement to get the minimum purchase amount of all the orders.



-- Write a SQL statement which selects the highest grade for each of the cities of the customers.



-- Write a SQL statement to find the highest purchase amount ordered by a customer.



-- Write a SQL statement to find the highest purchase amount ordered by a customer. Order the results by date and highest purchase amount.



-- Write a SQL statement to find the highest purchase amount ordered on '2012-08-17'.



-- Write a SQL statement to find the highest purchase amount from a customer, but only for those customers who have paid in a single order more than $2000.



-- Write a SQL statement to find the highest purchase amount from a customer, but only for those customers who have paid in a single day a range between 3000 and 6000.



-- Write a SQL statement to find the highest purchase amount from a customer, but only for those customers who have paid in a single day a range between 2000, 3000 and 6000.



-- Write a SQL statement to display customer details whose IDs are within the range 3002 and 3007 and highest purchase amount is more than 1000.



-- Write a SQL statement that counts all orders from August 17th, 2012.



-- Write a SQL statement that count the number of salesmen for whom a city is specified.



-- Write a SQL query to calculate the average price of all the products.



-- Write a SQL query to find the number of products with a price more than or equal to 350.



-- Write a SQL query to display the average price of each company’s products.



-- Write a SQL query to find the sum of the allotment amount of all departments. emp_department



-- Write a query in SQL to find the number of employees in each department along with the department code. emp_details

