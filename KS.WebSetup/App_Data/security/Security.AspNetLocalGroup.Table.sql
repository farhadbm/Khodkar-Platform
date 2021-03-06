/****** Object:  Table [Security].[AspNetLocalGroup]    Script Date: 2/21/2018 6:51:09 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [Security].[AspNetLocalGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[Name] [nvarchar](256) NULL,
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
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK_Security.AspNetLocalGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET IDENTITY_INSERT [Security].[AspNetLocalGroup] ON 

INSERT [Security].[AspNetLocalGroup] ([Id], [GroupId], [Name], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [Description]) VALUES (1, 1, N'Administrator', N'en', 1, 1, N'1396/06/22 11:08:28', N'1396/06/22 11:08:28', N'1396/06/22 11:08:28', CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2016-08-28T09:13:44.700' AS DateTime), 1, N'Administrator Accesses')
INSERT [Security].[AspNetLocalGroup] ([Id], [GroupId], [Name], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [Description]) VALUES (2, 2, N'Users', N'en', 1, 1, N'1396/06/22 11:08:28', N'1396/06/22 11:08:28', N'1396/06/22 11:08:28', CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2016-08-28T09:13:44.700' AS DateTime), 1, N'Users Accesses')
INSERT [Security].[AspNetLocalGroup] ([Id], [GroupId], [Name], [Language], [CreateUserId], [ModifieUserId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [Description]) VALUES (3, 3, N'Developers', N'en', 1, 1, N'1396/06/22 11:08:28', N'1396/06/22 11:08:28', N'1396/06/22 11:08:28', CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2016-08-28T09:13:44.700' AS DateTime), 1, N'Developers Access')
SET IDENTITY_INSERT [Security].[AspNetLocalGroup] OFF
/****** Object:  Index [IX_GroupId]    Script Date: 2/21/2018 6:51:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_GroupId] ON [Security].[AspNetLocalGroup]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [Security].[AspNetLocalGroup]  WITH CHECK ADD  CONSTRAINT [FK_Security.AspNetLocalGroup_Security.AspNetGroups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [Security].[AspNetGroups] ([Id])
ON DELETE CASCADE

ALTER TABLE [Security].[AspNetLocalGroup] CHECK CONSTRAINT [FK_Security.AspNetLocalGroup_Security.AspNetGroups_GroupId]

