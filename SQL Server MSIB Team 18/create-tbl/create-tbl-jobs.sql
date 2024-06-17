USE employee_management_system;
GO

CREATE TABLE tbl_jobs(
	id INT PRIMARY KEY IDENTITY(1,1),
	title VARCHAR(35),
	min_salary INT,
	max_salary INT
);