﻿$("#idca8aa5752b843cbab98e7989ad6ba54").on($.asEvent.page.loaded,function(n,t){var l="#idca8aa5752b843cbab98e7989ad6ba54",bi=".idca8aa5752b843cbab98e7989ad6ba54."+$.asPageClass,i=function(n){var t=new $.as({pageId:bi});return t.as(n)},ki=function(){},yi,dr,pi,gr;$(l).on($.asEvent.page.dispose,function(){ki()});$.asUrls=$.extend({cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@idd)&$select=Id%2CParentId%2CCode%2COrder%2CName",develop_code_browser_save:"/develop/code/browser/save",develop_code_browser_delete:"/develop/code/browser/delete",develop_code_browser_get:"/develop/code/browser/get/@id",cms_masterDataKeyValue_GetByDefaultsLanguageAndParentTypetId:"/odata/cms/MasterDataKeyValues?$filter=ParentTypeId%20eq%20@parentTypeIdd&$select=Id%2CParentId%2CCode%2COrder%2CName%2CTypeId",develop_code_browser_getCodeContent:"/develop/code/browser/GetCodeContent/@path/@id",develop_code_browser_file_save:"/develop/code/browser/file/save",develop_code_browser_checkJavascriptCode:"/develop/code/browser/CheckJavascriptCode",develop_code_browser_getChanges:"/develop/code/browser/GetChanges/@codePath/@codeName/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_browser_getChange:"/develop/code/browser/GetChange/@changeId/@path/@codeId"},$.asUrls);var w=i("#frmCode"),ru=i("#divRoles"),r=i("#edrCode"),d=i("#drpViewRole"),g=i("#drpModifyRole"),nt=i("#drpAccessRole"),o=i("#drpCodes"),ei=i("#drpCodeType"),tt=i("#drpEditors"),it=i("#txtName"),uu=i("#btnSave"),fu=i("#btnSaveCode"),eu=i("#btnSelectFile"),ou=i("#btnManageBundle"),su=i("#btnSelectDir"),bt=i("#chkEditeMode"),oi=i("#divFind"),di=$.asModalManager.get({url:$.asModalManager.urls.translator}),gi=$.asModalManager.get({url:$.asModalManager.urls.directorySelector}),nr=$.asModalManager.get({url:$.asModalManager.urls.fileManager}),tr=$.asModalManager.get({url:$.asModalManager.urls.fileSelector}),ir=i("#winBundleManager"),rr=i("#txtFind"),ur=i("#txtReplace"),fr=i("#chkFindCase"),er=i("#chkFindWhole"),or=i("#chkFindExp"),sr=i("#chkFindSelect"),bu=i("#editorToolbar"),hu=i("#lblEditor"),rt=i("#txtDescription"),ht=i("#txtOrder"),kt=i("#winRestorEditor"),ut=i("#txtId"),hr=i("#txtCodeId"),y=i("#txtUrl"),dt=i("#chkIsLeaf"),b=i("#chkNew"),ct=i("#txtCode"),lt=i("#chkCache"),gt=i("#chkStatus"),cr=i("#chkCheckIn"),si=i("#txtVersion"),cu=i("#txtSlidingExpirationTimeInMinutes"),lu=i("#btnNext"),au=i("#btnPrev"),vu=i("#btnDell"),hi=i("#btnTranslator"),ft=i("#btnManageCode"),yu=i("#divUrl"),lr=i(".divSelectDir"),s=i("#divEditor"),et=i("#btnCheckJavaScriptCode"),ar=i("#txtComment"),vr=$.asModalManager.get({url:$.asModalManager.urls.sourceManager}),yr=$.asModalManager.get({url:$.asModalManager.urls.sourceComparator}),ot,at,ci,pu=!1,st="",vt=!1,pr=null,a=0,v=0,p=0,yt=0,ni=0,li=!1,pt="",wt,ti,f=null,ii=!1,wr=!0,ai=!1,h=0,k=[],c=null,e,ri=null,u={},ui={},br,vi={},kr;yu.hide();s.hide();yr.asModal({width:1200});vr.asModal({width:800});nr.asModal({width:800});gi.asModal({width:800});tr.asModal({width:800});di.asModal({width:800});ir.asModal({width:800});oi.asWindow({focusedId:"txtFind"});kt.asModal({backdrop:"static",keyboard:!1});r.asCodeEditor();yi=function(n){return $.asAjaxTask({url:n})};ru.asAfterTasks([yi($.asUrls.security_Role_getAllByDefaultsLanguage)],function(n){kr=n;d.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});nt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});g.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}})},{overlayClass:"as-overlay-relative"});tt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId,[{name:"@typeId",value:1030},{name:"@id",value:199}]),displayDataField:"Name",valueDataField:"Code",orderby:"Order"},selectParents:!0});ei.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndParentTypetId,[{name:"@parentTypeId",value:1028}]),displayDataField:"Name",valueDataField:"TypeId",orderby:"Order"}});o.asDropdown("init","نوع کد را انتخاب نمایید",{source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!0});w.asValidate("validator").addMethod("regex",function(n,t,i){var r=new RegExp(i);return this.optional(t)||r.test(n)},"شناسه می تواند شامل اعدا حروف و . و _ و - باشد و با . یا - یا _ شروع نمی شود");dr={txtCode:{required:!0},txtCodeId:{required:!0},txtName:{required:!0,maxlength:128},txtDescription:{maxlength:256},txtId:{maxlength:32,regex:"^[A-Za-z0-9][A-Za-z0-9_\\-\\.]*$"},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0}};br=w.asValidate({rules:dr});pi=function(n,t){ci=n==="1035"?"js":"css";wr||t?(wr=!1,i("#divCode").asAfterTasks([yi($.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:n}]))],function(n){o.asDropdown("reload",{localData:n});o.css({"margin-top":"0"});e&&(o.asDropdown("selectValue",e),nu(e))},{overlayClass:"as-overlay-absolute-no-height"})):e&&nu(e)};gr=function(){var t=function(){f=$.asGetQueryString();f!==null&&($.asTemp[f]=$.asTemp[f]||{},$.asTemp[f].codeJavascriptQueryEditor=$.asTemp[f].codeJavascriptQueryEditor||"",$.asTemp[f].codeJavascriptQueryEditor!==""&&$.asStorage.setItem("codeJavascriptQueryEditor"+f,$.asTemp[f].codeJavascriptQueryEditor))},yi;$(l).on($.asEvent.page.ready,function(){ft.prop("disabled",!0);r.asCodeEditor("focus");kt.asModal("show");tt.asDropdown("selectValue","javascript");et.prop("disabled",!1)});$(l).on($.asEvent.page.queryStringChange,function(){t();ri===null&&(ri=setInterval(tu,5e3));iu()});$(l).on("folderSelected",function(n,t){y.val(t)});ei.on("change",function(n,t){yt=t.value;pi(yt,!0)});yi=function(n,t){yr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceComparator)},{name:"@isModal",value:!0}]),{editorCode:r.asCodeEditor("getValue"),sourceControlCode:n,fileName:t})};$(l).on("compare",function(n,t){s.asAjax({url:$.asInitService($.asUrls.develop_code_browser_getChange,[{name:"@changeId",value:t},{name:"@path",value:ot.replace(/\//g,$.asUrlDelimeter)},{name:"@codeId",value:e}]),type:"get",success:function(n){yi(n,at)}},{validate:!1,overlayClass:"as-overlay-absolute"})});$(l).on("changeSetSelected",function(n,t){s.asAjax({url:$.asInitService($.asUrls.develop_code_browser_getChange,[{name:"@changeId",value:t},{name:"@path",value:ot.replace(/\//g,$.asUrlDelimeter)},{name:"@codeId",value:e}]),type:"get",success:function(n){r.asCodeEditor("setValue",n)}},{validate:!1,overlayClass:"as-overlay-absolute"})});i("#btnSourceControl").click(function(){at&&ot?vr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceManager)},{name:"@isModal",value:!0}]),{parent:l,selectEvent:"changeSetSelected",compareEvent:"compare",getUrl:$.asInitService($.asUrls.develop_code_browser_getChanges,[{name:"@codeName",value:at},{name:"@codePath",value:ot.replace(at,"").replace(/\//g,$.asUrlDelimeter)}])}):$.asShowMessage({template:"error",message:"هیچ فایلی انتخاب نشده است "})});ft.click(function(){o.asDropdown("selected")?nr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.fileManager)},{name:"@isModal",value:!0}]),{path:st,urlParentId:1044}):$.asShowMessage({template:"error",message:"هیچ کدی انتخاب نشده است"})});i("#btnEditorResize").click(function(){bi()});var wi=function(){c.asCodeEditor("toggleCommentLines")},n=function(){c.asCodeEditor("find",rr.val(),{backwards:!1,wrap:!1,range:sr.is(":checked")===!0?c.asCodeEditor("getSelectionRange"):null,caseSensitive:fr.is(":checked"),wholeWord:er.is(":checked"),regExp:or.is(":checked")})},bi=function(){i("#"+c.prop("id")+"_container").toggleClass("editor-fullscreen");c.toggleClass("editor-fullHeight");c.asCodeEditor("resize")},wr=function(){f=$.asGetQueryString();f!==null&&(s.show(),r===c&&c.asCodeEditor("setValue",$.asStorage.getItem("codeJavascriptQueryEditor"+f)))},dr=function(){f=$.asGetQueryString();f!==null&&(s.show(),r.asCodeEditor("setValue",$.asStorage.getItem("codeJavascriptQueryEditor"+f)))};r.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){oi.asWindow("show")},readOnly:!0});r.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){wi()},readOnly:!1});r.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){bi()},readOnly:!1});au.click(function(){ai=!0;h=h===0?k.length-1:h;r.asCodeEditor("editor").gotoLine(k[h]);h>1&&h--});lu.click(function(){ai=!0;h=h===0?k.length-1:h;r.asCodeEditor("editor").gotoLine(k[h]);h<k.length-1&&h++});r.asCodeEditor("editor").getSession().on("change",function(){h=k.length-1});r.asCodeEditor("editor").on("focus",function(){c=r;wu("کوئری");ai=!1});r.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){k.push(r.asCodeEditor("editor").selection.getCursor().row)});lt.change(function(){i("#divSlidingExpirationTimeInMinutes").prop("disabled",!this.checked)});dt.change(function(){this.checked===!1?(lr.show(),y.prop("disabled",!1),ft.prop("disabled",!0),s.hide()):(lr.hide(),y.prop("disabled",!0),ft.prop("disabled",!1),s.show())});b.change(function(){this.checked===!0?li===!0?($.asShowMessage({template:"error",message:"  امکان افزودن یک کد به کد دیگر وجود ندارد"}),b.prop("checked",!1)):(ut.prop("disabled",!1),u.Id=e,e=0,u.Isleaf=li,u.IsType=vt,vt=!1,u.ParentId=ni,ni=u.Id,u.RowVersion=pt,pt="",u.JsCode=r.asCodeEditor("getValue"),r.asCodeEditor("setValue",""),u.Name=it.val(),it.val(""),u.Description=rt.val(),rt.val(""),u.Code=ct.val(),ct.val(""),u.Url=y.val(),y.val(st+"/"+wt),u.Guid=ut.val(),u.NewGuid=wt,ut.val(wt),u.NewId=ti,hr.val(ti),u.Version=si.val(),si.val("0"),u.Order=ht.val(),ht.val(""),u.EnableCache=lt.prop("checked"),lt.prop("checked",!1),u.EditMode=bt.prop("checked"),bt.prop("checked",!1),u.Status=gt.prop("checked"),gt.prop("checked",!1),u.ViewRoleId=a,d.asDropdown("selectValue",[],!0),u.AccessRoleId=p,nt.asDropdown("selectValue",[],!0),u.ModifyRoleId=v,g.asDropdown("selectValue",[],!0)):fi(u)});su.click(function(){o.asDropdown("selected")?gi.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.directorySelector)},{name:"@isModal",value:!0}]),{path:st,parent:l,event:"folderSelected"}):$.asShowMessage({template:"error",message:"کدی انتخاب نشده است"})});i("#btnFindWindow").click(function(){oi.asWindow("show")});rr.on("input",function(){n()});fr.change(function(){n()});er.change(function(){n()});or.change(function(){n()});sr.change(function(){n()});i("#btnRecovery").click(function(){wr()});i("#btnReplace").click(function(){c.asCodeEditor("replace",ur.val())});i("#btnReplaceAll").click(function(){c.asCodeEditor("replaceAll",ur.val())});i("#btnToggleComment").click(function(){wi()});i("#btnFindNext").click(function(){c.asCodeEditor("findNext")});i("#btnFindPrev").click(function(){c.asCodeEditor("findPrevious")});i("#btnCancelRestor").click(function(){kt.asModal("hide");iu();f=$.asGetQueryString();f!==null&&(t(),ri=setInterval(tu,5e3))});i("#btnRestorPerviousEditors").click(function(){kt.asModal("hide");dr()});ou.click(function(){e?ir.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter("fa/admin/develop/codes/browsers/bundle/")},{name:"@isModal",value:!0}]),{codeId:e,roles:kr,accessRoleId:p,codePath:y.val(),modifyRoleId:v,viewRoleId:a,codeType:ci,parent:l}):$.asShowMessage({template:"error",message:"کدی انتخاب نشده است"})});vu.click(function(){o.asDropdown("selected")?w.asAjax({url:$.asUrls.develop_code_browser_delete,data:JSON.stringify({Id:e}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7});o.asDropdown("removeItem")}},{$form:w}):$.asShowMessage({template:"error",message:"برای حذف یک سرویس را انتخاب نمایید"})});uu.click(function(){var n,t;o.asDropdown("selected")&&(b.is(":checked")?(t=wt,n=ti):(t=ut.val(),n=e));dt.is(":checked")===!1&&b.is(":checked")&&(vi[n]=!0,s.show());d.asDropdown("selected")&&(a=d.asDropdown("selected").value);g.asDropdown("selected")&&(v=g.asDropdown("selected").value);nt.asDropdown("selected")&&(p=nt.asDropdown("selected").value);console.log(a);console.log(p);console.log(v);v;w.asAjax({url:$.asUrls.develop_code_browser_save,data:JSON.stringify({Id:n,TypeId:yt,ParentId:ni,PathOrUrl:y.val(),IsPath:!0,ViewRoleId:a,ModifyRoleId:v,AccessRoleId:p,Code:ct.val(),Name:it.val(),Description:rt.val(),Guid:t,Order:ht.val(),Status:gt.is(":checked"),EnableCache:lt.is(":checked"),EditMode:bt.is(":checked"),IsLeaf:dt.is(":checked"),IsType:vt,ParentTypeId:vt?pr:null,IsNew:b.is(":checked"),SlidingExpirationTimeInMinutes:cu.val(),RowVersion:pt}),success:function(t){if(b.is(":checked")){var i=!1;vi[ui.value]&&(i=!0,delete vi[ui.value]);o.asDropdown("addItem",{text:it.val(),value:n},ui,i)}fi(t,!1);$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:w})});o.on("change",function(n,t){ui=t;hi.removeClass("disabled");hi.prop("disabled",!1);ii===!1&&typeof t.value!="undefined"&&$.asSetQueryString(t.value+"/"+yt)});tt.on("change",function(n,t){t.value==="javascript"?et.prop("disabled",!1):et.prop("disabled",!0);r.asCodeEditor("setEditorMode",t.value)});$(l).on("fileSelected",function(n,t,i,u){ot=t;at=u;var f=u.toLowerCase().split(".");et.prop("disabled",!0);u.toLowerCase().indexOf(".js")>-1?(tt.asDropdown("selectValue","javascript"),r.asCodeEditor("setEditorMode","javascript"),et.prop("disabled",!1)):u.toLowerCase().indexOf(".ts")>-1?(r.asCodeEditor("setEditorMode","typescript"),tt.asDropdown("selectValue","typescript")):(console.log(f[f.length-1]),tt.asDropdown("selectValue",f[f.length-1]),r.asCodeEditor("setEditorMode",f[f.length-1]));s.asAjax({url:$.asInitService($.asUrls.develop_code_browser_getCodeContent,[{name:"@id",value:e},{name:"@path",value:$.asUrlAsParameter(t)}]),type:"get",success:function(n){r.asCodeEditor("setValue",n)}},{validate:!1,overlayClass:"as-overlay-absolute"})});eu.click(function(){tr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.fileSelector)},{name:"@isModal",value:!0}]),{path:st,parent:l,event:"fileSelected"})});et.click(function(){s.asAjax({url:$.asUrls.develop_code_browser_checkJavascriptCode,data:JSON.stringify({Id:e,Code:r.asCodeEditor("getValue")}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{validate:!1,overlayClass:"as-overlay-absolute"})});fu.click(function(){s.asAjax({url:$.asUrls.develop_code_browser_file_save,data:JSON.stringify({Id:e,Code:r.asCodeEditor("getValue"),Path:ot,CheckIn:cr.is(":checked"),Comment:ar.val()}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{validate:!1,overlayClass:"as-overlay-absolute"})});hi.click(function(){di.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.translator)},{name:"@isModal",value:!0}]),{type:"masterDataKeyValue",id:e,name:it.val(),description:rt.val()})});ki=function(){window.clearInterval(ri);br.destroy()}};gr();var wi=function(){$.asNotFound("کد")},nu=function(n){ii=!0;o.asDropdown("selectValue",[],!0);o.asDropdown("selectValue",n);a=0;url="";ser=0;pt="";w.asAjax({url:$.asInitService($.asUrls.develop_code_browser_get,[{name:"@id",value:n}]),type:"get",error:function(){ii=!1},success:function(n){$.isArray(n)?n.length>0?fi(n):wi():n!=null?typeof n!="undefined"?fi(n):wi():wi();ii=!1}})},tu=function(){$.asStorage.setItem("codeJavascriptQueryEditor"+f,r.asCodeEditor("getValue"))},wu=function(n){hu.html(n)},fi=function(n,t){typeof t=="undefined"&&(t=!0);ut.prop("disabled",!0);b.prop("checked",!1);e=n.Id;ar.val("");cr.prop("checked",!1);i("#divLastModifiUser").html(n.LastModifieUser);i("#divLastModifiLocalDataTime").html(n.LastModifieLocalDateTime);hr.val(e);ni=n.ParentId;pt=n.RowVersion;dt.prop("checked",n.IsLeaf);n.IsLeaf?(s.show(),ft.prop("disabled",!1)):(ft.prop("disabled",!0),s.hide());li=n.IsLeaf;vt=n.IsType;pr=n.ParentTypeId;it.val(n.Name);n.Description!=null?rt.val(n.Description):rt.val("");n.Code!==null?ct.val(n.Code):ct.val("");n.PathOrUrl!==null?(st=n.PathOrUrl,y.val(n.PathOrUrl)):(st="",y.val(""));ut.val(n.Guid);wt=n.NewGuid;ti=n.NewId;si.val(n.Version);n.Order!==null?ht.val(n.Order):ht.val("");lt.prop("checked",n.EnableCache);bt.prop("checked",n.EditMode);gt.prop("checked",n.Status);pu=n.Status;t&&(n.BuildJs!=null?r.asCodeEditor("setValue",n.BuildJs):r.asCodeEditor("setValue",""));n.ViewRoleId!==null?(a=n.ViewRoleId,d.asDropdown("selectValue",a)):(a=[],d.asDropdown("selectValue",a,!0));n.AccessRoleId!=null?(p=n.AccessRoleId,nt.asDropdown("selectValue",p)):(p=[],nt.asDropdown("selectValue",p,!0));n.ModifyRoleId!=null?(v=n.ModifyRoleId,g.asDropdown("selectValue",v)):(v=[],g.asDropdown("selectValue",v,!0))},iu=function(){if(f=$.asGetQueryString(),f!==null){var n=f.split("/");ei.asDropdown("selectValue",n[1]);e=n[0];yt=n[1];pi(n[1])}};$(bi).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})