﻿$("#ia8644a03d35946fda163156c5516fdc2").on($.asEvent.page.loaded,function(n,t){var et=".ia8644a03d35946fda163156c5516fdc2."+$.asPageClass,i=function(n){var t=new $.as({pageId:et});return t.as(n)},ot=function(){},pt,wt,bt;$("#ia8644a03d35946fda163156c5516fdc2").on($.asEvent.page.dispose,function(){ot()});$.asUrls=$.extend({cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20'@lang'&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_save:"/cms/link/save",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_link_get:"/odata/cms/Links?$filter=Id%20eq%20@idd&$select=Id%2CText%2CHtml%2CTypeId%2CIconPath%2CIsLeaf%2CUrl%2COrder%2CParentId%2CShowToSearchEngine%2CViewRoleId%2CModifyRoleId%2CAccessRoleId%2CAction%2CTransactionCode%2CIsMobile%2CRowVersion%2CStatus",cms_link_delete:"/cms/link/delete"},$.asUrls);var e=i("#frmLink"),f=i("#drpLink"),l=i("#drpLinkType"),nt=i("#chkIsLeaf"),y=i("#drpLanguge"),p=i("#chkMobile"),a=i("#txtName"),st=i("#txtIconPath"),w=i("#txtHtml"),tt=i("#txtCode"),b=i("#txtAction"),it=i("#txtUrl"),k=i("#txtOrder"),o=i("#drpViewRole"),s=i("#drpAccessRole"),h=i("#drpModifyRole"),rt=i("#chkStatus"),kt=i("#chkShowToSerachEngin"),dt=i("#btnSave"),gt=i("#btnDell"),c=i("#chkNew"),ht,ut,ct=!1,lt=0,at=0,vt=0,r,v,yt,d={},u;f.asDropdown("init","کشور را انتخاب نمایید",{source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!1},valueDataField:"Id",displayDataField:"Text",orderby:"Order"},selectParents:!0,removeChildLessParent:!1});l.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!0},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1024}]),displayDataField:"Name",valueDataField:"Code",orderby:"Order"},parentMode:"uniq"});pt=function(){return $.asAjaxTask({url:$.asUrls.cms_languageAndCulture_public_getAll})};y.asAfterTasks([pt()],function(n){var i={source:{displayDataField:"country",valueDataField:"language",urlDataField:"flagUrl",idDataField:"culture",exteraDataField:"isRightToLeft",localData:n}},t=$.asGetDefaultsLnguageAndCulter();t&&(f.asDropdown("reload",{url:$.asInitService($.asUrls.cms_link_getByLanguage,[{name:"@lang",value:t.lang}])}),u=t.lang,i.selectedValue=t.country);y.asFlexSelect(i)},{overlayClass:"as-overlay-fixed"});wt=function(){return $.asAjaxTask({url:$.asUrls.security_Role_getAllByDefaultsLanguage})};i("#divRoles").asAfterTasks([wt()],function(n){o.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});s.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});h.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}})},{overlayClass:"as-overlay-relative"});var ft=function(){$.asNotFound("لینک")},g=function(n){c.prop("checked",!1);ht=n.Id;ut=n.RowVersion;nt.prop("checked",n.IsLeaf);p.prop("checked",n.IsMobile);ct=n.IsLeaf;a.val(n.Text);n.TransactionCode!==null?tt.val(n.TransactionCode):tt.val("");n.Html!==null?w.val(n.Html):w.val("");var t=n.Url.toLowerCase();t[t.length-1]!="/"&&(t+="/");t[0]!="/"&&(t="/"+t);t.indexOf($.asMobileSign)>-1&&(t=t.replace($.asMobileSign,"/"));t.indexOf(u)>-1&&(t=t.replace("/"+u+"/","/"));it.val(t);n.Action!==null?b.val(n.Action):b.val("");n.IconPath!==null?st.val(n.IconPath):st.val("");n.Order!==null?k.val(n.Order):k.val("");kt.prop("checked",n.ShowToSearchEngine);rt.prop("checked",n.Status);n.TypeId!==null?l.asDropdown("selectValue",n.TypeId):l.asDropdown("selectValue",[],!0);n.ViewRoleId!==null?o.asDropdown("selectValue",n.ViewRoleId):o.asDropdown("selectValue",[],!0);n.AccessRoleId!==null?s.asDropdown("selectValue",n.AccessRoleId):s.asDropdown("selectValue",[],!0);n.ModifyRoleId!==null?h.asDropdown("selectValue",n.ModifyRoleId):h.asDropdown("selectValue",[],!0)};yt=e.asValidate({rules:{txtUrl:{required:!0},txtName:{required:!0,maxlength:128},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0},drpLinkType:{asType:"asDropdown",required:!0}}});bt=function(){y.on("selectedIndexChanged",function(n,t,i,r,e){e&&y.asFlexSelect("setItem",'<img src="'+e+'">&nbsp;<span class="caret"><\/span>');f.asDropdown("reload",{url:$.asInitService($.asUrls.cms_link_getByLanguage,[{name:"@lang",value:i}])});u=i});f.on("change",function(n,t){typeof t.value!="undefined"&&(v=t,e.asAjax({url:$.asInitService($.asUrls.cms_link_get,[{name:"@id",value:t.value}]),type:"get",success:function(n){$.isArray(n)?n.length>0?(r=n[0],g(n[0])):ft():n!=null?typeof n!="undefined"?(r=n,g(n)):ft():ft()}}))});c.change(function(){this.checked===!0?ct===!0?($.asShowMessage({template:"error",message:"امکان افزودن برگ به برگ دیگر وجود ندارد"}),c.prop("checked",!1)):(ht=null,ut="",a.val(""),w.val(""),b.val(""),tt.val(""),it.val(""),k.val(""),p.prop("checked",!1),rt.prop("checked",!1),l.asDropdown("selectValue",[],!0),o.asDropdown("selectValue",[],!0),s.asDropdown("selectValue",[],!0),h.asDropdown("selectValue",[],!0)):g(r)});gt.click(function(){r?e.asAjax({url:$.asUrls.cms_link_delete,data:JSON.stringify({Id:r.Id}),success:function(){f.asDropdown("removeItem");$.asShowMessage({message:$.asRes[$.asLang].successOpration})}},{$form:e}):$.asShowMessage({template:"error",message:"برای حذف یک لینک را انتخاب نمایید."})});dt.click(function(){var t,i,n;c.is(":checked")?(i=r?r.Id:null,t=null):r&&(t=r.Id,i=r.ParentId);nt.is(":checked")===!1&&c.is(":checked")&&(d[t]=!0);o.asDropdown("selected")&&(lt=o.asDropdown("selected").value);h.asDropdown("selected")&&(at=h.asDropdown("selected").value);s.asDropdown("selected")&&(vt=s.asDropdown("selected").value);n=it.val().toLowerCase();n[n.length-1]!="/"&&(n+="/");n[0]!="/"&&(n="/"+n);n.indexOf($.asMobileSign)>-1&&(n=n.replace($.asMobileSign,"/"));n.indexOf(u)>-1&&(n=n.replace("/"+u+"/","/"));p.is(":checked")===!0&&(n="/"+$.asMobileSign.replace(/\//g,"")+n);n="/"+u+n;e.asAjax({url:$.asUrls.cms_link_save,data:JSON.stringify({Id:t,ParentId:i,Url:n,ViewRoleId:lt,ModifyRoleId:at,AccessRoleId:vt,Language:u,TypeId:l.asDropdown("selected").value,Action:b.val(),Text:a.val(),Html:w.val(),Order:k.val(),Status:rt.is(":checked"),IsMobile:p.is(":checked"),IsLeaf:nt.is(":checked"),RowVersion:ut}),success:function(n){if(c.is(":checked")){var t=!1;n.IsLeaf===!1&&(d[n.Id]=!0);v?(d[v.value]&&(t=!0,delete d[v.value]),f.asDropdown("addItem",{text:a.val(),value:n.Id},v,t)):f.asDropdown("addItem",{text:a.val(),value:n.Id},null,t)}g(n);$.asShowMessage({message:$.asRes[$.asLang].successOpration})}},{$form:e})});ot=function(){yt.destroy()}};bt();$(et).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})