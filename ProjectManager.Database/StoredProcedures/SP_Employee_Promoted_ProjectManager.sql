CREATE PROCEDURE [dbo].[SP_Employee_Promoted_ProjectManager]
	@employeeId UNIQUEIDENTIFIER
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE [Employee]
		SET [IsProjectManager] = 1
		WHERE	[EmployeeId] = @employeeId
END
