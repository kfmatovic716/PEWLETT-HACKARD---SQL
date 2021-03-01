# Pewlett_Hackard-SQL

## Backgound

As a new Data Engineer at Pewlett Hackard, the first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files, which are used in this project.

The tasks in this project involve designing tables to hold data in CSVs, importing CSVs into a SQL database, and answering questions about the data. These activities relates to analytics engineering performing data modeling, data engineering and data analysis. 

### Data Modeling

    > Inspected the 6 CSV files and sketched out an Entity Relationship Diagram of the tables. [see ERD.png (image) or ERD_code.txt (code)]

### Data Engineering

    > Created a table schema for each of the six CSV files
    > Created tables in correct order to handle foreign keys appropriately
    > Imported each CSV file into the corresponding SQL table in the same order that the tables were created and accounted for the headers when importing to avoid errors.
    > Specified data types, primary keys, foreign keys, and other constraints
    > Saved schema in a file called `schema.sql`, which can be run once to create and populate all base tables in the database

### Data Analysis

    > Wrote queries to select the following information from the database:

        1. Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number

        2. Select the first name, last name, and hiring date for all employees hired in 1986

        3. Select the department number, department name, employee number, last name, and first name of all managers of each department

        4. Select the employee number, last name, first name, and department of each employee, ordered by employee number

        5. Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"

        6. Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number

        7. Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

        8. Count the number of employees, grouped by last name

    > Saved the queries in a file called `queries.sql`