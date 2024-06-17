USE employee_management_system;
GO

CREATE TABLE tbl_countries(
	id CHAR(3) PRIMARY KEY,
	region_id INT,
	CONSTRAINT FK_region_id FOREIGN KEY (region_id) REFERENCES tbl_regions(id) 
);