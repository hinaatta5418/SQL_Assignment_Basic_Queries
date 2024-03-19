
/*1. Creating Database
USE sql_assig;

/*2. Created the Table with the name of the employee.
/* SET ID AS PRIMARY KEY DURING TABLE CREATION
CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    emp_age INT,
    job_title VARCHAR(100),
    date_of_birth DATE,
    phone_num VARCHAR(15), -- Using VARCHAR for phone numbers
    insurance_id VARCHAR(15)
) AUTO_INCREMENT = 1;


/* 3. Add the following data to this table in a SINGLE query:
INSERT INTO employee (last_name, first_name, emp_age, job_title, date_of_birth, phone_num, insurance_id)
VALUES 
    ('Smith', 'John', 32, 'Manager', '1989-05-12', '5551234567', 'INS736'),
    ('Johnson', 'Sarah', 28, 'Analyst', '1993-09-20', '5559876543', 'INS832'),
    ('Davis', 'David', 45, 'HR', '1976-02-03', '5550555995', 'INS007'),
    ('Brown', 'Emily', 37, 'Lawyer', '1984-11-15', '5551112022', 'INS035'),
    ('Wilson', 'Michael', 41, 'Accountant', '1980-07-28', '5554403003', 'INS943'),
    ('Anderson', 'Lisa', 22, 'Intern', '1999-03-10', '5556667777', 'INS332'),
    ('Thompson', 'Alex', 29, 'Sales Representative', '2000-07-20', '5552120111', 'INS433');

/* This need to be placed in Alex thompson date_of_birth 5552120111 but this was giving error so i placed a random value 2000-07-20

/*4. WE will check if the data is placed in the table or not
SELECT * FROM employees

/*5. Explore unique job titles
SELECT DISTINCT (job_title) FROM employee;

/*6. Name the top three youngest employees
SELECT emp_age, first_name, last_name, emp_age 
FROM employee ORDER BY emp_age LIMIT 3;

/*7. Update date of birth for Alex Thompson as it is 1992-06-24
UPDATE employee SET date_of_birth = '1992-06-24' WHERE first_name = 'Alex' AND last_name = 'Thompson';

/*8. Delete the data of employees with age greater than 30
DELETE FROM employee WHERE emp_age > 30;

/*9. Concatenating First name and Last name:
SELECT CONCAT (first_name, " " , last_name) as  Full_name FROM employee;

/*10. - Create a table called employee_insurance with the following columns and datatypes
Make insurance_id the primary key of this table

CREATE TABLE employe_insurance (
    insurance_id VARCHAR(15) PRIMARY KEY,
    insurance_info VARCHAR(100)
);

/*11. Insert the following values into employee_insurance:
INSERT INTO employe_insurance (insurance_id, insurance_info)
VALUES 
    ('INS736', 'unavailable'),
    ('INS832', 'unavailable'),
    ('INS007', 'unavailable'),
    ('INS035', 'unavailable'),
    ('INS943', 'unavailable'),
    ('INS332', 'unavailable'),
    ('INS433', 'unavailable');

/*12.  Add a column called email to the employees table. Remember to set an appropriate datatype
ALTER TABLE employee ADD COLUMN email VARCHAR (255);

/*13 Add the value "unavailable" for all records in email in a SINGLE query
UPDATE employee SET email='unavailable'