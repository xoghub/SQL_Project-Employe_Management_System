USE employee_management_system;
GO

CREATE TABLE tbl_role_permissions(
	id INT PRIMARY KEY IDENTITY(1,1),
	role_id INT,
	permission_id INT,
	CONSTRAINT FK_role_id FOREIGN KEY (role_id) REFERENCES tbl_roles(id),
	CONSTRAINT FK_permission_id FOREIGN KEY (permission_id) REFERENCES tbl_permissions(id)
);