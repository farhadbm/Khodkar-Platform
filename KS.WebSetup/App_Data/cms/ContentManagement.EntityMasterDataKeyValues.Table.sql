/****** Object:  Table [ContentManagement].[EntityMasterDataKeyValues]    Script Date: 2/21/2018 6:48:27 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [ContentManagement].[EntityMasterDataKeyValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MasterDataKeyValueId] [int] NOT NULL,
	[LinkId] [int] NULL,
	[FileId] [int] NULL,
	[FilePathId] [int] NULL,
	[UserId] [int] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[EntityTypeId] [int] NULL,
 CONSTRAINT [PK_ContentManagement.EntityMasterDataKeyValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Index [IX_FileId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_FileId] ON [ContentManagement].[EntityMasterDataKeyValues]
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FilePathId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_FilePathId] ON [ContentManagement].[EntityMasterDataKeyValues]
(
	[FilePathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_LinkId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_LinkId] ON [ContentManagement].[EntityMasterDataKeyValues]
(
	[LinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_MasterDataKeyValueId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_MasterDataKeyValueId] ON [ContentManagement].[EntityMasterDataKeyValues]
(
	[MasterDataKeyValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_UserId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [ContentManagement].[EntityMasterDataKeyValues]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.FilePaths_FilePathId] FOREIGN KEY([FilePathId])
REFERENCES [ContentManagement].[FilePaths] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues] CHECK CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.FilePaths_FilePathId]

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.Files_FileId] FOREIGN KEY([FileId])
REFERENCES [ContentManagement].[Files] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues] CHECK CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.Files_FileId]

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.Links_LinkId] FOREIGN KEY([LinkId])
REFERENCES [ContentManagement].[Links] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues] CHECK CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.Links_LinkId]

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.MasterDataKeyValues_MasterDataKeyValueId] FOREIGN KEY([MasterDataKeyValueId])
REFERENCES [ContentManagement].[MasterDataKeyValues] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues] CHECK CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.MasterDataKeyValues_MasterDataKeyValueId]

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[EntityMasterDataKeyValues] CHECK CONSTRAINT [FK_ContentManagement.EntityMasterDataKeyValues_ContentManagement.Users_UserId]

