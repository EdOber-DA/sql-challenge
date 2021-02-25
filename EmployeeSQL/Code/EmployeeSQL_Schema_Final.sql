-- Schema for sql-challenge - EmployeeSQL
-- Create tables that other tables are dependent on first to avoid foreign key creation in dependent tables

CREATE TABLE Title (
    Title_ID 		varchar(5)   	NOT NULL	PRIMARY KEY,
    Title 		varchar(20)   	NOT NULL
     );


CREATE TABLE Department (
    Department_Number 	varchar(4)	NOT NULL	PRIMARY KEY,
    Department_Name 	varchar(25)   	NOT NULL	UNIQUE
     );


CREATE TABLE Employee (
    Employee_Number	int	   	NOT NULL	PRIMARY KEY,
    Employee_Title_ID 	char(5)		NOT NULL,
    Birth_Date 		date   		NOT NULL,
    First_Name 		varchar(30)   	NOT NULL,
    Last_Name 		varchar(30)   	NOT NULL,
    Gender 		char(1)		NOT NULL,
    Hire_Date 		date    	NOT NULL,
FOREIGN KEY(Employee_Title_ID) REFERENCES Title(Title_ID)
     );


CREATE TABLE Salary (
    Employee_Number 	int		NOT NULL	PRIMARY KEY,
    Salary 		int   		NOT NULL,
FOREIGN KEY(Employee_Number) REFERENCES Employee(Employee_Number)
     );


CREATE TABLE Department_Employee (
    Employee_Number 	int   		NOT NULL,
    Department_Number	varchar(4)   	NOT NULL,
PRIMARY KEY (Employee_Number, Department_Number),     
FOREIGN KEY(Department_Number) REFERENCES Department(Department_Number),
FOREIGN KEY(Employee_Number) REFERENCES Employee (Employee_Number)
     );


CREATE TABLE Department_Manager (
    Department_Number varchar(4)   	NOT NULL,
    Employee_Number 	int   		NOT NULL,
PRIMARY KEY (Employee_Number, Department_Number),
FOREIGN KEY(Department_Number) REFERENCES Department (Department_Number),
FOREIGN KEY(Employee_Number) REFERENCES Employee (Employee_Number)
     );

