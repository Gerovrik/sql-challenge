-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/9BVKdA

--create table 
CREATE TABLE "data_dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

--create table 
CREATE TABLE "data_employees" (
    "emp_no" INT   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_data_employees" PRIMARY KEY (
        "emp_no"
     )
);

--create table 
CREATE TABLE "data_dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL
);

--create table 
CREATE TABLE "data_titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL
);

--create table 
CREATE TABLE "data_salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);

--create table 
CREATE TABLE "data_departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL
);

--Check Imports
SELECT * From "data_dept_emp"
SELECT * From "data_employees"
SELECT * From "data_dept_manager" 
SELECT * From "data_titles" 
SELECT * From "data_salaries" 
SELECT * From "data_departments" 


