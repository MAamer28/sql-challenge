# Module 9: SQL Challenge

## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Tasks
The EmployeeSQL database was planned via Quick DBD (https://www.quickdatabasediagrams.com/). Firstly, the tables were organized conceptually according to the 6 CSV files given. Column names were constructed and the data types for each column specified using the CSV files as references. Then, primary keys were assigned to each table. Finally, each table was connected to other tables via the appropriate foreign keys. 

Once the tables were constructed with the correct column names and data types, and primary and foreign keys assigned to columns accordingly, the CSV files were imported into their respective tables via PgAdmin 4's import functionality. Thus, queries were written to provide data analysis on the EmployeeSQL database as required.

## Data Analysis

Please see the Analysis_Queries.sql file in the EmployeeSQL folder to note the queries written answering each of the following inquests:

  1. List the employee number, last name, first name, sex, and salary of each employee.

  2. List the first name, last name, and hire date for the employees who were hired in 1986.

  3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

  4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

  5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

  6. List each employee in the Sales department, including their employee number, last name, and first name.

  7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

  8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## References

https://www.postgresql.org/docs/current/datatype.html

https://www.postgresqltutorial.com/
