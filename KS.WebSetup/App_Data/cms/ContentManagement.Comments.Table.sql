/****** Object:  Table [ContentManagement].[Comments]    Script Date: 2/21/2018 6:48:26 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [ContentManagement].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[IsLeaf] [bit] NOT NULL,
	[Order] [int] NULL,
	[Email] [nvarchar](32) NULL,
	[WebPageId] [int] NOT NULL,
	[Name] [nvarchar](32) NULL,
	[Content] [nvarchar](2048) NULL,
	[Public] [bit] NOT NULL,
	[Like] [int] NOT NULL,
	[DisLike] [int] NOT NULL,
	[Language] [nvarchar](8) NULL,
	[CreateUserId] [int] NULL,
	[ModifieUserId] [int] NULL,
	[ViewCount] [int] NOT NULL,
	[ViewRoleId] [int] NULL,
	[ModifyRoleId] [int] NULL,
	[AccessRoleId] [int] NULL,
	[CreateLocalDateTime] [nvarchar](19) NULL,
	[ModifieLocalDateTime] [nvarchar](19) NULL,
	[AccessLocalDateTime] [nvarchar](19) NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[ModifieDateTime] [datetime] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_ContentManagement.Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Index [IX_CreateUserId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreateUserId] ON [ContentManagement].[Comments]
(
	[CreateUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_ModifieUserId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_ModifieUserId] ON [ContentManagement].[Comments]
(
	[ModifieUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_ParentId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [ContentManagement].[Comments]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_WebPageId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_WebPageId] ON [ContentManagement].[Comments]
(
	[WebPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [ContentManagement].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.Comments_ParentId] FOREIGN KEY([ParentId])
REFERENCES [ContentManagement].[Comments] ([Id])

ALTER TABLE [ContentManagement].[Comments] CHECK CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.Comments_ParentId]

ALTER TABLE [ContentManagement].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.Users_CreateUserId] FOREIGN KEY([CreateUserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[Comments] CHECK CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.Users_CreateUserId]

ALTER TABLE [ContentManagement].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.Users_ModifieUserId] FOREIGN KEY([ModifieUserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[Comments] CHECK CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.Users_ModifieUserId]

ALTER TABLE [ContentManagement].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.WebPages_WebPageId] FOREIGN KEY([WebPageId])
REFERENCES [ContentManagement].[WebPages] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[Comments] CHECK CONSTRAINT [FK_ContentManagement.Comments_ContentManagement.WebPages_WebPageId]

