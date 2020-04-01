USE [FStepCommunity_prod]
GO

/****** Object:  StoredProcedure [dbo].[businessBehaveUnfairUpdate]    Script Date: 01/04/2020 14:34:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Daniel Gregory
-- Create date: 13/03/2020
-- Description:	update response
-- =============================================
CREATE PROCEDURE [dbo].[businessBehaveUnfairUpdate] 
				@ID as int
				,@response as varchar(max)
				,@status as varchar(50)
				,@name as varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[businessBehaveUnfairReport]
	   SET [dealtComments] = @response
		  ,[status] = @status
		  ,[modifiedBy] = @name
		  ,[modifiedDate] = GETDATE()
	 WHERE ID_report = @ID

END
GO


