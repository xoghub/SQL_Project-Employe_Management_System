USE employee_management_system;
GO

CREATE TABLE tbl_employees(
	PK_employee_id INT IDENTITY(1,1) PRIMARY KEY,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25),
	gender VARCHAR(10),
	email VARCHAR(25) UNIQUE,
	phone VARCHAR(20),
	hire_date DATE,
	salary INT,
	manager INT,
	job INT,
	department INT
);

ALTER TABLE tbl_employees
ADD CONSTRAINT FK_manager_id
	FOREIGN KEY (manager) REFERENCES tbl_employees(PK_employee_id);

ALTER TABLE tbl_employees
ADD CONSTRAINT FK_job_id
	FOREIGN KEY (job) REFERENCES tbl_job(PK_job_id);

ALTER TABLE tbl_employees
ADD CONSTRAINT FK_department_id
	FOREIGN KEY (department) REFERENCES tbl_department(PK_department_id);