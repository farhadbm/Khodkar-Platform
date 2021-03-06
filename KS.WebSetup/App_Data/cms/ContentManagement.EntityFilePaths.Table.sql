/****** Object:  Table [ContentManagement].[EntityFilePaths]    Script Date: 2/21/2018 6:48:27 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [ContentManagement].[EntityFilePaths](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilePathId] [int] NOT NULL,
	[IsDefaults] [bit] NOT NULL,
	[DynamicEntityTypeId] [int] NULL,
	[LinkId] [int] NULL,
	[WebPageId] [int] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[EntityTypeId] [int] NULL,
 CONSTRAINT [PK_ContentManagement.EntityFilePaths] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Index [IX_DynamicEntityTypeId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_DynamicEntityTypeId] ON [ContentManagement].[EntityFilePaths]
(
	[DynamicEntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FilePathId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_FilePathId] ON [ContentManagement].[EntityFilePaths]
(
	[FilePathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_LinkId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_LinkId] ON [ContentManagement].[EntityFilePaths]
(
	[LinkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_WebPageId]    Script Date: 2/21/2018 6:48:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_WebPageId] ON [ContentManagement].[EntityFilePaths]
(
	[WebPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [ContentManagement].[EntityFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.FilePaths_FilePathId] FOREIGN KEY([FilePathId])
REFERENCES [ContentManagement].[FilePaths] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityFilePaths] CHECK CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.FilePaths_FilePathId]

ALTER TABLE [ContentManagement].[EntityFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.Links_LinkId] FOREIGN KEY([LinkId])
REFERENCES [ContentManagement].[Links] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityFilePaths] CHECK CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.Links_LinkId]

ALTER TABLE [ContentManagement].[EntityFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.MasterDataKeyValues_DynamicEntityTypeId] FOREIGN KEY([DynamicEntityTypeId])
REFERENCES [ContentManagement].[MasterDataKeyValues] ([Id])

ALTER TABLE [ContentManagement].[EntityFilePaths] CHECK CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.MasterDataKeyValues_DynamicEntityTypeId]

ALTER TABLE [ContentManagement].[EntityFilePaths]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.WebPages_WebPageId] FOREIGN KEY([WebPageId])
REFERENCES [ContentManagement].[WebPages] ([Id])
ON DELETE CASCADE

ALTER TABLE [ContentManagement].[EntityFilePaths] CHECK CONSTRAINT [FK_ContentManagement.EntityFilePaths_ContentManagement.WebPages_WebPageId]

