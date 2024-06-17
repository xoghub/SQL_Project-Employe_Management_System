USE employee_management_system;
GO

CREATE PROCEDURE sp_AddEmployee 
	@first_name VARCHAR,
	@last_name VARCHAR = ' ',
	@gender VARCHAR,
	@email VARCHAR,
	@phone INT,
	@hire_date DATE,
	@salary INT = 0,
	@manager_id INT = NULL,
	@job_id INT,
	@department_id INT
AS 
	DECLARE 
BEGIN
	IF @gender = 'Male' OR 'Female'
	
	ELSE PRINT 'Gender Input Should "Male" or "Female" !'
END;