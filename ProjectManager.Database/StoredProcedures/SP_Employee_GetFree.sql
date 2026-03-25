CREATE PROCEDURE [dbo].[SP_Employee_GetFree]
AS
BEGIN
	SELECT	[EmployeeId]
		FROM	[Employee]
	EXCEPT
	SELECT	[EmployeeId]
		FROM [TakePart]
		WHERE	GETDATE() > [StartDate] 
			AND ([EndDate] IS NULL OR [EndDate] > GETDATE())
END