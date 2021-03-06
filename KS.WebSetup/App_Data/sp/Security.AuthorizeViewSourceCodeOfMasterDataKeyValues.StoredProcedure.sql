
/****** Object:  StoredProcedure [Security].[AuthorizeViewSourceCodeOfMasterDataKeyValues]    Script Date: 2/19/2018 2:45:42 PM ******/


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Security].[AuthorizeViewSourceCodeOfMasterDataKeyValues] 
(
@permissionTypeId int,
@TypeId int,
@ActionKey int,
@UserId int,
@codeId int
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	 

           
IF EXISTS (select code.Id  from ContentManagement.MasterDataKeyValues as code
		inner join
		 [Security].AspNetUserGroups as ug
		 on ug.UserId = @UserId  and code.Id=@codeId
		   inner join
		    [Security].AspNetGroupRoles as gr
			on ug.GroupId = gr.GroupId
             and (code.ModifyRoleId  =gr.roleId)) 
BEGIN
   SELECT 1 
END
ELSE
BEGIN
  IF EXISTS (select count(pr.ForeignKey3)  from ContentManagement.MasterDataKeyValues as code
	   LEFT join ContentManagement.MasterDataKeyValues as pr	
	   on pr.ForeignKey3 = code.Id and pr.TypeId = @permissionTypeId and pr.[Key] = @TypeId and pr.ForeignKey1=@ActionKey and code.Id=@codeId
		inner join
		 [Security].AspNetUserGroups as ug
		 on ug.UserId = @UserId
		   inner join
		    [Security].AspNetGroupRoles as gr
			on ug.GroupId = gr.GroupId
             and (code.ModifyRoleId  =gr.roleId or  pr.ForeignKey2  =gr.roleId ))
             BEGIN
                SELECT 1
             END
             ELSE
                BEGIN
                SELECT 0
                END
END		
		-- [Security].AspNetUserRoles as rl
		--on (code.ModifyRoleId =rl.roleId or pr.ForeignKey2 = rl.roleId) and rl.UserId = @userId 
    
END  


--  select count(code.Id)  from ContentManagement.MasterDataKeyValues as code
-- 	   LEFT join ContentManagement.MasterDataKeyValues as pr	
-- 	   on pr.ForeignKey3 = code.Id and pr.TypeId = 1032 and pr.[Key] = 1041 and pr.ForeignKey1=687 and code.Id=897
-- 		inner join
-- 		 [Security].AspNetUserGroups as ug
-- 		 on ug.UserId = 1
-- 		   inner join
-- 		    [Security].AspNetGroupRoles as gr
-- 			on ug.GroupId = gr.GroupId
--              and (code.ModifyRoleId  =gr.roleId or  pr.ForeignKey2  =gr.roleId )
             

           
		

--  select count(pr.ForeignKey3)  from ContentManagement.MasterDataKeyValues as code
-- 	   LEFT join ContentManagement.MasterDataKeyValues as pr	
-- 	   on pr.ForeignKey3 = code.Id and pr.TypeId = 1032 and pr.[Key] = 1001 and pr.ForeignKey1=687 and code.Id=97
-- 		inner join [Security].AspNetUserRoles as rl
-- 		on (code.ModifyRoleId =rl.roleId or pr.ForeignKey2 = rl.roleId) and rl.UserId = 1 
		




