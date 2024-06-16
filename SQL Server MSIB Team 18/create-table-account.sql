USE employee_management_system;
GO

CREATE TABLE tbl_accounts(
	id INT IDENTITY(1,1),
	username VARCHAR(25),
	password VARCHAR(255),
	otp INT,
	is_expired DATETIME,
	is_used bit,
	CONSTRAINT PK_ID_ACCOUNT PRIMARY KEY (id)
	CONSTRAINT FK_ID_ACCOUNT FOREIGN KEY (id, PK_employee_i) REFERENCES tbl_employees
)