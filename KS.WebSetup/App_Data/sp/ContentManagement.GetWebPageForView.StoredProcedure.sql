
/****** Object:  StoredProcedure [ContentManagement].[GetWebPageForView]    Script Date: 2/19/2018 2:45:42 PM ******/


/****** Object:  StoredProcedure [Security].[GetAspectForUrl]    Script Date: 8/1/2017 10:03:05 PM ******/

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ContentManagement].[GetWebPageForView] 
(
@Url nvarchar(1024),
@Type nvarchar(10)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
        declare @TypeId INT
        declare @TemplateUrl nvarchar(1024)
		declare @FrameWorkUrl nvarchar(1024)
        
        SELECT @TypeId = id from contentmanagement.masterdatakeyvalues
        where typeid = 1003 and code = @Type
        
	  
	  select Title,DependentModules,Params,Html,[Guid] as 'PageId',HaveScript,HaveStyle,[Version] FROM CONTENTMANAGEMENT.WebPages
	  where (UPPER(url) = UPPER(@Url)) and typeid= @TypeId and [Status] = 1

END

