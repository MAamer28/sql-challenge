-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(64)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(64)   NOT NULL,
    last_name varchar(64)   NOT NULL,
    sex char(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Titles (
    title_id varchar(64)   NOT NULL,
    title varchar(64)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary float   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Departments (
    dept_no varchar(64)   NOT NULL,
    dept_name varchar(64)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Dept_Manager (
    dept_no varchar(64)   NOT NULL,
    emp_no int   NOT NULL,
    CONSTRAINT pk_Dept_Manager PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Dept_Emp (
    emp_no int   NOT NULL,
    dept_no varchar(64)   NOT NULL,
    CONSTRAINT pk_Dept_Emp PRIMARY KEY (
        emp_no,dept_no
     )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

