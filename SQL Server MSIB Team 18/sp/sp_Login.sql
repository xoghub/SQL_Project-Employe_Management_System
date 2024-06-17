USE employee_management_system;
GO

CREATE PROCEDURE sp_login 
	@username VARCHAR,
	@password VARCHAR
AS 
BEGIN 
	IF EXISTS (
		SELECT username, password 
		FROM tbl_accounts
		WHERE username = @username AND password = @password
	) PRINT 'Login success!' 
	ELSE 
		PRINT 'Account not registered!'
END;

GO