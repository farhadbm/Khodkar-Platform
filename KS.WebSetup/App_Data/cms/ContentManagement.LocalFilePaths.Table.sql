/****** Object:  Table [ContentManagement].[LocalFilePaths]    Script Date: 2/21/2018 6:48:27 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [ContentManagement].[LocalFilePaths](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilePathId] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](128) NULL,
	[Language] [nvarchar](8) NULL,
	[CreateUserId] [int] NULL,
	[ModifieUserId] [int] NULL,
	[CreateLocalDateTime] [nvarchar](19) NULL,
	[ModifieLocalDateTime] [nvarchar](19) NULL,
	[AccessLocalDateTime] [nvarchar](19) NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[ModifieDateTime] [datetime] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
 CONSTRAINT [PK_ContentManagement.LocalFilePaths] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET IDENTITY_INSERT [ContentManagement].[LocalFilePaths] ON 

INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (1, 3, N'Canada Flag', N'                ', N'en', 1, 1, N'1396/02/31 07:35:48', N'1396/02/31 07:35:48', N'1396/02/31 07:35:48', CAST(N'2017-05-21T15:05:48.460' AS DateTime), CAST(N'2017-05-21T15:05:48.460' AS DateTime), CAST(N'2017-05-21T15:05:48.460' AS DateTime), 1)
INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (2, 1, N'Iran Flag', N'                ', N'en', 1, 1, N'1396/02/31 07:36:24', N'1396/02/31 07:36:24', N'1396/02/31 07:36:24', CAST(N'2017-05-21T15:06:24.780' AS DateTime), CAST(N'2017-05-21T15:06:24.780' AS DateTime), CAST(N'2017-05-21T15:06:24.780' AS DateTime), 1)
INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (3, 4, N'New Zealand', N'                ', N'en', 1, 1, N'1396/02/31 07:42:08', N'1396/02/31 07:42:08', N'1396/02/31 07:42:08', CAST(N'2017-05-21T15:12:08.800' AS DateTime), CAST(N'2017-05-21T15:12:08.800' AS DateTime), CAST(N'2017-05-21T15:12:08.800' AS DateTime), 1)
INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (4, 6, N'Great Britain Flag', N'                ', N'en', 1, 1, N'1396/02/31 07:43:16', N'1396/02/31 07:45:31', N'1396/02/31 07:45:31', CAST(N'2017-05-21T15:13:16.840' AS DateTime), CAST(N'2017-05-21T15:15:31.607' AS DateTime), CAST(N'2017-05-21T15:15:31.607' AS DateTime), 1)
INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (5, 7, N'USA Flag', N'                ', N'en', 1, 1, N'1396/02/31 07:43:56', N'1396/02/31 07:43:56', N'1396/02/31 07:43:56', CAST(N'2017-05-21T15:13:56.340' AS DateTime), CAST(N'2017-05-21T15:13:56.340' AS DateTime), CAST(N'2017-05-21T15:13:56.340' AS DateTime), 1)
INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (6, 2, N'Australia Flag', N'                ', N'en', 1, 1, N'1396/02/31 07:46:09', N'1396/02/31 07:46:09', N'1396/02/31 07:46:09', CAST(N'2017-05-21T15:16:09.730' AS DateTime), CAST(N'2017-05-21T15:16:09.730' AS DateTime), CAST(N'2017-05-21T15:16:09.730' AS DateTime), 1)
INSERT [ContentManagement].[LocalFilePaths] ([Id], [FilePathId], [Name], [Description], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status]) VALUES (7, 5, N'South Africa', N'                ', N'en', 1, 1, N'1396/02/31 07:47:05', N'1396/02/31 07:47:05', N'1396/02/31 07:47:05', CAST(N'2017-05-21T15:17:05.597' AS DateTime), CAST(N'2017-05-21T15:17:05.597' AS DateTime), CAST(N'2017-05-21T15:17:05.597' AS DateTime), 1)
SET IDENTITY_INSERT [ContentManagement].[LocalFilePaths] OFF
/****** Object:  Index [IX_CreateUserId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreateUserId] ON [ContentManagement].[LocalFilePaths]
(
	[CreateUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FilePathId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_FilePathId] ON [ContentManagement].[LocalFilePaths]
(
	[FilePathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_ModifieUserId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_ModifieUserId] ON [ContentManagement].[LocalFilePaths]
(
	[ModifieUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [ContentManagement].[LocalFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.LocalFilePaths_ContentManagement.FilePaths_FilePathId] FOREIGN KEY([FilePathId])
REFERENCES [ContentManagement].[FilePaths] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[LocalFilePaths] CHECK CONSTRAINT [FK_ContentManagement.LocalFilePaths_ContentManagement.FilePaths_FilePathId]

ALTER TABLE [ContentManagement].[LocalFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.LocalFilePaths_ContentManagement.Users_CreateUserId] FOREIGN KEY([CreateUserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[LocalFilePaths] CHECK CONSTRAINT [FK_ContentManagement.LocalFilePaths_ContentManagement.Users_CreateUserId]

ALTER TABLE [ContentManagement].[LocalFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.LocalFilePaths_ContentManagement.Users_ModifieUserId] FOREIGN KEY([ModifieUserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[LocalFilePaths] CHECK CONSTRAINT [FK_ContentManagement.LocalFilePaths_ContentManagement.Users_ModifieUserId]

