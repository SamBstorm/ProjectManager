CREATE PROCEDURE [dbo].[SP_Employee_Get_FromUserId]
	@userId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT	[E].[EmployeeId],
			[Firstname],
			[Lastname],
			[Hiredate],
			[IsProjectManager]
		FROM	[Employee] AS [E]
			JOIN [User] AS [U]
				ON [E].[EmployeeId] = [U].[EmployeeId]
		WHERE	[U].[UserId] = @userId
END
