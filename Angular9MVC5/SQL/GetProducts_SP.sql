USE MyDB
Go
CREATE PROCEDURE [dbo].[usp_GetProducts]  
AS
 BEGIN
	--Declare Local Variables
	DECLARE		@Procedure_Name     varchar(100),
                @Error_Num          int,
                @Error_Message      varchar(1000)

	BEGIN TRY

		SELECT [Id]
	      ,[ProductName]
	      ,[SupplierId]
	      ,[UnitPrice]
	      ,[Package]
	      ,[IsDiscontinued]
		FROM [MyDB].[dbo].[Product]
		ORDER BY  CAST(Id AS INT)
		
	END TRY
	BEGIN CATCH

		SET @Error_Num = ERROR_NUMBER()
		SET @Error_Message = ERROR_MESSAGE()
	    
		RAISERROR(@Error_Message,15,1,@Procedure_Name) WITH NOWAIT, SETERROR
	    
	END CATCH
END