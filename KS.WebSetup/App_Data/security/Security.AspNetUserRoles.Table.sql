/****** Object:  Table [Security].[AspNetUserRoles]    Script Date: 2/21/2018 6:51:09 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [Security].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Security.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Index [IX_RoleId]    Script Date: 2/21/2018 6:51:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [Security].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_UserId]    Script Date: 2/21/2018 6:51:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [Security].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [Security].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_Security.AspNetUserRoles_Security.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Security].[AspNetRoles] ([Id])
ON DELETE CASCADE

ALTER TABLE [Security].[AspNetUserRoles] CHECK CONSTRAINT [FK_Security.AspNetUserRoles_Security.AspNetRoles_RoleId]

ALTER TABLE [Security].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_Security.AspNetUserRoles_Security.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Security].[AspNetUsers] ([Id])
ON DELETE CASCADE

ALTER TABLE [Security].[AspNetUserRoles] CHECK CONSTRAINT [FK_Security.AspNetUserRoles_Security.AspNetUsers_UserId]

