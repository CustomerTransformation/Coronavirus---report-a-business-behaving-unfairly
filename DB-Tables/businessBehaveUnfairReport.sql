USE [FStepCommunity_prod]
GO

/****** Object:  Table [dbo].[businessBehaveUnfairReport]    Script Date: 01/04/2020 14:31:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[businessBehaveUnfairReport](
	[ID_report] [int] IDENTITY(1,1) NOT NULL,
	[reference] [varchar](50) NOT NULL,
	[businessName] [varchar](255) NULL,
	[whereBusiness] [varchar](50) NULL,
	[URL] [varchar](550) NULL,
	[businessAddress] [varchar](1000) NULL,
	[businessEmail] [varchar](255) NULL,
	[businessSector] [varchar](255) NULL,
	[reportWhat] [varchar](50) NULL,
	[product] [varchar](255) NULL,
	[issueDescription] [varchar](max) NULL,
	[haveEvidence] [varchar](5) NULL,
	[evidenceUploaced] [varchar](5) NULL,
	[yourTitle] [varchar](20) NULL,
	[yourFirstName] [varchar](255) NULL,
	[yourLastName] [varchar](255) NULL,
	[yourAddress] [varchar](1000) NULL,
	[yourEmail] [varchar](255) NULL,
	[yourPhone] [varchar](50) NULL,
	[yourMobile] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[dealtComments] [varchar](2000) NULL,
	[createdDate] [datetime] NOT NULL,
	[modifiedBy] [varchar](50) NULL,
	[modifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[businessBehaveUnfairReport] ADD  CONSTRAINT [DF_businessBehaveUnfairReport_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO


