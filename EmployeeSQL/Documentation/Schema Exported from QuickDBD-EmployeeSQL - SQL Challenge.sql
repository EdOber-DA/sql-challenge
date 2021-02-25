-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- EmployeeSQL - SQL Challenge - 2021-02-25

-- Schema for sql-challenge - EmployeeSQL
-- Create tables that other tables are dependent on first to avoid foreign key creation in dependent tables

CREATE TABLE "Title" (
    "Title_ID" varchar(5)   NOT NULL,
    "Title" varchar(20)   NOT NULL
);

CREATE TABLE "Department" (
    "Department_Number" varchar(4)   NOT NULL,
    "Department_Name" varchar(25)   NOT NULL
);

CREATE TABLE "Employee" (
    "Employee_Number" int   NOT NULL,
    "Employee_Title_ID" char(5)   NOT NULL,
    "Birth_Date" date   NOT NULL,
    "First_Name" varchar(30)   NOT NULL,
    "Last_Name" varchar(30)   NOT NULL,
    "Gender" char(1)   NOT NULL,
    "Hire_Date" date   NOT NULL
);

CREATE TABLE "Salary" (
    "Employee_Number" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Department_Employee" (
    "Employee_Number" int   NOT NULL,
    "Department_Number" varchar(4)   NOT NULL,
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
        "Employee_Number","Department_Number"
     )
);

CREATE TABLE "Department_Manager" (
    "Department_Number" varchar(4)   NOT NULL,
    "Employee_Number" int   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "Department_Number","Employee_Number"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Employee_Title_ID" FOREIGN KEY("Employee_Title_ID")
REFERENCES "Title" ("Title_ID");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employee" ("Employee_Number");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employee" ("Employee_Number");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_Department_Number" FOREIGN KEY("Department_Number")
REFERENCES "Department" ("Department_Number");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Department_Number" FOREIGN KEY("Department_Number")
REFERENCES "Department" ("Department_Number");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employee" ("Employee_Number");

