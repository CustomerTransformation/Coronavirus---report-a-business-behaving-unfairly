USE [FStepCommunity_prod]
GO

/****** Object:  StoredProcedure [dbo].[businessBehaveUnfairStore]    Script Date: 01/04/2020 14:33:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniel Gregory
-- Create date: 12/03/2020
-- Description:	Store submitted information in the database table
-- =============================================
CREATE PROCEDURE [dbo].[businessBehaveUnfairStore] 
				@reference as varchar(50)
				,@businessName as varchar(255)
				,@whereBusiness as varchar(50)
				,@URL as varchar(550)
				,@businessAddress as varchar(1000)
				,@businessEmail as varchar(255)
				,@businessSector as varchar(255)
				,@reportWhat as varchar(50)
				,@product as varchar(255)
				,@issueDescription as varchar(max)
				,@haveEvidence as varchar(5)
				,@evidenceUploaded as varchar(5)
				,@yourTitle as varchar(20)
				,@yourFirstName as varchar(255)
				,@yourLastName as varchar(255)
				,@yourAddress as varchar(1000)
				,@yourEmail as varchar(255)
				,@yourPhone as varchar(50)
				,@yourMobile as varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[businessBehaveUnfairReport]
           ([reference]
           ,[businessName]
           ,[whereBusiness]
           ,[URL]
           ,[businessAddress]
           ,[businessEmail]
           ,[businessSector]
           ,[reportWhat]
           ,[product]
           ,[issueDescription]
           ,[haveEvidence]
           ,[evidenceUploaced]
           ,[yourTitle]
           ,[yourFirstName]
           ,[yourLastName]
           ,[yourAddress]
           ,[yourEmail]
           ,[yourPhone]
           ,[yourMobile]
           ,[status]
           ,[createdDate])
     VALUES
           (@reference
			,@businessName
			,@whereBusiness
			,@URL
			,@businessAddress
			,@businessEmail
			,@businessSector
			,@reportWhat
			,@product
			,@issueDescription
			,@haveEvidence
			,@evidenceUploaded
			,@yourTitle
			,@yourFirstName
			,@yourLastName
			,@yourAddress
			,@yourEmail
			,@yourPhone
			,@yourMobile
           ,'submitted'
           ,GETDATE())
		   
		   

END
GO


