USE MyDB
Go

CREATE PROCEDURE [dbo].[usp_GetSuppliers]  

AS

 BEGIN

	--Declare Local Variables
	DECLARE		@Procedure_Name     varchar(100),
                @Error_Num          int,
                @Error_Message      varchar(1000)

	BEGIN TRY

	SELECT [Id]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[City]
      ,[Country]
      ,[Phone]
      ,[Fax]
	FROM [MyDB].[dbo].[Supplier]

	ORDER BY  CAST(Id AS INT)
		
	END TRY

	BEGIN CATCH

		SET @Error_Num = ERROR_NUMBER()
		SET @Error_Message = ERROR_MESSAGE()
	    
		RAISERROR(@Error_Message,15,1,@Procedure_Name) WITH NOWAIT, SETERROR
	    
	END CATCH

END