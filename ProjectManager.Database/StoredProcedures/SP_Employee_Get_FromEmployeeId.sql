CREATE PROCEDURE [dbo].[SP_Employee_Get_FromEmployeeId]
	@employeeId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT	[EmployeeId],
			[Firstname],
			[Lastname],
			[Hiredate],
			[IsProjectManager]
		FROM	[Employee] 
		WHERE	[EmployeeId] = @employeeId
END