﻿$("#i7dd9ce0eaf5f48fd8071fa19dcdab880").on($.asEvent.page.loaded,function(n,t){var v="#i7dd9ce0eaf5f48fd8071fa19dcdab880",ei=".i7dd9ce0eaf5f48fd8071fa19dcdab880."+$.asPageClass,i=function(n){var t=new $.as({pageId:ei});return t.as(n)},oi=function(){},rr,ur;$(v).on($.asEvent.page.dispose,function(){oi()});$.asUrls=$.extend({cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20'@lang'&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_webPage_save:"/cms/webpage/save",cms_webPage_get:"/cms/WebPage/Get/@url/@typeId",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_webPage_delete:"/cms/webpage/delete",cms_webPage_getWebPageChanges:"/cms/WebPage/GetWebPageChanges/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime/@webPageGuid/@type",cms_webPage_getWebPageChange:"/cms/WebPage/GetWebPageChange/@changeId/@webPageGuid",cms_webPage_getWebPageResourcesChange:"/cms/WebPage/GetWebPageResourcesChange/@changeId/@webPageGuid"},$.asUrls);var y=i("#cmsWebForm_webForm"),ft=i("#cmsWebForm_Html"),f=i("#cmsWebForm_htmlSource"),u=i("#cmsWebForm_javaScript"),o=i("#cmsWebForm_style"),et=i("#cmsWebForm_drp_menu"),p=i("#cmsWebForm_drp_viewRole"),w=i("#cmsWebForm_drp_modifyRole"),b=i("#cmsWebForm_drp_accessRole"),a=i("#cmsWebForm_drp_service"),k=i("#cmsWebForm_drp_frameWork"),rt=i("#cmsWebForm_drp_type"),wt=i("#cmsWebForm_Title"),bt=i("#cmsWebForm_TemplatePatternUrl"),hr=i("#cmsWebForm_save"),cr=i("#btnDell"),kt=i("#cmsWebForm_Status"),ht=i("#cmsWebForm_Cache"),si=i("#cmsWebForm_Publish"),hi=i("#chkCheckIn"),dt=i("#cmsWebForm_EditeMode"),ot=i("#cmsWebForm_find"),ci=i("#cmsWebForm_txtFind"),li=i("#cmsWebForm_txtReplace"),ai=i("#cmsWebForm_findCase"),vi=i("#cmsWebForm_findWhole"),yi=i("#cmsWebForm_findExp"),pi=i("#cmsWebForm_findSelect"),wi=i("#editorToolbar"),bi=i("#sourceEditorToolbar"),d=i("#lblEditor"),gt=i("#cmsWebForm_params"),ki=i("#divParams"),ct=i("#cmsWebForm_restorEditor"),l=i("#cmsWebForm_id"),ni=i("#cmsWebForm_SlidingExpirationTimeInMinutes"),lr=i("#btnNext"),ar=i("#btnPrev"),di=i("#txtComment"),gi=$.asModalManager.get({url:$.asModalManager.urls.sourceManager}),nr=$.asModalManager.get({url:$.asModalManager.urls.sourceComparator}),lt=[],ti=0,tr=0,ir=0,g=0,at="",ii="",ut=0,ri="",vt,r=null,st=!1,ui="",fi=!1,s=0,nt=[],h=0,tt=[],c=0,it=[],e=null,yt=null;nr.asModal({width:1200});gi.asModal({width:800});ot.asWindow({focusedId:"cmsWebForm_txtFind"});ct.asModal({backdrop:"static",keyboard:!1});u.asCodeEditor();o.asCodeEditor({mode:"css"});f.asCodeEditor({mode:"html",wysiwygEditor:"cmsWebForm_Html"});ft.asEditor({htmlEditor:f,init_instance_callback:function(n){n.addShortcut("ctrl+l","fullScreen",function(){or()});n.on("focus",function(){pt("محتوا")})}});rr=function(){return $.asAjaxTask({url:$.asInitService($.asUrls.cms_link_getByLanguage,[{name:"@lang",value:"fa"}])})};i("#cmsWebForm_menu").asAfterTasks([rr()],function(n){et.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Url",displayDataField:"Text",orderby:"Order",localData:n}})});a.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!0},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1001}]),displayDataField:"Name",valueDataField:"Code",orderby:"Order"},multiple:!0,parentMode:"uniq"});rt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!0},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1003}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},parentMode:"uniq"});ur=function(){return $.asAjaxTask({url:$.asUrls.security_Role_getAllByDefaultsLanguage})};i("#divRoles").asAfterTasks([ur()],function(n){p.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});b.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});w.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}})},{overlayClass:"as-overlay-relative"});k.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!0},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1005}]),displayDataField:"Name",valueDataField:"PathOrUrl",orderby:"Order"},parentMode:"uniq"});y.asValidate("validator").addMethod("regex",function(n,t,i){var r=new RegExp(i);return this.optional(t)||r.test(n)},"شناسه می تواند شامل اعدا حروف و . و _ و - باشد و با . یا - یا _ شروع نمی شود");var vr=y.asValidate({rules:{cmsWebForm_drp_viewRole:{asType:"asDropdown",required:!0},cmsWebForm_drp_modifyRole:{asType:"asDropdown",required:!0},cmsWebForm_drp_accessRole:{asType:"asDropdown",required:!0},cmsWebForm_drp_menu:{asType:"asDropdown",required:!0},cmsWebForm_Title:{required:!0,maxlength:255},cmsWebForm_params:{maxlength:1024},cmsWebForm_TemplatePatternUrl:{maxlength:1024},cmsWebForm_id:{maxlength:32,regex:"^[A-Za-z0-9][A-Za-z0-9_\\-\\.]*$"}}}),fr=function(){if(r=$.asGetQueryString(),r!==null){var n=r.split("/");vt=n[0].replace(new RegExp($.asUrlDelimeter,"gi"),"/");pr(n[0],n[1])}},yr=function(){var bi=function(){r=$.asGetQueryString();r!==null&&($.asTemp[r]=$.asTemp[r]||{},$.asTemp[r].htmlEditor=$.asTemp[r].htmlEditor||"",$.asTemp[r].javaScriptEditor=$.asTemp[r].javaScriptEditor||"",$.asTemp[r].styleEditor=$.asTemp[r].styleEditor||"",$.asTemp[r].htmlEditor!==""&&$.asStorage.setItem("htmlPage"+r,$.asTemp[r].htmlEditor),$.asTemp[r].javaScriptEditor!==""&&$.asStorage.setItem("javaScriptPage"+r,$.asTemp[r].javaScriptEditor),$.asTemp[r].styleEditor!==""&&$.asStorage.setItem("stylePage"+r,$.asTemp[r].styleEditor))},wi;$(v).on($.asEvent.page.ready,function(){u.asCodeEditor("focus");ct.asModal("show")});$(v).on($.asEvent.page.queryStringChange,function(){bi();yt===null&&(yt=setInterval(er,5e3));fr()});ht.change(function(){i("#cmsWebForm_SlidingExpirationTimeInMinutes_fieldset").prop("disabled",!this.checked)});i("#cmsWebForm_html_changeMode").click(function(){or()});i("#btnEditorResize").click(function(){ei()});var t=function(){e.asCodeEditor("toggleCommentLines")},n=function(){e.asCodeEditor("find",ci.val(),{backwards:!1,wrap:!1,range:pi.is(":checked")===!0?e.asCodeEditor("getSelectionRange"):null,caseSensitive:ai.is(":checked"),wholeWord:vi.is(":checked"),regExp:yi.is(":checked")})},ei=function(){i("#"+e.prop("id")+"_container").toggleClass("editor-fullscreen");e.toggleClass("editor-fullHeight");e.asCodeEditor("resize")},ki=function(){r=$.asGetQueryString();r!==null&&(u===e&&e.asCodeEditor("setValue",$.asStorage.getItem("javaScriptPage"+r)),o===e&&e.asCodeEditor("setValue",$.asStorage.getItem("stylePage"+r)),f===e&&e.asCodeEditor("setValue",$.asStorage.getItem("htmlPage"+r)))},rr=function(){r=$.asGetQueryString();r!==null&&(u.asCodeEditor("setValue",$.asStorage.getItem("javaScriptPage"+r)),o.asCodeEditor("setValue",$.asStorage.getItem("stylePage"+r)),f.asCodeEditor("setValue",$.asStorage.getItem("htmlPage"+r)))};u.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){ot.asWindow("show")},readOnly:!0});f.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){ot.asWindow("show")},readOnly:!0});o.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){ot.asWindow("show")},readOnly:!0});u.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){t()},readOnly:!1});o.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){t()},readOnly:!1});f.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){t()},readOnly:!1});u.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){ei()},readOnly:!1});o.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){ei()},readOnly:!1});f.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){ei()},readOnly:!1});ar.click(function(){fi=!0;switch(ui){case"جاوا اسکریپت":s=s===0?nt.length-1:s;u.asCodeEditor("editor").gotoLine(nt[s]);s>1&&s--;break;case"استایل":h=h===0?tt.length-1:h;o.asCodeEditor("editor").gotoLine(tt[h]);h>1&&h--;break;case"Html":c=c===0?it.length-1:c;f.asCodeEditor("editor").gotoLine(it[c]);c>1&&c--}});lr.click(function(){fi=!0;switch(ui){case"جاوا اسکریپت":s=s===0?nt.length-1:s;u.asCodeEditor("editor").gotoLine(nt[s]);s<nt.length-1&&s++;break;case"استایل":h=h===0?tt.length-1:h;o.asCodeEditor("editor").gotoLine(tt[h]);h<tt.length-1&&h++;break;case"Html":c=c===0?it.length-1:c;f.asCodeEditor("editor").gotoLine(it[c]);c<it.length&&c++}});u.asCodeEditor("editor").getSession().on("change",function(){s=nt.length-1});f.asCodeEditor("editor").getSession().on("change",function(){c=it.length-1});o.asCodeEditor("editor").getSession().on("change",function(){h=tt.length-1});u.asCodeEditor("editor").on("focus",function(){e=u;pt("جاوا اسکریپت")});u.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){nt.push(u.asCodeEditor("editor").selection.getCursor().row)});o.asCodeEditor("editor").on("focus",function(){e=o;pt("استایل")});o.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){tt.push(o.asCodeEditor("editor").selection.getCursor().row)});f.asCodeEditor("editor").on("focus",function(){e=f;pt("Html")});f.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){it.push(f.asCodeEditor("editor").selection.getCursor().row)});i("#btnFindWindow").click(function(){ot.asWindow("show")});ci.on("input",function(){n()});ai.change(function(){n()});vi.change(function(){n()});yi.change(function(){n()});pi.change(function(){n()});wi=function(n,t){nr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceComparator)},{name:"@isModal",value:!0}]),{editorCode:e.asCodeEditor("getValue"),sourceControlCode:n,fileName:t})};$(v).on("compare",function(n,t){var r,u=v.substring(2);d.html()==="Html"?i("#divHtml").asAjax({url:$.asInitService($.asUrls.cms_webPage_getWebPageChange,[{name:"@changeId",value:t},{name:"@webPageGuid",value:l.val()}]),type:"get",success:function(n){r=n.Html;u+=".html";wi(r,u)}},{validate:!1,overlayClass:"as-overlay-absolute"}):d.html()==="جاوا اسکریپت"?i("#divJs").asAjax({url:$.asInitService($.asUrls.cms_webPage_getWebPageResourcesChange,[{name:"@changeId",value:t},{name:"@webPageGuid",value:l.val()}]),type:"get",success:function(n){r=n;u+=".js";wi(r,u)}},{validate:!1,overlayClass:"as-overlay-absolute"}):i("#divCss").asAjax({url:$.asInitService($.asUrls.cms_webPage_getWebPageResourcesChange,[{name:"@changeId",value:t},{name:"@webPageGuid",value:l.val()}]),type:"get",success:function(n){r=n;u+=".css";wi(r,u)}},{validate:!1,overlayClass:"as-overlay-absolute"})});$(v).on("changeSetSelected",function(n,t){d.html()==="Html"?i("#divHtml").asAjax({url:$.asInitService($.asUrls.cms_webPage_getWebPageChange,[{name:"@changeId",value:t},{name:"@webPageGuid",value:l.val()}]),type:"get",success:function(n){n.Html?(ft.asEditor("setContent",n.Html),f.asCodeEditor("setValue",n.Html)):(ft.asEditor("setContent",""),f.asCodeEditor("setValue",""));i("#divLastModifiUser").html(n.LastModifieUser);i("#divLastModifiLocalDataTime").html(n.LastModifieLocalDateTime);wt.val(n.Title);gt.val(n.Params);l.val(n.Guid);$("#cmsWebForm_version").val(n.Version);kt.prop("checked",n.Status);ht.prop("checked",n.EnableCache);i("#chkMobile").prop("checked",n.IsMobileVersion);$("#cmsWebForm_SlidingExpirationTimeInMinutes_fieldset").prop("disabled",!n.EnableCache);ni.val(n.CacheSlidingExpirationTimeInMinutes);dt.prop("checked",n.EditMode);a.asDropdown("selectValue",[],!0);n.Services!=null&&n.Services.length!=0&&a.asDropdown("selectValue",n.Services);g==15&&(n.TemplatePatternUrl!=null?k.asDropdown("selectValue",n.FrameWorkUrl):k.asDropdown("selectValue",[],!0),bt.val(n.TemplatePatternUrl));n.ViewRoleId!=null?p.asDropdown("selectValue",n.ViewRoleId):p.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?b.asDropdown("selectValue",n.AccessRoleId):b.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?w.asDropdown("selectValue",n.ModifyRoleId):w.asDropdown("selectValue",[],!0)}},{validate:!1,overlayClass:"as-overlay-absolute"}):d.html()==="جاوا اسکریپت"?i("#divJs").asAjax({url:$.asInitService($.asUrls.cms_webPage_getWebPageResourcesChange,[{name:"@changeId",value:t},{name:"@webPageGuid",value:l.val()}]),type:"get",success:function(n){u.asCodeEditor("setValue",n)}},{validate:!1,overlayClass:"as-overlay-absolute"}):i("#divCss").asAjax({url:$.asInitService($.asUrls.cms_webPage_getWebPageResourcesChange,[{name:"@changeId",value:t},{name:"@webPageGuid",value:l.val()}]),type:"get",success:function(n){o.asCodeEditor("setValue",n)}},{validate:!1,overlayClass:"as-overlay-absolute"})});i("#btnSourceControl").click(function(){var n="css";d.html()==="Html"?n="json":d.html()==="جاوا اسکریپت"&&(n="js");gi.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceManager)},{name:"@isModal",value:!0}]),{parent:v,selectEvent:"changeSetSelected",compareEvent:"compare",getUrl:$.asInitService($.asUrls.cms_webPage_getWebPageChanges,[{name:"@webPageGuid",value:l.val()},{name:"@type",value:n}])})});i("#btnRecovery").click(function(){ki()});i("#btnReplace").click(function(){e.asCodeEditor("replace",li.val())});i("#btnReplaceAll").click(function(){e.asCodeEditor("replaceAll",li.val())});i("#btnToggleComment").click(function(){t()});i("#cmsWebForm_findNext").click(function(){e.asCodeEditor("findNext")});i("#cmsWebForm_findPrev").click(function(){e.asCodeEditor("findPrevious")});i("#cmsWebForm_cancelRestor").click(function(){ct.asModal("hide");fr();r=$.asGetQueryString();r!==null&&(bi(),yt=setInterval(er,5e3))});i("#cmsWebForm_restorPerviousEditors").click(function(){ct.asModal("hide");rr()});cr.click(function(){y.asAjax({url:$.asUrls.cms_webPage_delete,data:JSON.stringify({Id:ut}),success:function(){ut=0;$.asShowMessage({message:$.asRes[$.asLang].successOpration})}},{$form:y})});hr.click(function(){var n;at="";lt=[];a.asDropdown("selected")&&$.each(a.asDropdown("selected"),function(n,t){t.selected&&lt.push(t.value)});p.asDropdown("selected")&&(ti=p.asDropdown("selected").value);w.asDropdown("selected")&&(tr=w.asDropdown("selected").value);b.asDropdown("selected")&&(ir=b.asDropdown("selected").value);rt.asDropdown("selected")&&(g=rt.asDropdown("selected").value);g==15&&(k.asDropdown("selected")&&(n=k.asDropdown("selected"),n.selected&&(ii=n.value)),at=bt.val());var t=u.asCodeEditor("getValue"),e=f.asCodeEditor("getValue"),s=o.asCodeEditor("getValue");$.asTemp[r].htmlEditor=e;$.asTemp[r].javaScriptEditor=t;$.asTemp[r].styleEditor=s;y.asAjax({url:$.asUrls.cms_webPage_save,data:JSON.stringify({Id:ut,Url:vt,TemplatePatternUrl:at,CacheSlidingExpirationTimeInMinutes:ni.val(),FrameWorkUrl:ii,Services:lt,ViewRoleId:ti,ModifyRoleId:tr,AccessRoleId:ir,JavaScript:t,Html:e,Style:s,Publish:si.is(":checked"),CheckIn:hi.is(":checked"),Title:wt.val(),Params:gt.val(),DependentModules:$.asGetDependentModules(t),Guid:l.val(),IsMobileVersion:i("#chkMobile").is(":checked"),Status:kt.is(":checked"),EnableCache:ht.is(":checked"),EditMode:dt.is(":checked"),Comment:di.val(),TypeId:g,RowVersion:ri}),success:function(n){ut=n.Id;$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:y})});a.on("change",function(n,t){st===!1&&(t.selected?u.asCodeEditor("insert",t.value):(u.asCodeEditor("find",t.value,{wholeWord:!0}),u.asCodeEditor("replaceAll","")))});et.on("change",function(n,t){vt=t.value;t.selected&&(t.value.toLowerCase().indexOf($.asMobileSign)>-1?i("#chkMobile").prop("checked",!0):i("#chkMobile").prop("checked",!1))});rt.on("change",function(n,t){if(et.asDropdown("selected")&&st===!1){sr(t.value);var i=vt.replace(/\//g,$.asUrlDelimeter);typeof t.value!="undefined"&&$.asSetQueryString(i+"/"+t.value)}});oi=function(){window.clearInterval(yt);vr.destroy()}};yr();var pr=function(n,t){g=t;st=!0;var e=r.split("/");sr(e[1]);et.asDropdown("selectValue",[],!0);et.asDropdown("selectValue",e[0].toLowerCase().replace(new RegExp($.asUrlDelimeter,"g"),"/"));rt.asDropdown("selectValue",[],!0);rt.asDropdown("selectValue",e[1]);lt=[];ti=0;ii="";url="";at="";ut=0;ri="";y.asAjax({url:$.asInitService($.asUrls.cms_webPage_get,[{name:"@url",value:$.asUrlAsParameter(n)},{name:"@typeId",value:g}]),type:"get",error:function(){st=!1},success:function(n){di.val("");n.Id==0?($.asShowMessage({message:"محتوای این منو هنوز تهیه نشده است"}),l.prop("disabled",!1)):l.prop("disabled",!0);ut=n.Id;ri=n.RowVersion;n.JavaScript?u.asCodeEditor("setValue",n.JavaScript):u.asCodeEditor("setValue","");n.Html?(ft.asEditor("setContent",n.Html),f.asCodeEditor("setValue",n.Html)):(ft.asEditor("setContent",""),f.asCodeEditor("setValue",""));n.Style?o.asCodeEditor("setValue",n.Style):o.asCodeEditor("setValue","");i("#divLastModifiUser").html(n.LastModifieUser);i("#divLastModifiLocalDataTime").html(n.LastModifieLocalDateTime);wt.val(n.Title);gt.val(n.Params);l.val(n.Guid);$("#cmsWebForm_version").val(n.Version);si.prop("checked",!1);hi.prop("checked",!1);kt.prop("checked",n.Status);ht.prop("checked",n.EnableCache);i("#chkMobile").prop("checked",n.IsMobileVersion);$("#cmsWebForm_SlidingExpirationTimeInMinutes_fieldset").prop("disabled",!n.EnableCache);ni.val(n.CacheSlidingExpirationTimeInMinutes);dt.prop("checked",n.EditMode);a.asDropdown("selectValue",[],!0);n.Services!=null&&n.Services.length!=0&&a.asDropdown("selectValue",n.Services);g==15&&(n.TemplatePatternUrl!=null?k.asDropdown("selectValue",n.FrameWorkUrl):k.asDropdown("selectValue",[],!0),bt.val(n.TemplatePatternUrl));n.ViewRoleId!=null?p.asDropdown("selectValue",n.ViewRoleId):p.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?b.asDropdown("selectValue",n.AccessRoleId):b.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?w.asDropdown("selectValue",n.ModifyRoleId):w.asDropdown("selectValue",[],!0);st=!1}})},er=function(){$.asStorage.setItem("javaScriptPage"+r,u.asCodeEditor("getValue"));$.asStorage.setItem("stylePage"+r,o.asCodeEditor("getValue"));$.asStorage.setItem("htmlPage"+r,f.asCodeEditor("getValue"))},pt=function(n){fi=!1;ui=n;n==="محتوا"?(wi.addClass("hide"),bi.removeClass("hide")):(d.html(n),bi.addClass("hide"),wi.removeClass("hide"))},or=function(){$("#cmsWebForm_Html_container").toggleClass("editor-fullscreen")},sr=function(n){n==15?($("#cmsWebFom_frameWork").show(),$("#cmsWebFom_template").show()):($("#cmsWebFom_frameWork").hide(),$("#cmsWebFom_template").hide());n==14?ki.hide():ki.show()};$(ei).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})