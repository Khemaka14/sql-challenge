
CREATE TABLE "Departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Demp_emp" (
    "emp_no" Integer   NOT NULL,
    "demp_no" varchar   NOT NULL,
    CONSTRAINT "pk_Demp_emp" PRIMARY KEY (
        "emp_no","demp_no"
     )
);

CREATE TABLE "Dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" Integer   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" Integer   NOT NULL,
    "emp_title" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" Integer   NOT NULL,
    "salary" Integer   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);


ALTER DATABASE "Challenge" SET datestyle TO "ISO, MDY";

ALTER TABLE "Demp_emp" ADD CONSTRAINT "fk_Demp_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Demp_emp" ADD CONSTRAINT "fk_Demp_emp_demp_no" FOREIGN KEY("demp_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

