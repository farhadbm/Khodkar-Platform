﻿$("#i71fde09fd0a14bb1bb0780f677c22de6").on($.asEvent.page.loaded,function(n,t){var ci="#i71fde09fd0a14bb1bb0780f677c22de6",li=".i71fde09fd0a14bb1bb0780f677c22de6."+$.asPageClass,i=function(n){var t=new $.as({pageId:li});return t.as(n)},ai=function(){},pi,wi,bi;$(ci).on($.asEvent.page.dispose,function(){ai()});$.asUrls=$.extend({cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",cms_masterDataKeyValue_save:"/cms/masterdatakeyvalue/save",cms_masterDataKeyValue_getType:"/odata/cms/MasterDataKeyValues?$filter=IsType%20eq%20true&$select=Id%2CParentTypeId%2CTypeId%2CCode%2COrder%2CName%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_masterDataKeyValue_delete:"/cms/masterdatakeyvalue/delete"},$.asUrls);var e=i("#frmMasterData"),di=i("#divRoles"),h=i("#drpViewRole"),c=i("#drpModifyRole"),l=i("#drpAccessRole"),ni=i("#drpMasterDataType"),u=i("#drpMasterData"),a=i("#txtName"),gi=i("#btnSave"),lt=i("#chkEditeMode"),vi=$.asModalManager.get({url:$.asModalManager.urls.translator}),v=i("#txtDescription"),b=i("#txtData"),k=i("#txtOrder"),y=i("#txtId"),ti=i("#txtMasterDataId"),d=i("#txtUrl"),g=i("#txtValue"),nt=i("#txtKey"),tt=i("#txtSecondCode"),it=i("#txtSecondPathOrUrl"),rt=i("#txtForeignKey1"),ut=i("#txtForeignKey2"),ft=i("#txtForeignKey3"),o=i("#chkIsLeaf"),s=i("#chkNew"),et=i("#txtCode"),at=i("#txtTypeId"),ot=i("#chkCache"),vt=i("#chkStatus"),ii=i("#txtVersion"),nr=i("#txtSlidingExpirationTimeInMinutes"),st=i("#txtParentTypeId"),f=i("#chkType"),yt=i("#txtParentId"),ri=i("#btnTranslator"),tr=i("#btnDell"),p=i("#drpProtocolsPathOrUrl"),w=i("#drpProtocolsSecondPathOrUrl"),pt,ui,wt=0,fi=0,ei=0,ir="",ht=0,oi=!1,ct="",bt,kt,r={},dt={},yi,si={};vi.asModal({width:800});pi=function(){return $.asAjaxTask({url:$.asUrls.security_Role_getAllByDefaultsLanguage})};di.asAfterTasks([pi()],function(n){h.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});l.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});c.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}})},{overlayClass:"as-overlay-relative"});u.asDropdown("init","نوع اطلاع پایه را انتخاب نمایید",{source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!0});ni.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"TypeId"},parentDataField:{name:"ParentTypeId"},removeChildLessParent:!1},url:$.asUrls.cms_masterDataKeyValue_getType,displayDataField:"Name",valueDataField:"TypeId",orderby:"Order"},selectParents:!0,multiple:!0});p.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1046}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!1});w.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1046}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!1});e.asValidate("validator").addMethod("regex",function(n,t,i){var r=new RegExp(i);return this.optional(t)||r.test(n)},"شناسه می تواند شامل اعدا حروف و . و _ و - باشد و با . یا - یا _ شروع نمی شود");wi={txtCode:{required:!0},txtMasterDataId:{required:!0},txtTypeId:{required:!0},txtName:{required:!0,maxlength:128},txtDescription:{maxlength:256},txtData:{maxlength:512},txtId:{maxlength:32,regex:"^[A-Za-z0-9][A-Za-z0-9_\\-\\.]*$"},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0},drpProtocolsSecondPathOrUrl:{asType:"asDropdown",required:!0},drpProtocolsPathOrUrl:{asType:"asDropdown",required:!0}};yi=e.asValidate({rules:wi});bi=function(){$(ci).on($.asEvent.page.ready,function(){});ot.change(function(){i("#divSlidingExpirationTimeInMinutes").prop("disabled",!this.checked)});f.change(function(){this.checked===!0&&o.is(":checked")===!0&&($.asShowMessage({template:"error",message:"یک اطلاع پایه نمی تواند نوع اطلاع پایه هم باشد"}),f.prop("checked",!1))});s.change(function(){this.checked===!0?oi===!0?($.asShowMessage({template:"error",message:"امکان افزودن یک اطلاع پایه به یک اطلاع پایه دیگر وجود ندارد"}),s.prop("checked",!1)):(y.prop("disabled",!1),r.Id=ht,ht=0,r.Isleaf=oi,r.ParentId=yt.val(),yt.val(ti.val()),r.RowVersion=ct,ct="",r.Name=a.val(),a.val(""),r.Description=v.val(),v.val(""),r.Data=b.val(),b.val(""),r.Code=et.val(),et.val(""),r.PathOrUrl=d.val(),d.val(""),r.Guid=y.val(),r.NewGuid=bt,y.val(bt),r.NewId=kt,ti.val(kt),r.Version=ii.val(),ii.val("0"),r.Order=k.val(),k.val(""),r.Key=nt.val(),nt.val(""),r.Value=g.val(),g.val(""),r.SecondPathOrUrl=it.val(),it.val(""),r.SecondCode=tt.val(),tt.val(""),r.ForeignKey1=rt.val(),rt.val(""),r.ForeignKey2=ut.val(),ut.val(""),r.ForeignKey3=ft.val(),ft.val(""),r.ParentTypeId=st.val(),st.val(at.val()),r.TypeId=at.val(),r.EnableCache=ot.prop("checked"),ot.prop("checked",!1),r.EditMode=lt.prop("checked"),lt.prop("checked",!1),r.Status=vt.prop("checked"),vt.prop("checked",!1),r.IsType=f.prop("checked"),f.prop("checked",!1),w.asDropdown("selectValue",[],!0),p.asDropdown("selectValue",[],!0),r.ViewRoleId=wt,h.asDropdown("selectValue",[],!0),r.AccessRoleId=ei,l.asDropdown("selectValue",[],!0),r.ModifyRoleId=fi,c.asDropdown("selectValue",[],!0)):gt(r)});o.change(function(){if(this.checked===!0&&f.is(":checked")===!0){$.asShowMessage({template:"error",message:"یک نوع نمی تواند اطلاع پایه هم باشد"});o.prop("checked",!1);return}});tr.click(function(){u.asDropdown("selected")?e.asAjax({url:$.asUrls.cms_masterDataKeyValue_delete,data:JSON.stringify({Id:u.asDropdown("selected").value}),success:function(){u.asDropdown("removeItem");$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:e}):$.asShowMessage({template:"error",message:"برای حذف یک اطلاع پایه را انتخاب نمایید. "})});gi.click(function(){if(f.is(":checked")===!0&&o.is(":checked")===!0){$.asShowMessage({template:"error",message:"یک نوع نمی تواند اطلاع پایه هم باشد"});return}var n,t;u.asDropdown("selected")&&(s.is(":checked")?(t=bt,n=kt):(t=y.val(),n=u.asDropdown("selected").value));h.asDropdown("selected")&&(wt=h.asDropdown("selected").value);c.asDropdown("selected")&&(fi=c.asDropdown("selected").value);l.asDropdown("selected")&&(ei=l.asDropdown("selected").value);o.is(":checked")===!1&&s.is(":checked")&&(si[n]=!0);e.asAjax({url:$.asUrls.cms_masterDataKeyValue_save,data:JSON.stringify({Id:n,ParentId:yt.val(),TypeId:at.val(),ParentTypeId:st.val(),PathOrUrl:d.val(),ViewRoleId:wt,ModifyRoleId:fi,AccessRoleId:ei,Code:et.val(),Name:a.val(),Description:v.val(),Data:b.val(),Guid:t,Order:k.val(),Key:nt.val(),Value:g.val(),ForeignKey3:ft.val(),ForeignKey2:ut.val(),ForeignKey1:rt.val(),SecondPathOrUrl:it.val(),SecondCode:tt.val(),Status:vt.is(":checked"),EnableCache:ot.is(":checked"),EditMode:lt.is(":checked"),IsLeaf:o.is(":checked"),IsType:f.is(":checked"),IsNew:s.is(":checked"),PathOrUrlProtocolId:pt,SecondPathOrUrlProtocolId:ui,SlidingExpirationTimeInMinutes:nr.val(),RowVersion:ct}),success:function(t){if(s.is(":checked")){var i=!1;si[dt.value]&&(i=!0,delete si[dt.value]);u.asDropdown("addItem",{text:a.val(),value:n},dt,i)}gt(t);$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:e})});u.on("change",function(n,t){dt=t;ri.removeClass("disabled");ri.prop("disabled",!1);typeof t.value!="undefined"&&rr(t.value)});ni.on("change",function(){var t=$.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,i="(TypeId%20eq%20@typeIdd)",r="(ParentTypeId%20eq%20@typeIdd)",n=[];$.each(ni.asDropdown("selected"),function(t,u){u.selected&&(n.push(i.replace("@typeId",u.value)),n.push(r.replace("@typeId",u.value)))});u.asDropdown("reload",{url:t.replace("TypeId%20eq%20@typeIdd","("+n.join("%20or%20")+")")});u.css({"margin-top":"0"})});p.on("change",function(n,t){pt=t.value;console.log(pt)});w.on("change",function(n,t){ui=t.value});ri.click(function(){vi.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.translator)},{name:"@isModal",value:!0}]),{type:"masterDataKeyValue",id:ht,name:a.val(),description:v.val()})});ai=function(){yi.destroy()}};bi();var hi=function(){$.asNotFound("اطلاع پایه")},rr=function(n){u.asDropdown("selectValue",[],!0);u.asDropdown("selectValue",n);wt=0;ir="";ser=0;ct="";e.asAjax({url:$.asInitService($.asUrls.cms_masterDataKeyValue_get,[{name:"@id",value:n}]),type:"get",success:function(n){$.isArray(n)?n.length>0?gt(n):hi():n!=null?typeof n!="undefined"?gt(n):hi():hi()}})},ki=function(n){return n[0]==="~"?1004:n[0]==="/"&&n[1]==="/"?1005:n[0]==="/"?1e3:n.toLowerCase().indexOf("ftp://")===0?1003:n.toLowerCase().indexOf("http://")===0?1001:n.toLowerCase().indexOf("https://")===0?1002:null},gt=function(n){var t;y.prop("disabled",!0);s.prop("checked",!1);ht=n.Id;ti.val(ht);yt.val(n.ParentId);ct=n.RowVersion;o.prop("checked",n.IsLeaf);f.prop("checked",n.IsType);oi=n.IsLeaf;a.val(n.Name);n.Description!=null?v.val(n.Description):v.val("");n.Data!=null?b.val(n.Data):b.val("");n.Code!==null?et.val(n.Code):et.val("");n.PathOrUrl!==null?(d.val(n.PathOrUrl),t=ki(n.PathOrUrl),t!==null?(p.asDropdown("selectValue",t),pt=t):p.asDropdown("selectValue",[],!0)):(d.val(""),p.asDropdown("selectValue",[],!0));y.val(n.Guid);bt=n.NewGuid;kt=n.NewId;ii.val(n.Version);n.Order!==null?k.val(n.Order):k.val("");n.Key!==null?nt.val(n.Key):nt.val("");n.Value!==null?g.val(n.Value):g.val("");n.SecondCode!==null?tt.val(n.SecondCode):tt.val("");n.SecondPathOrUrl!==null?(it.val(n.SecondPathOrUrl),t=ki(n.SecondPathOrUrl),t!==null?(w.asDropdown("selectValue",t),ui=t):w.asDropdown("selectValue",[],!0)):(it.val(""),w.asDropdown("selectValue",[],!0));n.ForeignKey1!==null?rt.val(n.ForeignKey1):rt.val("");n.ForeignKey2!==null?ut.val(n.ForeignKey2):ut.val("");n.ForeignKey3!==null?ft.val(n.ForeignKey3):ft.val("");at.val(n.TypeId);n.ParentTypeId!==null?st.val(n.ParentTypeId):st.val("");ot.prop("checked",n.EnableCache);lt.prop("checked",n.EditMode);vt.prop("checked",n.Status);n.ViewRoleId!==null?h.asDropdown("selectValue",n.ViewRoleId):h.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?l.asDropdown("selectValue",n.AccessRoleId):l.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?c.asDropdown("selectValue",n.ModifyRoleId):c.asDropdown("selectValue",[],!0)};$(li).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})