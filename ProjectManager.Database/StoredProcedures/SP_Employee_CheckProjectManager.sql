CREATE PROCEDURE [dbo].[SP_Employee_CheckProjectManager]
	@employeeId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT	[IsProjectManager]
		FROM [Employee]
		WHERE [EmployeeId] = @employeeId
END
