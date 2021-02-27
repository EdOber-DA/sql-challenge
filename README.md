# sql-challenge - Employee Database: A Mystery in Two Parts

# SQL Postgress / SQLAlchemy  

## Overview

This is the SQL Homework submission for: Employee Database: A Mystery in Two Parts 

* Included in this is a main folder EmployeeSQL with 3 subfolder: 
   
  * Code: contains SQL for creating the tables and the 8 requested queries.  Also contains Jupyter notebook for the Bonus analysis. 

  * Documenation: Word Document with the ERD created in QuickDBD, schema exported from QuickDBD, Word Document with screen shots of Query output, and Screen Shot Image of the ERD

  * Data: the 6 csv files loaded into the 6 database tables  
  

## Files

* Code:  

  * [Schema for creating tables](EmployeeSQL/Code/EmployeeSQL_Schema.sql)- creates 6 tables, adds primary and foreign keys, adds contraints for no nulls and uniqness.

  * [Queries of the data](EmployeeSQL/Code/EmployeeSQL_Queries.sql)- 8 queries as requested. Description if in the comments before and results are captured in the query output document. 

  * [Bonus Jupyter Notebook](EmployeeSQL/Code/EmployeeSQL_Bonus.ipynb) - sets up SQLAlchemy engine connection, reads from the Postgress database into Pandas and produces graphs and reports.  


* [Documentation:](EmployeeSQL/Documentation)
  
  * [Entity Relationship Diagram](EmployeeSQL/Documentation/ERD_Diagram_from_QuickDBD_for_EmployeeSQL-SQL_Challenge.docx) - word doc

  * [Query Output](EmployeeSQL/Documentation/Query_Output_for_EmployeeSQL-SQL_Challenge.docx) - Screen Shots of the queries and output in Postgress

  * [ERD Diagram](EmployeeSQL/Documentation/EmployeeSQL-ERD_Image.png) - ERD (also shown below)

  * [QuickDBD Schema](EmployeeSQL/Documentation/Schema_Exported_from_QuickDBD-EmployeeSQL-SQL_Challenge.sql) - Sample of exported schema based on ERD
  
	
* [Data](EmployeeSQL/Data) - 6 CSVs used for loading the tables. 

  
## Diagram

### ERD  

* ERD Diagram for the Employee Database

![ERD Diagram](EmployeeSQL/Documentation/EmployeeSQL-ERD_Image.png)
