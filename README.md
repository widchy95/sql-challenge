# Pewlett Hackard Employee Database Project

## Project Overview

This project was part of a data engineering task for Pewlett Hackard, a fictional company. The objective was to reconstruct and analyze the employee database, which contained records from the 1980s and 1990s. Using data extracted from six CSV files, this project involved designing a relational database schema, importing data into a PostgreSQL database, and performing various SQL queries to answer key business questions.

## Tools and Technologies Used

- **PostgreSQL:** Database management system used for creating and managing the relational database.
- **pgAdmin:** PostgreSQL administration and management tool used for database creation, table schemata setup, data import, and running SQL queries.
- **SQL:** The language used for database manipulation and querying.

## Setup Instructions

### 1. Cloned the Repository

I cloned the repository to my local machine using the following command:

```bash
git clone https://github.com/widchy95/sql-challenge.git
```

### 2. Created the Database

I used pgAdmin to create the database. The steps followed were:

1. Opened pgAdmin and connected to the PostgreSQL server.
2. Right-clicked on "Databases" and selected "Create" > "Database…"
3. Named the database `pewlett_hackard_employee_db` and clicked "Save."

### 3. Set Up the Database Schema

I ran the `table_schemata.sql` file to create the required tables. This file contained the SQL commands necessary to create the tables based on the designed schema.

1. In pgAdmin, I opened a Query Tool window connected to the `pewlett_hackard_employee_db` database.
2. Created and loaded the `table_schemata.sql` file.
3. Executed the script to create the tables.

### 4. Imported Data from CSV Files

I used pgAdmin’s Import/Export tool to import data into the tables:

1. Right-clicked on each table and chose "Import/Export."
2. Imported data from the corresponding CSV files into each table. I ensured the columns in the CSV files matched the table columns.

### 5. Ran SQL Queries

I created and executed the `queries.sql` file to answer the business questions provided in the project. This file included SQL queries to retrieve specific data from the database, such as employee details, department managers, and hiring trends.

1. Opened the `queries.sql` file in pgAdmin’s Query Tool.
2. Executed the script to view the results.

## ERD Diagram

The following Entity-Relationship Diagram (ERD) illustrated the database schema, showing the relationships between tables:

![ERD Diagram](/EmployeeSQL/emp_db_ERD.png)
## Queries Overview

Here’s a brief overview of the key queries included:

- **Employee Details:** Retrieved employee numbers, names, sex, and salary details.
- **1986 Hires:** Listed employees hired in 1986.
- **Department Managers:** Provided department managers’ details, including department number, name, and their employee information.
- **Department Employees:** Listed employees along with their department details.
- **Name-Based Filtering:** Filtered employees based on specific name criteria.
- **Department-Specific Employees:** Listed employees in specific departments like Sales and Development.
- **Last Name Frequency:** Counted how often each last name appeared in the employee database.

**Widchy Joachim**
*Data Analyst*


