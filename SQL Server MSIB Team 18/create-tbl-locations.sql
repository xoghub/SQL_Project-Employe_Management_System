USE employee_management_system;
GO

CREATE TABLE tbl_locations(
	id INT PRIMARY KEY IDENTITY(1,1),
	street_address VARCHAR(40),
	postal_code VARCHAR(12),
	city VARCHAR(30) NOT NULL,
	state_province VARCHAR(25),
	country CHAR(3),
	CONSTRAINT FK_country_id FOREIGN KEY (country) REFERENCES tbl_countries(id) 
);