﻿$("#if8732d663c3d4cdf863af491153d6813").on($.asEvent.page.loaded,function(n,t){function l(){return $.asAjaxTask({url:$.asInitService("/odata/cms/EntityGroups?$filter=((EntityTypeId%20eq%20101d)%20and%20(GroupId%20eq%2071d))%20and%20(Link%2FLanguage%20eq%20'@lang')&$expand=Link&$select=Link%2FId%2CLink%2FParentId%2CLink%2FText%2CLink%2FHtml%2CLink%2FUrl%2CLink%2FOrder",[{name:"@lang",value:"fa"}])})}var u=".if8732d663c3d4cdf863af491153d6813."+$.asPageClass,i=function(n){var t=new $.as({pageId:u});return t.as(n)},c=function(){};$("#if8732d663c3d4cdf863af491153d6813").on($.asEvent.page.dispose,function(){c()});$.asUrls=$.extend({},$.asUrls);var f=function(n){i("#drp_service").asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"[MasterDataKeyValue][Id]"},parentDataField:{name:"[MasterDataKeyValue][ParentId]"}},localData:n.results,displayDataField:"MasterDataKeyValue.Name",valueDataField:"MasterDataKeyValue.Code",orderby:"MasterDataKeyValue.Order"},multiple:!0,parentMode:"uniq"})},e=function(n){i("#drp_service").asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"}},localData:n.results,displayDataField:"Name",valueDataField:"Code",orderby:"Order"},multiple:!0,parentMode:"uniq"})},a=function(){var n=$.asOdataQueryBuilder({url:"/odata/cms/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),r=t.create("MasterDataKeyValue.TypeId","==",1001).and("Language","==","en");i.from("MasterDataLocalKeyValues").where(r).expand("MasterDataKeyValue").select("MasterDataKeyValue.Id,MasterDataKeyValue.ParentId,MasterDataKeyValue.Code,MasterDataKeyValue.Order,MasterDataKeyValue.Name,Name").using(n).execute().then(f)["catch"](f)},v=function(){$("#cmsWebForm_drp_service2").asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"[MasterDataKeyValue][Id]"},parentDataField:{name:"[MasterDataKeyValue][ParentId]"}},url:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%201001d)%20and%20(Language%20eq%20'en')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CName",displayDataField:"MasterDataKeyValue.Name",valueDataField:"MasterDataKeyValue.Code",orderby:"MasterDataKeyValue.Order"},multiple:!0,parentMode:"uniq"})},y=function(){var n=$.asOdataQueryBuilder({url:"/odata/cms/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),r=t.create("TypeId","==",1001);i.from("MasterDataKeyValues").where(r).select("Id,ParentId,Code,Order,Name").using(n).execute().then(e)["catch"](e)},p=function(){var n=$.asOdataQueryBuilder({url:"/odata/cms/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),r=t.create("EntityTypeId","==",101).and("GroupId","==",71).and("Link.Language","==","en");i.from("EntityGroups").where(r).expand("Link").select("Link.Id,Link.ParentId,Link.Text,Link.Html,Link.Url").using(n).execute().then(o)["catch"](o)},o=function(){i("#cmsWebForm_menu").asAfterTasks([l()],function(n){$.asEach(n,function(n){n.Link.Url==="#Admin"&&(n.Link.Text=$.asStorage.getItem($.asUserName))});i("#testService").asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"[Link][Id]"},parentDataField:{name:"[Link][ParentId]"},childrenDataField:"children"},valueDataField:"Link.Url",orderby:"Link.Order",displayDataField:"Link.Text",localData:n},link:!0,parentMode:"uniq",selectParents:!1,moveByFixedNav:{initialTop:86}})})};var w=function(){var n=$.asOdataQueryBuilder({url:"/odata/public/cms/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),u=t.create("TypeId","==",1).or("TypeId","==",2).and("Language","==","fa");i.from("LinksPublic").where(u).select("Id,ParentId,Text,Html,Url,Order,IsLeaf").using(n).execute().then(r)["catch"](r)},b=function(){var n=$.asOdataQueryBuilder({url:"/odata/cms/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),u=t.create("Language","==","fa");i.from("Links").where(u).select("Id,ParentId,Text,Html,Url,Order,IsLeaf").using(n).execute().then(r)["catch"](r)},r=function(n){console.dir($.asTreeify({list:n.results,keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!0}))},k=function(){var n=$.asOdataQueryBuilder({url:"/odata/security/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),r=t.create("IsGroup","==",!1);i.from("RoleGroups").where(r).select("Id,ParentId,Name,Order,IsLeaf").using(n).execute().then(s)["catch"](s)},s=function(n){console.dir($.asTreeify({list:n.results,keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!0}))},d=function(){var n=$.asOdataQueryBuilder({url:"/odata/security/"}),t=$.asOdataQueryBuilder("Predicate"),i=$.asOdataQueryBuilder("EntityQuery"),r=t.create("Role.IsGroup","==",!1).and("Language","==","en");i.from("LocalRoleGroups").where(r).expand("Role").select("Role.Id,Role.ParentId,Role.Name,Role.Order,Role.IsLeaf,Name").using(n).execute().then(h)["catch"](h)},h=function(n){console.dir($.asTreeify({list:n.results,keyDataField:{name:"[Role][Id]"},parentDataField:{name:"[Role][ParentId]"},isLeafDataField:"[Role][IsLeaf]",removeChildLessParent:!0}))};$(u).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})