USE employee_management_system;
GO

CREATE TABLE tbl_account_roles(
	id INT PRIMARY KEY IDENTITY(1,1),
	account_id INT,
	role_id INT,
	CONSTRAINT FK_account_id FOREIGN KEY (account_id) REFERENCES tbl_account(id),
	CONSTRAINT FK_role_id FOREIGN KEY (role_id) REFERENCES tbl_roles(id)
);