﻿$("#ib929ac36ced14db88fdb654721c7f817").on($.asEvent.page.loaded,function(n,t){var l="#ib929ac36ced14db88fdb654721c7f817",nt=".ib929ac36ced14db88fdb654721c7f817."+$.asPageClass,i=function(n){var t=new $.as({pageId:nt});return t.as(n)},oi=function(){},ur,fr,er;$(l).on($.asEvent.page.dispose,function(){oi()});$.asUrls=$.extend({cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20'@lang')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",develop_service_get:"/develop/service/get/@id",develop_service_save:"/develop/service/save",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20'@lang')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",develop_service_delete:"/develop/service/delete",develop_service_getChanges:"/develop/service/GetChanges/@codeGuid/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_service_getChange:"/develop/service/GetChange/@changeId/@codeId"},$.asUrls);var a=i("#frmQuery"),hr=i("#divRoles"),r=i("#edrJavascript"),w=i("#drpViewRole"),b=i("#drpModifyRole"),k=i("#drpAccessRole"),s=i("#drpService"),d=i("#txtName"),cr=i("#btnSave"),ft=i("#chkEditeMode"),si=i("#chkIsLogOnService"),wt=i("#divFind"),hi=$.asModalManager.get({url:$.asModalManager.urls.translator}),ci=i("#txtFind"),li=i("#txtReplace"),ai=i("#chkFindCase"),vi=i("#chkFindWhole"),yi=i("#chkFindExp"),pi=i("#chkFindSelect"),iu=i("#editorToolbar"),lr=i("#lblEditor"),g=i("#txtDescription"),tt=i("#txtOrder"),et=i("#winRestorEditor"),c=i("#txtId"),wi=i("#txtServiceId"),h=i("#txtUrl"),bt=i("#chkService"),v=i("#chkNew"),it=i("#txtCode"),rt=i("#chkCache"),ot=i("#chkStatus"),kt=i("#txtVersion"),ar=i("#txtSlidingExpirationTimeInMinutes"),vr=i("#txtCompiledUrl"),bi=i("#btnCompile"),yr=i("#btnDell"),dt=i("#btnTranslator"),pr=i("#btnNext"),wr=i("#btnPrev"),gt=i("#drpContexts"),br=i("#btnGetMetaData"),ki=i("#divCache"),ni=i("#divIsLogOnService"),di=i("#chkCheckIn"),gi=i("#txtComment"),nr=$.asModalManager.get({url:$.asModalManager.urls.sourceManager}),tr=$.asModalManager.get({url:$.asModalManager.urls.sourceComparator}),ir=i("#divEditor"),st=0,ti=0,ii=0,kr="",y=0,ht=0,ri=!1,ut="",ct,lt,u=null,at=!1,ui=!1,e=0,p=[],o=null,vt=null,f={},yt={},rr,fi={},dr=!0,gr='<table id="grvData" class="table table-condensed table-hover table-striped table-responsive"><thead><tr><\/tr><\/thead><tbody><\/tbody><\/table>';tr.asModal({width:1200});nr.asModal({width:800});hi.asModal({width:800});wt.asWindow({focusedId:"txtFind"});et.asModal({backdrop:"static",keyboard:!1});r.asCodeEditor();ur=function(){return $.asAjaxTask({url:$.asInitService($.asUrls.security_Role_getAllByOtherLanguage,[{name:"@lang",value:$.asLang}])})};gt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"MasterDataKeyValue.Id"},parentDataField:{name:"MasterDataKeyValue.ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"MasterDataKeyValue.PathOrUrl",displayDataField:"Name",orderby:"MasterDataKeyValue.Order",url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId,[{name:"@typeId",value:1039},{name:"@lang",value:$.asLang}])},parentMode:"uniq"});hr.asAfterTasks([ur()],function(n){w.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}});k.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}});b.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Role.Id"},parentDataField:{name:"Role.ParentId"},childrenDataField:"Children",isLeafDataField:"Role.IsLeaf",removeChildLessParent:!0},valueDataField:"Role.Id",displayDataField:"Name",orderby:"Role.Order",localData:n}})},{overlayClass:"as-overlay-relative"});s.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"MasterDataKeyValue.Id"},parentDataField:{name:"MasterDataKeyValue.ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId,[{name:"@typeId",value:1001},{name:"@lang",value:$.asLang}]),displayDataField:"Name",valueDataField:"MasterDataKeyValue.Id",orderby:"MasterDataKeyValue.Order"},selectParents:!0});a.asValidate("validator").addMethod("regex",function(n,t,i){var r=new RegExp(i);return this.optional(t)||r.test(n)},"شناسه می تواند شامل اعدا حروف و . و _ و - باشد و با . یا - یا _ شروع نمی شود");fr={txtCode:{required:!0},txtUrl:{required:!0},txtServiceId:{required:!0},txtName:{required:!0,maxlength:128},txtDescription:{maxlength:256},txtId:{maxlength:32,regex:"^[A-Za-z0-9][A-Za-z0-9_\\-\\.]*$"},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0}};rr=a.asValidate({rules:fr});er=function(){var t=function(){u=$.asGetQueryString();u!==null&&($.asTemp[u]=$.asTemp[u]||{},$.asTemp[u].serviceJavascriptQueryEditor=$.asTemp[u].serviceJavascriptQueryEditor||"",$.asTemp[u].serviceJavascriptQueryEditor!==""&&$.asStorage.setItem("serviceJavascriptQueryEditor"+u,$.asTemp[u].serviceJavascriptQueryEditor))},ei;$(l).on($.asEvent.page.beforeSendAjaxRequest,function(n,t){t.url&&vr.val(t.url)});$(l).on($.asEvent.page.ready,function(){r.asCodeEditor("focus");et.asModal("show")});$(l).on($.asEvent.page.queryStringChange,function(){t();vt===null&&(vt=setInterval(or,5e3));sr()});ei=function(n,t){tr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceComparator)},{name:"@isModal",value:!0}]),{editorCode:r.asCodeEditor("getValue"),sourceControlCode:n,fileName:t})};$(l).on("compare",function(n,t){ir.asAjax({url:$.asInitService($.asUrls.develop_service_getWebPageChange,[{name:"@changeId",value:t},{name:"@codeId",value:y}]),type:"get",success:function(n){ei(n,c.val()+".js")}},{validate:!1,overlayClass:"as-overlay-absolute"})});$(l).on("changeSetSelected",function(n,t){ir.asAjax({url:$.asInitService($.asUrls.develop_service_getChange,[{name:"@changeId",value:t},{name:"@codeId",value:y}]),type:"get",success:function(n){r.asCodeEditor("setValue",n)}},{validate:!1,overlayClass:"as-overlay-absolute"})});i("#btnSourceControl").click(function(){nr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceManager)},{name:"@isModal",value:!0}]),{parent:l,selectEvent:"changeSetSelected",compareEvent:"compare",getUrl:$.asInitService($.asUrls.develop_service_getChanges,[{name:"@codeGuid",value:c.val()}])})});h.on("input",function(){h.val().toLowerCase().indexOf("odata/")===0||h.val().toLowerCase().indexOf("odata/")===1?(ki.hide(),h.val().toLowerCase().indexOf("?")>-1?ni.hide():ni.show()):(ki.show(),ni.show())});br.click(function(){gt.asDropdown("selected")?r.asAjax({url:gt.asDropdown("selected").value,type:"get",dataType:"xml",success:function(n){r.asCodeEditor("setValue",r.asCodeEditor("getValue")+" /*"+n.childNodes[0].innerHTML+"*/")}},{validate:!1,overlayClass:"as-overlay-absolute"}):$.asShowMessage({template:"error",message:"ابتدا یک متا دیتا را انتخاب نمایید  "})});i("#btnEditorResize").click(function(){fr()});var ur=function(){o.asCodeEditor("toggleCommentLines")},n=function(){o.asCodeEditor("find",ci.val(),{backwards:!1,wrap:!1,range:pi.is(":checked")===!0?o.asCodeEditor("getSelectionRange"):null,caseSensitive:ai.is(":checked"),wholeWord:vi.is(":checked"),regExp:yi.is(":checked")})},fr=function(){i("#"+o.prop("id")+"_container").toggleClass("editor-fullscreen");o.toggleClass("editor-fullHeight");o.asCodeEditor("resize")},er=function(){u=$.asGetQueryString();u!==null&&r===o&&o.asCodeEditor("setValue",$.asStorage.getItem("serviceJavascriptQueryEditor"+u))},hr=function(){u=$.asGetQueryString();u!==null&&r.asCodeEditor("setValue",$.asStorage.getItem("serviceJavascriptQueryEditor"+u))};r.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){wt.asWindow("show")},readOnly:!0});r.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){ur()},readOnly:!1});r.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){fr()},readOnly:!1});wr.click(function(){ui=!0;e=e===0?p.length-1:e;r.asCodeEditor("editor").gotoLine(p[e]);e>1&&e--});pr.click(function(){ui=!0;e=e===0?p.length-1:e;r.asCodeEditor("editor").gotoLine(p[e]);e<p.length-1&&e++});r.asCodeEditor("editor").getSession().on("change",function(){e=p.length-1});r.asCodeEditor("editor").on("focus",function(){o=r;tu("کوئری");ui=!1});r.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){p.push(r.asCodeEditor("editor").selection.getCursor().row)});rt.change(function(){i("#divSlidingExpirationTimeInMinutes").prop("disabled",!this.checked)});v.change(function(){this.checked===!0?ri===!0?($.asShowMessage({template:"error",message:"امکان افزودن سرویس جدید به یک سرویس دیگر وجود ندارد"}),v.prop("checked",!1)):(c.prop("disabled",!1),f.Id=y,y=0,f.Isleaf=ri,f.ParentId=ht,ht=0,f.RowVersion=ut,ut="",f.JsCode=r.asCodeEditor("getValue"),r.asCodeEditor("setValue",""),f.Name=d.val(),d.val(""),f.Description=g.val(),g.val(""),f.Code=it.val(),it.val(""),f.PathOrUrl=h.val(),h.val(""),h.trigger("input"),f.Guid=c.val(),f.NewGuid=ct,c.val(ct),f.NewId=lt,wi.val(lt),f.Version=kt.val(),kt.val("0"),f.Order=tt.val(),tt.val(""),f.EnableCache=rt.prop("checked"),rt.prop("checked",!1),f.EditMode=ft.prop("checked"),ft.prop("checked",!1),f.Status=ot.prop("checked"),ot.prop("checked",!1),f.ViewRoleId=st,w.asDropdown("selectValue",[],!0),f.AccessRoleId=ii,k.asDropdown("selectValue",[],!0),f.ModifyRoleId=ti,b.asDropdown("selectValue",[],!0)):pt(f)});i("#btnFindWindow").click(function(){wt.asWindow("show")});ci.on("input",function(){n()});ai.change(function(){n()});vi.change(function(){n()});yi.change(function(){n()});pi.change(function(){n()});i("#btnRecovery").click(function(){er()});i("#btnReplace").click(function(){o.asCodeEditor("replace",li.val())});i("#btnReplaceAll").click(function(){o.asCodeEditor("replaceAll",li.val())});i("#btnToggleComment").click(function(){ur()});i("#btnFindNext").click(function(){o.asCodeEditor("findNext")});i("#btnFindPrev").click(function(){o.asCodeEditor("findPrevious")});i("#btnCancelRestor").click(function(){et.asModal("hide");sr();u=$.asGetQueryString();u!==null&&(t(),vt=setInterval(or,5e3))});i("#btnRestorPerviousEditors").click(function(){et.asModal("hide");hr()});bi.click(function(){bi.button("loading");var n=" var log = function(data){ $('"+nt+"').find('#btnCompile').button('reset'); var isFirstGrid = "+dr+";var $grvData;  if(!isFirstGrid){$grvData =$('"+nt+"').find('#grvData');$grvData.asBootGrid('destroy');} $('#divResult').html('"+gr+"'); $grvData =$('"+nt+"').find('#grvData'); if(data){if(data.results){if(data.results[0]){if(data.results[0].value){$.asConsole.dir(data.results[0].value[0]);var index=0;$.each(data.results[0].value[0],function(i,v){  $grvData.find('thead tr').append('<th data-header-align=\"center\" data-align = \"center\" data-column-id=\"' + i + '\" data-order=\"desc\" data-css-class=\"ltr\" ' + '>' + i + '<\/th>');index++;});}}}}; if(data){if(data.results){if(data.results[0]){if(data.results[0].value){ var dataArr = []; for (var i = 0; i < data.results[0].value.length; i++) { dataArr.push(data.results[0].value[i])};$grvData.asBootGrid({caseSensitive:false,rowCount:[-1],source:{localData:dataArr}});}}}}}; ";eval(n+r.asCodeEditor("getValue"))});yr.click(function(){s.asDropdown("selected")?a.asAjax({url:$.asUrls.develop_service_delete,data:JSON.stringify({Id:s.asDropdown("selected").value}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7});s.asDropdown("removeItem")}},{$form:a}):$.asShowMessage({template:"error",message:"برای حذف یک سرویس را انتخاب نمایید"})});cr.click(function(){var n,t,i,f;s.asDropdown("selected")&&(v.is(":checked")?(i=ct,t=s.asDropdown("selected").value,n=lt):(i=c.val(),n=s.asDropdown("selected").value,t=ht));bt.is(":checked")===!1&&v.is(":checked")&&(fi[n]=!0);w.asDropdown("selected")&&(st=w.asDropdown("selected").value);b.asDropdown("selected")&&(ti=b.asDropdown("selected").value);k.asDropdown("selected")&&(ii=k.asDropdown("selected").value);f=r.asCodeEditor("getValue");$.asTemp[u].serviceJavascriptQueryEditor=f;a.asAjax({url:$.asUrls.develop_service_save,data:JSON.stringify({Id:n,ParentId:t,Url:h.val(),Key:si.is(":checked")?1:0,ViewRoleId:st,ModifyRoleId:ti,AccessRoleId:ii,Code:it.val(),JsCode:f,Name:d.val(),Description:g.val(),Guid:i,Order:tt.val(),Status:ot.is(":checked"),EnableCache:rt.is(":checked"),EditMode:ft.is(":checked"),IsLeaf:bt.is(":checked"),IsNew:v.is(":checked"),CheckIn:di.is(":checked"),Comment:gi.val(),SlidingExpirationTimeInMinutes:ar.val(),RowVersion:ut}),success:function(t){if(v.is(":checked")){var i=!1;fi[yt.value]&&(i=!0,delete fi[yt.value]);s.asDropdown("addItem",{text:d.val(),value:n},yt,i)}pt(t,!1);$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:a})});s.on("change",function(n,t){yt=t;dt.removeClass("disabled");dt.prop("disabled",!1);at===!1&&typeof t.value!="undefined"&&$.asSetQueryString(t.value)});dt.click(function(){hi.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.translator)},{name:"@isModal",value:!0}]),{type:"masterDataKeyValue",id:y,name:d.val(),description:g.val()})});oi=function(){window.clearInterval(vt);rr.destroy()}};er();var ei=function(){$.asNotFound("Service")},nu=function(n){at=!0;s.asDropdown("selectValue",[],!0);s.asDropdown("selectValue",n);st=0;kr="";ut="";a.asAjax({url:$.asInitService($.asUrls.develop_service_get,[{name:"@id",value:n}]),type:"get",error:function(){at=!1},success:function(n){$.isArray(n)?n.length>0?pt(n):ei():n!=null?typeof n!="undefined"?pt(n):ei():ei();at=!1}})},or=function(){$.asStorage.setItem("serviceJavascriptQueryEditor"+u,r.asCodeEditor("getValue"))},tu=function(n){lr.html(n)},pt=function(n,t){console.dir(n);typeof t=="undefined"&&(t=!0);gi.val("");di.prop("checked",!1);c.prop("disabled",!0);v.prop("checked",!1);y=n.Id;wi.val(y);ht=n.ParentId;ut=n.RowVersion;bt.prop("checked",n.IsLeaf);ri=n.IsLeaf;t===!0&&(n.JsCode!=null?r.asCodeEditor("setValue",n.JsCode):r.asCodeEditor("setValue",""));i("#divLastModifiUser").html(n.LastModifieUser);i("#divLastModifiLocalDataTime").html(n.LastModifieLocalDateTime);d.val(n.Name);n.Description!=null?g.val(n.Description):g.val("");n.Code!==null?it.val(n.Code):it.val("");n.PathOrUrl!==null?h.val(n.PathOrUrl):h.val("");h.trigger("input");c.val(n.Guid);ct=n.NewGuid;lt=n.NewId;kt.val(n.Version);n.Order!==null?tt.val(n.Order):tt.val("");si.prop("checked",n.Key===1?!0:!1);rt.prop("checked",n.EnableCache);ft.prop("checked",n.EditMode);ot.prop("checked",n.Status);n.ViewRoleId!==null?w.asDropdown("selectValue",n.ViewRoleId):w.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?k.asDropdown("selectValue",n.AccessRoleId):k.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?b.asDropdown("selectValue",n.ModifyRoleId):b.asDropdown("selectValue",[],!0)},sr=function(){if(u=$.asGetQueryString(),u!==null){var n=u.split("/");nu(n[0])}};$(nt).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})