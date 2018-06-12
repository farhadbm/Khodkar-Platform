﻿$("#i3743c7f8b08542c8bfad5f361c87e8cd").on($.asEvent.page.loaded,function(n,t){var st="#i3743c7f8b08542c8bfad5f361c87e8cd",ht=".i3743c7f8b08542c8bfad5f361c87e8cd."+$.asPageClass,i=function(n){var t=new $.as({pageId:ht});return t.as(n)},ct=function(){},yt,pt,wt,bt;$(st).on($.asEvent.page.dispose,function(){ct()});$.asUrls=$.extend({security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20'@lang')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",security_Group_getAllByOtherLanguage:"/odata/security/LocalGroups?$filter=Language%20eq%20'@lang'&$expand=Group&$select=Group%2FId%2CGroup%2FParentId%2CGroup%2FName%2CGroup%2FOrder%2CGroup%2FIsLeaf%2CName",security_Group_save:"/security/group/save",security_Group_delete:"/security/group/delete",security_GroupRoles_getByGroupId:"/odata/security/GroupRoles?$filter=GroupId%20eq%20@groupIdd&$select=RoleId",security_Group_get:"/odata/security/Groups?$filter=Id%20eq%20@idd&$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription%2CStatus%2CViewRoleId%2CModifyRoleId%2CAccessRoleId"},$.asUrls);var e=i("#frmRoles"),lt=i("#txtGroupId"),kt=i("#divRoles"),y=i("#drpRoles"),o=i("#drpViewRole"),s=i("#drpModifyRole"),h=i("#drpAccessRole"),u=i("#drpGroups"),p=i("#txtName"),dt=i("#btnSave"),at=$.asModalManager.get({url:$.asModalManager.urls.translator}),c=i("#txtDescription"),w=i("#txtOrder"),l=i("#chkIsLeaf"),f=i("#chkNew"),d=i("#chkStatus"),g=i("#txtParentId"),tt=i("#btnTranslator"),it=i("#divGroupRoles"),gt=i("#btnDell"),b=[],a=[],v=[],rt=0,ut=0,ft=0,k=0,et=!1,r={},ni={},vt,ti={};it.hide();at.asModal({width:800});u.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Group.Id"},parentDataField:{name:"Group.ParentId"},childrenDataField:"Children"},valueDataField:"Group.Id",displayDataField:"Name",orderby:"Group.Order",url:$.asInitService($.asUrls.security_Group_getAllByOtherLanguage,[{name:"@lang",value:$.asLang}])},selectParents:!0});yt=function(n){y.asDropdown("selectValue",[],!0);b=[];v=[];a=[];y.asAjax({url:$.asInitService($.asUrls.security_GroupRoles_getByGroupId,[{name:"@groupId",value:n}]),type:"get",success:function(n){console.dir(n);$.isArray(n)&&n.length>0&&$.each(n,function(n,t){b.push(t.RoleId)});b.length!=0&&y.asDropdown("selectValue",b)}})};pt=function(){return $.asAjaxTask({url:$.asInitService($.asUrls.security_Role_getAllByOtherLanguage,[{name:"@lang",value:$.asLang}])})};kt.asAfterTasks([pt()],function(n){y.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children"},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n},multiple:!0});o.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}});h.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}});s.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}})},{overlayClass:"as-overlay-relative"});wt={txtName:{required:!0,maxlength:128},txtDescription:{required:!0,maxlength:256},txtOrder:{required:!0},drpRoles:{asType:"asDropdown",required:{depends:function(){return l.is(":checked")===!0}}},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0}};vt=e.asValidate({rules:wt});bt=function(){$(st).on($.asEvent.page.ready,function(){});f.change(function(){this.checked===!0?et===!0?($.asShowMessage({template:"error",message:"There is no way to add a group to another one"}),f.prop("checked",!1)):(r.Id=k,k=0,r.Isleaf=et,r.ParentId=g.val(),g.val(lt.val()),r.Name=p.val(),p.val(""),r.Description=c.val(),c.val(""),r.Order=w.val(),w.val(""),r.Status=d.prop("checked"),d.prop("checked",!1),r.ViewRoleId=rt,o.asDropdown("selectValue",[],!0),r.AccessRoleId=ft,h.asDropdown("selectValue",[],!0),r.ModifyRoleId=ut,s.asDropdown("selectValue",[],!0)):nt(r)});l.change(function(){this.checked===!0?it.show():it.hide()});gt.click(function(){u.asDropdown("selected")?e.asAjax({url:$.asUrls.security_Group_delete,data:JSON.stringify({Id:u.asDropdown("selected").value}),success:function(){u.asDropdown("reload",{url:$.asInitService($.asUrls.security_Group_getAllByOtherLanguage,[{name:"@lang",value:$.asLang}])});$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:e}):$.asShowMessage({template:"error",message:"To remove , select a group"})});dt.click(function(){var n;u.asDropdown("selected")&&(n=f.is(":checked")?0:u.asDropdown("selected").value);o.asDropdown("selected")&&(rt=o.asDropdown("selected").value);s.asDropdown("selected")&&(ut=s.asDropdown("selected").value);h.asDropdown("selected")&&(ft=h.asDropdown("selected").value);l.is(":checked")===!1&&f.is(":checked")&&(ti[n]=!0);e.asAjax({url:$.asUrls.security_Group_save,data:JSON.stringify({Id:n,ParentId:g.val(),ViewRoleId:rt,ModifyRoleId:ut,AccessRoleId:ft,Name:p.val(),RemovedList:v,AddedList:a,Description:c.val(),Order:w.val(),Status:d.is(":checked"),IsLeaf:l.is(":checked"),IsNew:f.is(":checked")}),success:function(n){f.is(":checked")&&u.asDropdown("reload",{url:$.asInitService($.asUrls.security_Group_getAllByOtherLanguage,[{name:"@lang",value:$.asLang}])});nt(n);$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:e})});y.on("change",function(n,t){typeof t.value!="undefined"&&(b.indexOf(t.value)>-1?t.selected===!1?v.push(t.value):v.indexOf(t.value)>-1&&v.splice(index,1):t.selected===!0?a.push(t.value):a.indexOf(t.value)>-1&&a.splice(index,1))});u.on("change",function(n,t){a=v=[];ni=t;tt.removeClass("disabled");tt.prop("disabled",!1);typeof t.value!="undefined"&&ii(t.value)});tt.click(function(){at.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.translator)},{name:"@isModal",value:!0}]),{type:"group",id:k,name:p.val(),description:c.val()})});ct=function(){vt.destroy()}};bt();var ot=function(){$.asNotFound("گروه")},ii=function(n){yt(n);u.asDropdown("selectValue",[],!0);u.asDropdown("selectValue",n);e.asAjax({url:$.asInitService($.asUrls.security_Group_get,[{name:"@id",value:n}]),type:"get",success:function(n){$.isArray(n)?n.length>0?nt(n[0]):ot():n!=null?typeof n!="undefined"?nt(n):ot():ot()}})},nt=function(n){f.prop("checked",!1);k=n.Id;lt.val(k);g.val(n.ParentId);l.prop("checked",n.IsLeaf);l.trigger("change");et=n.IsLeaf;p.val(n.Name);n.Description!=null?c.val(n.Description):c.val("");n.Order!==null?w.val(n.Order):w.val("");d.prop("checked",n.Status);n.ViewRoleId!==null?o.asDropdown("selectValue",n.ViewRoleId):o.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?h.asDropdown("selectValue",n.AccessRoleId):h.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?s.asDropdown("selectValue",n.ModifyRoleId):s.asDropdown("selectValue",[],!0)};$(ht).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})