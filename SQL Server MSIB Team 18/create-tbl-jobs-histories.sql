USE employee_management_system;
GO

CREATE TABLE tbl_job_histories(
	employee_id INT,
	start_date DATE,
	end_date DATE,
	status VARCHAR(10),
	job_id INT,
	department_id INT
	CONSTRAINT PK_job_histories PRIMARY KEY (employee_id, start_date),
	CONSTRAINT FK_employee_id_histories FOREIGN KEY (employee_id) REFERENCES tbl_employees(PK_employee_id),
	CONSTRAINT FK_job_id_histories FOREIGN KEY (job_id) REFERENCES tbl_jobs(id),
	CONSTRAINT FK_department_id_histories FOREIGN KEY (department_id) REFERENCES tbl_departments(id)
);