﻿$("#ib5fc8fca45e348858444e9a8a9eda23b").on($.asEvent.page.loaded,function(n,t,i){var f="#ib5fc8fca45e348858444e9a8a9eda23b",e=".ib5fc8fca45e348858444e9a8a9eda23b."+$.asPageClass,r=function(n){var t=new $.as({pageId:e});return t.as(n)},y=function(){},l,h;$(f).on($.asEvent.page.dispose,function(){y()});$.asUrls=$.extend({cms_masterDataLocalKeyValue_get:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValueId%20eq%20@idd)%20and%20(Language%20eq%20'@lang')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_masterDataLocalKeyValue_save:"/cms/masterdatalocalkeyvalue/save",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_localFilePath_save:"/cms/localfilepath/Save",cms_localFilePath_get:"/odata/cms/LocalFilePaths?$filter=(FilePathId%20eq%20@idd)%20and%20(Language%20eq%20'@lang')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_localFile_get:"/odata/cms/LocalFiles?$filter=(FileId%20eq%20@idd)%20and%20(Language%20eq%20'@lang')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_localFile_save:"/cms/localfile/Save",security_LocalRole_save:"/security/localrole/save",security_LocalRole_get:"/odata/security/LocalRoles?$filter=(RoleId%20eq%20@idd)%20and%20(Language%20eq%20'@lang')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",security_LocalGroup_get:"/odata/security/LocalGroups?$filter=(GroupId%20eq%20@idd)%20and%20(Language%20eq%20'@lang')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",security_LocalGroup_save:"/security/localgroup/save"},$.asUrls);var u=r("#drpLanguge"),o=r("#txtName"),s=r("#txtDescription"),p=r("#btnTranslate"),w=r("#btnCancel"),s=r("#txtDescription"),c=r("#txtLang"),b=r("#txtCulture");$frm=r("#frmTranslator");$win=$(e);$chkStatus=r("#chkStatusTrans");translateId=0;rowVersion="";l=function(){return $.asAjaxTask({url:$.asUrls.cms_languageAndCulture_public_getAll})};h=function(n,t){c.val(n);b.val(t)};u.asAfterTasks([l()],function(n){var i={source:{displayDataField:"country",valueDataField:"language",urlDataField:"flagUrl",idDataField:"culture",exteraDataField:"isRightToLeft",localData:n}},t=$.asGetDefaultsLnguageAndCulter();t&&(i.selectedValue=t.country,h(t.lang,t.country));u.asFlexSelect(i)},{overlayClass:"as-overlay-fixed"});var a=function(){$.asNotFound("ترجمه");translateId=0},k=function(n){o.val(n.Name);s.val(n.Description);$chkStatus.prop("checked",n.Status);translateId=n.Id;rowVersion=n.RowVersion},v=function(){o.val(i.name);s.val(i.description)},d=function(){$(f).on($.asEvent.modal.reopen,function(n,t){(t.type!==i.type||t.id!==i.id)&&(i=t,v())});$(f).on($.asEvent.page.ready,function(){i&&v()});p.click(function(){var n="";i?(i.type==="masterDataKeyValue"?n=$.asUrls.cms_masterDataLocalKeyValue_save:i.type==="filePath"?n=$.asUrls.cms_localFilePath_save:i.type==="file"?n=$.asUrls.cms_localFile_save:i.type==="role"?n=$.asUrls.security_LocalRole_save:i.type==="group"&&(n=$.asUrls.security_LocalGroup_save),$frm.asAjax({url:n,data:JSON.stringify({Id:translateId,Language:c.val(),ItemId:i.id,Name:o.val(),Description:s.val(),Status:$chkStatus.is(":checked"),RowVersion:rowVersion}),success:function(n){translateId=n.Id;rowVersion=n.RowVersion;$.asShowMessage({message:$.asRes[$.asLang].successOpration})}},{$form:$frm,overlayClass:"as-overlay-absolute"})):$.asShowMessage({template:"error",message:" لطفا مجددا وارد فرم شوید"})});u.on("selectedIndexChanged",function(n,t,r,f,e){e&&u.asFlexSelect("setItem",'<img src="'+e+'">&nbsp;<span class="caret"><\/span>');h(r,f);var o="";i?(i.type==="masterDataKeyValue"?o=$.asUrls.cms_masterDataLocalKeyValue_get:i.type==="filePath"?o=$.asUrls.cms_localFilePath_get:i.type==="file"?o=$.asUrls.cms_localFile_get:i.type==="role"?o=$.asUrls.security_LocalRole_get:i.type==="group"&&(o=$.asUrls.security_LocalGroup_get),$win.asAjax({url:$.asInitService(o,[{name:"@id",value:i.id},{name:"@lang",value:r}]),type:"get",success:function(n){$.isArray(n)?n.length>0?k(n[0]):a():a()}},{overlayClass:"as-overlay-absolute"})):$.asShowMessage({template:"error",message:" لطفا مجددا وارد فرم شوید"})});w.on("click",function(){$win.asModal("hide")})};d();$(e).append('<span id="asRegisterPage"><\/span>');r("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})