﻿$("#i23cd2e374f1e4b189a2e5a9ad8c76da3").on($.asEvent.page.loaded,function(n,t){var b="#i23cd2e374f1e4b189a2e5a9ad8c76da3",it=".i23cd2e374f1e4b189a2e5a9ad8c76da3."+$.asPageClass,i=function(n){var t=new $.as({pageId:it});return t.as(n)},rt=function(){},ii,ri,ui,fi;$(b).on($.asEvent.page.dispose,function(){rt()});$.asUrls=$.extend({cms_languageAndCulture_save:"/cms/languageAndCulture/save",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20'@lang')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_languageAndCulture_byJsFile_get:"/cms/languageAndCulture/Get/@id",cms_languageAndCulture_delete:"/cms/languageAndCulture/delete"},$.asUrls);var s=i("#frmLang"),pi=i("#divRoles"),r=i("#edrJavascript"),h=i("#drpViewRole"),c=i("#drpModifyRole"),l=i("#drpAccessRole"),ei=i("#btnPathSelector"),ut=$.asModalManager.get({url:$.asModalManager.urls.pathSelector}),k=i("#winRestorEditor"),g=i("#divFind"),a=i("#drpLanguge"),ft=i("#txtLang"),et=i("#txtCulture"),ot=i("#txtCountry"),st=i("#txtFind"),ht=i("#txtReplace"),ct=i("#chkFindCase"),lt=i("#chkFindHole"),at=i("#chkFindExp"),vt=i("#chkFindSelect"),yt=i("#chkStatus"),pt=i("#chkDefaultsLang"),wt=i("#chkIsRightToLeft"),oi=i("#chkPublish"),bt=i("#chkNew"),wi=i("#editorToolbar"),si=i("#lblEditor"),nt=i("#imgFlag"),hi=i("#btnSave"),ci=i("#btnDell"),li=i("#btnNext"),ai=i("#btnPrev"),ci=i("#btnDell"),tt=!1,u=0,o=[],f=null,kt,e,dt="",d=0,v,y=0,gt=0,ni=0,ti=0,p,w;$.asTemp.langJavascriptQueryEditor=$.asTemp.langJavascriptQueryEditor||"";$.asTemp.langJavascriptQueryEditor!==""&&$.asStorage.setItem("langJavascriptQueryEditor",$.asTemp.langJavascriptQueryEditor);ut.asModal({width:800});g.asWindow({focusedId:"txtFind"});k.asModal({backdrop:"static",keyboard:!1});r.asCodeEditor();ii=function(){return $.asAjaxTask({url:$.asInitService($.asUrls.security_Role_getAllByOtherLanguage,[{name:"@lang",value:$.asLang}])})};i("#divRoles").asAfterTasks([ii()],function(n){h.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}});l.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}});c.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}})},{overlayClass:"as-overlay-relative"});ri=function(){return $.asAjaxTask({url:$.asUrls.cms_languageAndCulture_public_getAll})};a.asAfterTasks([ri()],function(n){p=n;w={source:{displayDataField:"country",valueDataField:"language",urlDataField:"flagUrl",idDataField:"id",exteraDataField:"isRightToLeft",localData:n}};var t=$.asGetDefaultsLnguageAndCulter();t&&(w.selectedValue=t.country);a.asFlexSelect(w)},{overlayClass:"as-overlay-fixed"});var vi=function(){$.asStorage.setItem("langJavascriptQueryEditor",r.asCodeEditor("getValue"))},yi=function(n){si.html(n)};validate=s.asValidate({rules:{txtLang:{required:!0},txtCountry:{required:!0},txtLang:{required:!0},txtCulture:{required:!0},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0}}});ui=function(){$.asNotFound("Language and culture")};fi=function(){var t;rt=function(){window.clearInterval(kt);validate.destroy()};$(b).on($.asEvent.page.ready,function(){r.asCodeEditor("focus");k.asModal("show")});var it=function(){f.asCodeEditor("toggleCommentLines")},n=function(){f.asCodeEditor("find",st.val(),{backwards:!1,wrap:!1,range:vt.is(":checked")===!0?f.asCodeEditor("getSelectionRange"):null,caseSensitive:ct.is(":checked"),wholeWord:lt.is(":checked"),regExp:at.is(":checked")})},ii=function(){i("#"+f.prop("id")+"_container").toggleClass("editor-fullscreen");f.toggleClass("editor-fullHeight");f.asCodeEditor("resize")},ri=function(){r===f&&f.asCodeEditor("setValue",$.asStorage.getItem("langJavascriptQueryEditor"))},fi=function(){r.asCodeEditor("setValue",$.asStorage.getItem("langJavascriptQueryEditor"))};r.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){g.asWindow("show")},readOnly:!0});r.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){it()},readOnly:!1});r.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){ii()},readOnly:!1});ai.click(function(){tt=!0;u=u===0?o.length-1:u;r.asCodeEditor("editor").gotoLine(o[u]);u>1&&u--});li.click(function(){tt=!0;u=u===0?o.length-1:u;r.asCodeEditor("editor").gotoLine(o[u]);u<o.length-1&&u++});r.asCodeEditor("editor").getSession().on("change",function(){u=o.length-1});r.asCodeEditor("editor").on("focus",function(){f=r;yi("ترجمه");tt=!1});r.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){o.push(r.asCodeEditor("editor").selection.getCursor().row)});i("#btnFindWindow").click(function(){g.asWindow("show")});st.on("input",function(){n()});ct.change(function(){n()});lt.change(function(){n()});at.change(function(){n()});vt.change(function(){n()});i("#btnEditorResize").click(function(){ii()});i("#btnRecovery").click(function(){ri()});i("#btnReplace").click(function(){f.asCodeEditor("replace",ht.val())});i("#btnReplaceAll").click(function(){f.asCodeEditor("replaceAll",ht.val())});i("#btnToggleComment").click(function(){it()});i("#btnFindNext").click(function(){f.asCodeEditor("findNext")});i("#btnFindPrev").click(function(){f.asCodeEditor("findPrevious")});i("#btnCancelRestor").click(function(){k.asModal("hide");kt=setInterval(vi,5e3)});i("#btnRestorPerviousEditors").click(function(){k.asModal("hide");fi()});ei.click(function(){ut.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.pathSelector)},{name:"@isModal",value:!0}]),{parent:b,event:"flagSelected"})});$(b).on("flagSelected",function(n,t,i){d=i;nt.html('<img src="'+($.asThumbnailPath.replace("~","")+t).replace("//","/")+'">')});t=function(n){ft.val(n.Language);et.val(n.Culture);ot.val(n.Country);yt.prop("checked",n.Status);pt.prop("checked",n.IsDefaults);wt.prop("checked",n.IsRightToLeft);r.asCodeEditor("setValue",n.JsCode);dt=n.RowVersion;d=n.FlagId;v=n.FlagUrl;v!==""?nt.html('<img src="/files/thumbnail'+v+'">'):nt.html("");n.ViewRoleId!==null?h.asDropdown("selectValue",n.ViewRoleId):h.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?l.asDropdown("selectValue",n.AccessRoleId):l.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?c.asDropdown("selectValue",n.ModifyRoleId):c.asDropdown("selectValue",[],!0)};a.on("selectedIndexChanged",function(n,i,r,u,f){f&&a.asFlexSelect("setItem",'<img src="'+f+'">&nbsp;<span class="caret"><\/span>');s.asAjax({url:$.asInitService($.asUrls.cms_languageAndCulture_byJsFile_get,[{name:"@id",value:i}]),type:"get",success:function(n){e=n;y=n.Id;n!==null?t(n):ui()}},{overlayClass:"as-overlay-absolute"})});bt.change(function(){this.checked===!0?t({Language:"",Culture:"",Country:"",Status:!1,IsDefaults:!1,IsRightToLeft:!1,JsCode:"",RowVersion:"",FlagId:0,FlagUrl:"",ModifyRoleId:null,ViewRoleId:null,AccessRoleId:null}):t(e)});ci.click(function(){if(y===0){$.asShowMessage({template:"error",message:"To remove , Select a language and culture"});return}s.asAjax({url:$.asUrls.cms_languageAndCulture_delete,data:JSON.stringify({Id:y}),success:function(){var t=$.asFindInJsonArray(p,"id",y),n=p.indexOf(t);n>-1&&p.splice(n,1);w.localData=p;a.asFlexSelect(w);$.asShowMessage({message:$.asRes[$.asLang].successOpration})}},{$form:s})});hi.click(function(){if(d===0){$.asShowMessage({template:"error",message:"Flag image not selected."});return}h.asDropdown("selected")&&(gt=h.asDropdown("selected").value);c.asDropdown("selected")&&(ni=c.asDropdown("selected").value);l.asDropdown("selected")&&(ti=l.asDropdown("selected").value);s.asAjax({url:$.asUrls.cms_languageAndCulture_save,data:JSON.stringify({Id:y,isNew:bt.is(":checked"),FlagId:d,publish:oi.is(":checked"),ViewRoleId:gt,ModifyRoleId:ni,AccessRoleId:ti,Language:ft.val(),Country:ot.val(),Culture:et.val(),IsDefaults:pt.is(":checked"),IsRightToLeft:wt.is(":checked"),Status:yt.is(":checked"),JsCode:r.asCodeEditor("getValue"),RowVersion:dt}),success:function(n){var i=e.JsCode;v=e.FlagUrl;e=n;e.JsCode=i;e.FlagUrl=v;t(e);$.asShowMessage({message:$.asRes[$.asLang].successOpration})}},{$form:s})})};fi();$(it).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})