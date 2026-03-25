CREATE PROCEDURE [dbo].[SP_TakePart_Insert]
	@employeeId UNIQUEIDENTIFIER,
	@projectId UNIQUEIDENTIFIER,
	@startDate DATE
AS
BEGIN
	INSERT [TakePart] ([EmployeeId],[ProjectId],[StartDate])
	VALUES (@employeeId,@projectId,@startDate)
END
