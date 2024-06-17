USE employee_management_system;
GO

CREATE TABLE tbl_departments(
	id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(30) NOT NULL,
	location_id INT,
	CONSTRAINT FK_location_id FOREIGN KEY (location_id) REFERENCES tbl_locations(id)
);