﻿$("#id52586a8d61447ba88d3c736c9c9cc3a").on($.asEvent.page.loaded,function(n,t){var w="#id52586a8d61447ba88d3c736c9c9cc3a",ir=".id52586a8d61447ba88d3c736c9c9cc3a."+$.asPageClass,i=function(n){var t=new $.as({pageId:ir});return t.as(n)},rr=function(){},tu,iu,d,ru;$(w).on($.asEvent.page.dispose,function(){rr()});$.asUrls=$.extend({cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@idd)&$select=Id%2CParentId%2CCode%2COrder%2CName",develop_code_os_dotNet_getDll:"/odata/cms/MasterDataKeyValues?$filter=((((ForeignKey1%20eq%20null)%20or%20(ForeignKey1%20eq%20756d))%20or%20(ForeignKey1%20eq%20757d))%20or%20(ForeignKey1%20eq%20758d))%20and%20(TypeId%20eq%201041d)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_get:"/develop/code/os/dotnet/Get/@id",develop_code_os_dotNet_save:"/develop/code/os/dotnet/Save",develop_code_os_dotNet_dell:"/develop/code/os/dotnet/delete",develop_code_os_dotNet_getChanges:"/develop/code/os/dotnet/GetChanges/@codeId/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_os_dotNet_getChange:"/develop/code/os/dotnet/GetChange/@changeId/@codeId",develop_code_os_dotNet_dllCompile:"/develop/code/os/dotnet/dllCcompile",develop_code_os_dotNet_getOutputVersions:"/develop/code/os/dotnet/GetOutputVersions/@codeId",develop_code_os_dotNet_debugCode:"/develop/code/os/dotnet/debugCode"},$.asUrls);var c=i("#frmDotNet"),eu=i("#divRoles"),r=i("#edrDotNet"),g=i("#drpViewRole"),nt=i("#drpModifyRole"),tt=i("#drpAccessRole"),l=i("#drpCodes"),lt=i("#drpDependency"),it=i("#txtName"),ou=i("#btnSave"),gt=i("#chkEditeMode"),wi=i("#divFind"),ur=$.asModalManager.get({url:$.asModalManager.urls.translator}),fr=$.asModalManager.get({url:$.asModalManager.urls.fileManager}),er=i("#txtFind"),or=i("#txtReplace"),sr=i("#chkFindCase"),hr=i("#chkFindWhole"),cr=i("#chkFindExp"),lr=i("#chkFindSelect"),ef=i("#editorToolbar"),su=i("#lblEditor"),rt=i("#txtDescription"),at=i("#txtOrder"),ni=i("#winRestorEditor"),b=i("#txtId"),ar=i("#txtCodeId"),ut=i("#chkNew"),vt=i("#txtCode"),ti=i("#chkStatus"),bi=i("#txtVersion"),ii=i("#btnCompileMain"),hu=i("#btnCompileWhitoutDependemcy"),cu=i("#btnCompileByDependemcy"),lu=i("#btnDell"),yt=i("#btnOutputManager"),vr=i("#winOutputManager"),yr=i("#winWcfManager"),pr=i("#winEfMigrationGenerator"),wr=i("#winDebugManager"),ki=i("#btnTranslator"),au=i("#btnNext"),vu=i("#btnPrev"),ft=i("#drpEditors"),of=i("#divCache"),br=i("#chkCheckIn"),kr=i("#txtComment"),dr=$.asModalManager.get({url:$.asModalManager.urls.sourceManager}),gr=$.asModalManager.get({url:$.asModalManager.urls.sourceComparator}),v=i("#divEditor"),et=i("#drpType"),pt=i("#divDll"),ot=i("#txtPlaceHolder"),ri=i("#divPlaceHolder"),st=i("#chkIsDirectory"),ui=i("#drpDllStorPlace"),fi=i("#btnManageCode"),ht=i("#drpVersion"),wt=i("#divVersion"),ei=i("#chkChangeClose"),yu=i("#btnDebug"),pu=i("#btnKhodkarBreakpoint"),wu=i("#btnVsBreakpoint"),bu=i("#btnDebugManager"),ku=i("#btnWcfManager"),du=i("#btnEfMigrationGenerator"),gu=i("#btnSnippetInstanceWcfService"),nf=i("#btnSnippetConfigurationMigration"),ct=0,o=0,bt=[],tf,u,a,y,kt=0,oi=0,si=0,di="",p=0,hi=0,dt="",ci,li,e=null,ai=!1,gi=!1,s=0,k=[],h=null,vi=null,f={},yi={},nu,nr={};fi.hide();yt.hide();ii.hide();pt.hide();ri.hide();v.hide();fr.asModal({width:800});yr.asModal({width:800});pr.asModal({width:800});vr.asModal({width:800});wr.asModal({width:800});gr.asModal({width:1200});dr.asModal({width:800});ur.asModal({width:800});wi.asWindow({focusedId:"txtFind"});ni.asModal({backdrop:"static",keyboard:!1});r.asCodeEditor({mode:"csharp"});tu=function(){return $.asAjaxTask({url:$.asUrls.security_Role_getAllByDefaultsLanguage})};et.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1043}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!1});ht.asDropdown("init"," ابتدا کد را انتخاب نمایید",{source:{displayDataField:"Value",valueDataField:"Id",orderby:"Id"}});ft.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId,[{name:"@typeId",value:1030},{name:"@id",value:196}]),displayDataField:"Name",valueDataField:"Code",orderby:"Order"},selectParents:!1});eu.asAfterTasks([tu()],function(n){g.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});tt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}});nt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},childrenDataField:"Children",removeChildLessParent:!0},valueDataField:"Id",displayDataField:"Description",orderby:"Order",localData:n}})},{overlayClass:"as-overlay-relative"});l.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1041}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!0});lt.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.develop_code_os_dotNet_getDll,[]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},multiple:!0,selectParents:!1});ui.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId,[{name:"@typeId",value:1044}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},multiple:!1,selectParents:!1});c.asValidate("validator").addMethod("regex",function(n,t,i){var r=new RegExp(i);return this.optional(t)||r.test(n)},"شناسه می تواند شامل اعدا حروف و . و _ و - باشد و با . یا - یا _ شروع نمی شود");iu={txtCode:{required:!0},txtPlaceHolder:{required:{depends:function(n){return $(n).is(":visible")}}},txtCodeId:{required:!0},txtName:{required:!0,maxlength:128},txtDescription:{maxlength:256},txtId:{maxlength:32,regex:"^[A-Za-z0-9][A-Za-z0-9_\\-\\.]*$"},drpType:{asType:"asDropdown",required:{depends:function(){return i("#divType").is(":visible")}}},drpEditors:{asType:"asDropdown",required:{depends:function(){return pt.is(":visible")}}},drpDllStorPlace:{asType:"asDropdown",required:{depends:function(){return pt.is(":visible")}}},drpVersion:{asType:"asDropdown",required:{depends:function(){return wt.is(":visible")}}},drpViewRole:{asType:"asDropdown",required:!0},drpAccessRole:{asType:"asDropdown",required:!0},drpModifyRole:{asType:"asDropdown",required:!0}};nu=c.asValidate({rules:iu});d=function(){u===756||u===757||u===758||u===979?(pt.show(),y===811?yt.hide():yt.show(),y===812?wt.show():wt.hide(),u===757||u===979?(ii.show(),fi.hide()):(ii.hide(),fi.show()),ri.hide(),u!==757&&u!==979?v.hide():v.show()):(pt.hide(),yt.hide(),ii.hide(),wt.hide(),u===null?ri.hide():ri.show())};ru=function(){var pt=function(){e=$.asGetQueryString();e!==null&&($.asTemp[e]=$.asTemp[e]||{},$.asTemp[e].serviceJavascriptQueryEditor=$.asTemp[e].serviceJavascriptQueryEditor||"",$.asTemp[e].serviceJavascriptQueryEditor!==""&&$.asStorage.setItem("serviceJavascriptQueryEditor"+e,$.asTemp[e].serviceJavascriptQueryEditor))},wt,t;$(w).on($.asEvent.page.ready,function(){ft.asDropdown("selectValue","csharp");r.asCodeEditor("focus");ni.asModal("show")});$(w).on($.asEvent.page.queryStringChange,function(){pt();vi===null&&(vi=setInterval(uu,5e3));fu()});ft.on("change",function(n,t){r.asCodeEditor("setEditorMode",t.value);a=t.value==="csharp"?197:198});ui.on("change",function(n,t){y=t.value;d()});et.on("change",function(n,t){et.asDropdown("selected")&&(u=t.value,d())});wt=function(n,t){gr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceComparator)},{name:"@isModal",value:!0}]),{editorCode:r.asCodeEditor("getValue"),sourceControlCode:n,fileName:t})};$(w).on("compare",function(n,t){v.asAjax({url:$.asInitService($.asUrls.develop_code_os_dotNet_getChange,[{name:"@changeId",value:t},{name:"@codeId",value:p}]),type:"get",success:function(n){wt(n,b.val()+(a===197?".cs":".vb"))}},{validate:!1,overlayClass:"as-overlay-absolute"})});$(w).on("changeSetSelected",function(n,t){v.asAjax({url:$.asInitService($.asUrls.develop_code_os_dotNet_getChange,[{name:"@changeId",value:t},{name:"@codeId",value:p}]),type:"get",success:function(n){r.asCodeEditor("setValue",n)}},{validate:!1,overlayClass:"as-overlay-absolute"})});fi.click(function(){l.asDropdown("selected")?fr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.fileManager)},{name:"@isModal",value:!0}]),{path:di,urlParentId:1008}):$.asShowMessage({template:"error",message:"هیچ کدی انتخاب نشده است"})});i("#btnSourceControl").click(function(){dr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.sourceManager)},{name:"@isModal",value:!0}]),{parent:w,selectEvent:"changeSetSelected",compareEvent:"compare",getUrl:$.asInitService($.asUrls.develop_code_os_dotNet_getChanges,[{name:"@codeId",value:p}])})});i("#btnEditorResize").click(function(){ri()});var ii=function(){h.asCodeEditor("toggleCommentLines")},n=function(){h.asCodeEditor("find",er.val(),{backwards:!1,wrap:!1,range:lr.is(":checked")===!0?h.asCodeEditor("getSelectionRange"):null,caseSensitive:sr.is(":checked"),wholeWord:hr.is(":checked"),regExp:cr.is(":checked")})},ri=function(){i("#"+h.prop("id")+"_container").toggleClass("editor-fullscreen");h.toggleClass("editor-fullHeight");h.asCodeEditor("resize")},tr=function(){e=$.asGetQueryString();e!==null&&r===h&&h.asCodeEditor("setValue",$.asStorage.getItem("serviceJavascriptQueryEditor"+e))},ir=function(){e=$.asGetQueryString();e!==null&&r.asCodeEditor("setValue",$.asStorage.getItem("serviceJavascriptQueryEditor"+e))};r.asCodeEditor("editor").commands.addCommand({name:"Find",bindKey:{win:"Ctrl-F",mac:"Command-F"},exec:function(){wi.asWindow("show")},readOnly:!0});r.asCodeEditor("editor").commands.addCommand({name:"CommentToggel",bindKey:{win:"Ctrl-K",mac:"Command-K"},exec:function(){ii()},readOnly:!1});r.asCodeEditor("editor").commands.addCommand({name:"fullScreen",bindKey:{win:"Ctrl-L",mac:"Command-L"},exec:function(){ri()},readOnly:!1});vu.click(function(){gi=!0;s=s===0?k.length-1:s;r.asCodeEditor("editor").gotoLine(k[s]);s>1&&s--});au.click(function(){gi=!0;s=s===0?k.length-1:s;r.asCodeEditor("editor").gotoLine(k[s]);s<k.length-1&&s++});r.asCodeEditor("editor").getSession().on("change",function(){s=k.length-1});r.asCodeEditor("editor").on("focus",function(){h=r;ff("دات نت");gi=!1});r.asCodeEditor("editor").getSession().selection.on("changeCursor",function(){k.push(r.asCodeEditor("editor").selection.getCursor().row)});st.change(function(){this.checked===!0?(i("#divType").hide(),v.hide()):(i("#divType").show(),u!==756&&u!==758?v.show():v.hide())});ut.change(function(){this.checked===!0?(st.prop("checked",!1),st.trigger("change"),b.prop("disabled",!1),f.Id=p,p=0,f.ParentId=hi,hi=0,f.RowVersion=dt,dt="",f.DotNetCode=r.asCodeEditor("getValue"),r.asCodeEditor("setValue",""),f.Name=it.val(),it.val(""),f.Description=rt.val(),rt.val(""),f.Code=vt.val(),vt.val(""),f.SecondCode=ot.val(),ot.val(""),f.Guid=b.val(),f.NewGuid=ci,b.val(ci),f.NewId=li,ar.val(li),f.Version=bi.val(),bi.val("0"),f.ForeignKey1=u,u=null,et.asDropdown("selectValue",[],!0),d(null),f.ForeignKey3=a,f.Key=y,f.Order=at.val(),at.val(""),f.EditMode=gt.prop("checked"),gt.prop("checked",!1),f.Status=ti.prop("checked"),ti.prop("checked",!1),f.EnableCache=ei.prop("checked"),ei.prop("checked",!1),ct=0,f.SlidingExpirationTimeInMinutes=ht.asDropdown("selected").value,ht.asDropdown("selectValue",[],!0),f.ViewRoleId=kt,g.asDropdown("selectValue",[],!0),f.AccessRoleId=si,tt.asDropdown("selectValue",[],!0),f.ModifyRoleId=oi,nt.asDropdown("selectValue",[],!0)):pi(f)});i("#btnFindWindow").click(function(){wi.asWindow("show")});er.on("input",function(){n()});sr.change(function(){n()});hr.change(function(){n()});cr.change(function(){n()});lr.change(function(){n()});i("#btnRecovery").click(function(){tr()});i("#btnReplace").click(function(){h.asCodeEditor("replace",or.val())});i("#btnReplaceAll").click(function(){h.asCodeEditor("replaceAll",or.val())});i("#btnToggleComment").click(function(){ii()});i("#btnFindNext").click(function(){h.asCodeEditor("findNext")});i("#btnFindPrev").click(function(){h.asCodeEditor("findPrevious")});i("#btnCancelRestor").click(function(){ni.asModal("hide");fu();e=$.asGetQueryString();e!==null&&(pt(),vi=setInterval(uu,5e3))});i("#btnRestorPerviousEditors").click(function(){ni.asModal("hide");ir()});t=function(n){u===756||u===757||u===758||u===979?c.asAjax({url:$.asUrls.develop_code_os_dotNet_dllCompile,data:JSON.stringify({Id:o,ByDependency:n}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:c}):$.asShowMessage({template:"error",message:"  امکان کامپایل فقط برای نوع اسمبلی وجود دارد"})};hu.click(function(){t(!1)});cu.click(function(){t(!0)});yu.click(function(){c.asAjax({url:$.asUrls.develop_code_os_dotNet_debugCode,data:JSON.stringify({Id:o}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:c})});nf.click(function(){a===197?r.asCodeEditor("insert","\n//you must refrence EntityFramework.dll and EntityFramework.SqlServer.dll\n\n//you must use System.Data.Entity.Migrations\n\ninternal sealed class Configuration : DbMigrationsConfiguration<full namespace qualified dbContext Name>\n\n{\n\n public Configuration()\n\n {\n\n AutomaticMigrationsEnabled = false;\n\n }\n\n protected override void Seed(full namespace qualified dbContext Name context)\n\n {\n\n }\n\n}\n"):r.asCodeEditor("insert","\n''you must refrence EntityFramework.dll and EntityFramework.SqlServer.dll\n\n'//you must use System.Data.Entity.Migrations\n\nNotInheritable Class Configuration Inherits DbMigrationsConfiguration(Of full namespace qualified dbContext Name)\n\nPublic Sub New()\n\nMyBase.New\n\nAutomaticMigrationsEnabled = false\n\nEnd Sub\n\nProtected Overrides Sub Seed(ByVal context As full namespace qualified dbContext Name)\n\nEnd Sub\n\nEnd Class\n")});gu.click(function(){a===197?r.asCodeEditor("insert",'\n//you must refrence System.dll and System.ServiceModel.dll and System.Runtime.Serialization.dll\n\n//you must use System.Net; and System.ServiceModel; and System.ServiceModel.Description;\n\n//replace WCFInterface by your wcf Interface\n\npublic WCFInterface CreateWCFInterface()\n\n{\n\n//create the binding\n\n var binding = new BasicHttpBinding();\n\n//configure the binding\n\n//if your wcf service is windows authenticate uncomment below line\n\n//binding.Security.Mode = BasicHttpSecurityMode.TransportCredentialOnly;\n\n//binding.Security.Transport.ClientCredentialType = HttpClientCredentialType.Ntlm;\n\nbinding.Security.Mode = BasicHttpSecurityMode.None;\n\nbinding.Security.Transport.ClientCredentialType = HttpClientCredentialType.None;\n\n//if (you want set proxy for connection) uncomment below line\n\n//binding.ProxyAddress = new Uri(string.Format("http://{0}:{1}", "samplePoroxy.yourDomain.com", "port"));\n\n//binding.BypassProxyOnLocal = true;\n\n//binding.UseDefaultWebProxy = false;\n\nbinding.CloseTimeout = TimeSpan.Parse("00:05:00");\n\nbinding.SendTimeout = TimeSpan.Parse("00:05:00");\n\nbinding.MaxBufferSize = 999999999;\n\nbinding.MaxReceivedMessageSize = 999999999;\n\nbinding.ReaderQuotas.MaxArrayLength = 2147483647;\n\nbinding.ReaderQuotas.MaxBytesPerRead = 2147483647;\n\nbinding.ReaderQuotas.MaxDepth = 2147483647;\n\nbinding.ReaderQuotas.MaxNameTableCharCount = 2147483647;\n\nbinding.ReaderQuotas.MaxStringContentLength = 2147483647;\n\nvar endpointAddress = new EndpointAddress("WCF webService Url");\n\nvar channelFactory = new ChannelFactory<WCFInterface>(binding, endpointAddress);\n\n// if you need to windows auth by another user uncomment below line \n\n// if (channelFactory.Credentials != null)\n\n//  channelFactory.Credentials.Windows.ClientCredential =\n\n//   new NetworkCredential("username", "password", "domain");\n\nforeach (var operation in channelFactory.Endpoint.Contract.Operations)\n\n{\n\nvar behavior = operation.Behaviors.Find<DataContractSerializerOperationBehavior>();\n\nif (behavior != null)\n\n{\n\n behavior.MaxItemsInObjectGraph = 2147483647;\n\n}\n\n}\n\n//create the channel\n\nreturn channelFactory.CreateChannel();\n\n}\n'):r.asCodeEditor("insert","\n''you must refrence System.dll and System.ServiceModel.dll and System.Runtime.Serialization.dll\n\n'you must use System.Net; and System.ServiceModel; and System.ServiceModel.Description;\n\n'replace WCFInterface by your wcf Interface\n\nPublic Function CreateWCFInterface() As WCFInterface\n\n'create the binding\n\nDim binding = New BasicHttpBinding\n\n'configure the binding\n\n'if your wcf service is windows authenticate uncomment below line\n\n'binding.Security.Mode = BasicHttpSecurityMode.TransportCredentialOnly\n\n'binding.Security.Transport.ClientCredentialType = HttpClientCredentialType.Ntlm\n\nbinding.Security.Mode = BasicHttpSecurityMode.None\n\nbinding.Security.Transport.ClientCredentialType = HttpClientCredentialType.None\n\n'if you want set proxy for connection uncomment below line\n\n'binding.ProxyAddress = New Uri(String.Format(\"http://{0}:{1}\", \"samplePoroxy.yourDomain.com\", \"port\"))\n\n'binding.BypassProxyOnLocal = true\n\n'binding.UseDefaultWebProxy = false\n\n\n\nbinding.CloseTimeout = TimeSpan.Parse(\"00:05:00\")\n\nbinding.SendTimeout = TimeSpan.Parse(\"00:05:00\")\n\nbinding.MaxBufferSize = 999999999\n\nbinding.MaxReceivedMessageSize = 999999999\n\nbinding.ReaderQuotas.MaxArrayLength = 2147483647\n\nbinding.ReaderQuotas.MaxBytesPerRead = 2147483647\n\n binding.ReaderQuotas.MaxDepth = 2147483647\n\nbinding.ReaderQuotas.MaxNameTableCharCount = 2147483647\n\nbinding.ReaderQuotas.MaxStringContentLength = 2147483647\n\nDim endpointAddress = New EndpointAddress(\"WCF webService Url\")\n\nDim channelFactory = New ChannelFactory(Of WCFInterface)(binding, endpointAddress)\n\n' if you need to windows auth by another user uncomment below line \n\n' If (Not (channelFactory.Credentials) Is Nothing) Then\n\n'channelFactory.Credentials.Windows.ClientCredential = New NetworkCredential(\"username\", \"password\", \"domain\")\n\n'End If\n\nFor Each operation In channelFactory.Endpoint.Contract.Operations\n\n Dim behavior = operation.Behaviors.Find(Of DataContractSerializerOperationBehavior)\n\nIf (Not (behavior) Is Nothing) Then\n\nbehavior.MaxItemsInObjectGraph = 2147483647\n\nEnd If\n\nNext\n\n'create the channel\n\nReturn channelFactory.CreateChannel\n\n End Function\n")});wu.click(function(){a===197?r.asCodeEditor("insert","\n//you Must Refrence KS.Core.dll\n#if DEBUG\n//check client login by debug mode\nif (KS.Core.UI.Setting.Settings.IsDebugMode)\n{\nSystem.Diagnostics.Debugger.Break();\n}\n#endif\n"):r.asCodeEditor("insert","\n'you Must Refrence KS.Core.dll\n#If DEBUG Then\n'check client login by debug mode\nIf KS.Core.UI.Setting.Settings.IsDebugMode Then\nSystem.Diagnostics.Debugger.Break()\nEnd If\n#End If\n")});pu.click(function(){o!==0?a===197?r.asCodeEditor("insert","\n//you Must Refrence KS.Core.dll\n#if DEBUG\n//check client login by debug mode\nif (KS.Core.UI.Setting.Settings.IsDebugMode)\n{\n//new Debugger\nvar debugger =\nnew KS.Core.CodeManager.Os.DotNet.Debugger(new KS.Core.FileSystemProvide.FileSystemManager());\n//log sample Object\nvar addedDebugInfo = debugger.AddOrUpdateDebugInfo(new KS.Core.Model.Develop.DebugInfo()\n{ CodeId = "+o+', Data = debugger.SerializeObjectToJobjectString(new Object()), IntegerValue = 1 }, "@asCodePath");\n//read debug by debugId\nvar readedDebugInfo = debugger.GetDebugInfo(addedDebugInfo.Id, "@asCodePath");\n//get all debugs\nvar allDebugsOfCodeId = debugger.GetDebugInfos("@asCodePath", '+o+");\n//you can use linq query on allDebugsOfCodeId\n var selectedDebug = allDebugsOfCodeId.Where(dbg => dbg.IntegerValue == 1).FirstOrDefault();\n}\n#endif\n"):r.asCodeEditor("insert","\n'you Must Refrence KS.Core.dll\n#If DEBUG Then\n'check client login by debug mode\nIf KS.Core.UI.Setting.Settings.IsDebugMode Then\n'new Debugger\nDim debugger As KS.Core.CodeManager.Os.DotNet.Base.IDebugger =\nNew KS.Core.CodeManager.Os.DotNet.Debugger(New KS.Core.FileSystemProvide.FileSystemManager())\n'log sample Object\nDim addedDebugInfo = debugger.AddOrUpdateDebugInfo(New KS.Core.Model.Develop.DebugInfo() With\n{.CodeId = "+o+', .Data = debugger.SerializeObjectToJobjectString(New Object()), .IntegerValue = 1}, "@asCodePath")\n\'read debug by debugId\nDim readedDebugInfo = debugger.GetDebugInfo(addedDebugInfo.Id, "@asCodePath")\n\'get all debugs\nDim allDebugsOfCodeId = debugger.GetDebugInfos("@asCodePath", '+o+")\n'you can use linq query on allDebugsOfCodeId\nDim selectedDebug = allDebugsOfCodeId.Where(Function(dbg) dbg.IntegerValue = 1).FirstOrDefault()\nEnd If\n#End If\n"):$.asShowMessage({template:"error",message:"  ابتدا یک کد را انتخاب نمایید"})});ku.click(function(){yr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter("fa/admin/develop/codes/os/dotnet/wcf-manager")},{name:"@isModal",value:!0}]))});du.click(function(){o!==0?pr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter("fa/admin/develop/codes/os/dotnet/ef-migration-generator")},{name:"@isModal",value:!0}]),{codeId:o}):$.asShowMessage({template:"error",message:"  ابتدا یک کد را انتخاب نمایید"})});yt.click(function(){o!==0?vr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter("fa/admin/develop/codes/os/dotnet/output-manager")},{name:"@isModal",value:!0}]),{parent:w,codeId:o,codePath:di,showPublishButton:y===813,showAddOutputButton:u!==757&&u!==979}):$.asShowMessage({template:"error",message:"  ابتدا یک کد را انتخاب نمایید"})});bu.click(function(){o!==0?wr.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter("fa/admin/develop/codes/os/dotnet/debug-manager/")},{name:"@isModal",value:!0}]),{codeId:o}):$.asShowMessage({template:"error",message:"  ابتدا یک کد را انتخاب نمایید"})});lu.click(function(){l.asDropdown("selected")?c.asAjax({url:$.asUrls.develop_code_os_dotNet_dell,data:JSON.stringify({Id:o}),success:function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7});l.asDropdown("removeItem")}},{$form:c}):$.asShowMessage({template:"error",message:" برای حذف یک کد را انتخاب نمایید"})});ou.click(function(){var n,t,i,f;l.asDropdown("selected")&&(ut.is(":checked")?(i=ci,t=o,n=li):(i=b.val(),n=o,t=hi));ut.is(":checked")&&(nr[n]=!0);g.asDropdown("selected")&&(kt=g.asDropdown("selected").value);nt.asDropdown("selected")&&(oi=nt.asDropdown("selected").value);tt.asDropdown("selected")&&(si=tt.asDropdown("selected").value);f=r.asCodeEditor("getValue");$.asTemp[e].serviceJavascriptQueryEditor=f;bt=[];lt.asDropdown("selected")&&$.each(lt.asDropdown("selected"),function(n,t){t.selected&&bt.push(t.value)});c.asAjax({url:$.asUrls.develop_code_os_dotNet_save,data:JSON.stringify({Id:n,ParentId:t,SecondCode:ot.val(),ViewRoleId:kt,ModifyRoleId:oi,AccessRoleId:si,Code:vt.val(),DotNetCode:f,Name:it.val(),Description:rt.val(),Guid:i,DependentDlls:bt,Order:at.val(),Status:ti.is(":checked"),EditMode:gt.is(":checked"),IsLeaf:!1,IsNew:ut.is(":checked"),CheckIn:br.is(":checked"),Comment:kr.val(),ForeignKey1:u,ForeignKey3:a,Key:y,SlidingExpirationTimeInMinutes:ct,EnableCache:ei.is(":checked"),RowVersion:dt}),success:function(t){if(ut.is(":checked")){var i=!1;nr[yi.value]&&(i=!0,delete nr[yi.value]);l.asDropdown("addItem",{text:it.val(),value:n},yi,i)}pi(t,!1);$.asShowMessage({message:$.asRes[$.asLang].successOpration,showTime:1e7})}},{$form:c})});ht.on("change",function(n,t){ct=t.value});l.on("change",function(n,t){yi=t;o=t.value;ki.removeClass("disabled");ki.prop("disabled",!1);ai===!1&&typeof t.value!="undefined"&&$.asSetQueryString(t.value)});ki.click(function(){ur.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.translator)},{name:"@isModal",value:!0}]),{type:"masterDataKeyValue",id:p,name:it.val(),description:rt.val()})});rr=function(){window.clearInterval(vi);nu.destroy()}};ru();var tr=function(){$.asNotFound("کد")},rf=function(n){return $.asAjaxTask({url:n})},uf=function(n){ai=!0;o=n;l.asDropdown("selectValue",[],!0);l.asDropdown("selectValue",n);kt=0;dt="";c.asAjax({url:$.asInitService($.asUrls.develop_code_os_dotNet_get,[{name:"@id",value:n}]),type:"get",error:function(){ai=!1},success:function(n){$.isArray(n)?n.length>0?pi(n):tr():n!=null?typeof n!="undefined"?pi(n):tr():tr();ai=!1}})},uu=function(){$.asStorage.setItem("serviceJavascriptQueryEditor"+e,r.asCodeEditor("getValue"))},ff=function(n){su.html(n)},pi=function(n,t){typeof t=="undefined"&&(t=!0);kr.val("");br.prop("checked",!1);b.prop("disabled",!0);ut.prop("checked",!1);p=n.Id;di=n.Path;ar.val(p);hi=n.ParentId;dt=n.RowVersion;tf=n.FileName;t===!0&&(n.DotNetCode!=null?r.asCodeEditor("setValue",n.DotNetCode):r.asCodeEditor("setValue",""));i("#divLastModifiUser").html(n.LastModifieUser);i("#divLastModifiLocalDataTime").html(n.LastModifieLocalDateTime);it.val(n.Name);n.Description!=null?rt.val(n.Description):rt.val("");n.Code!==null?vt.val(n.Code):vt.val("");n.SecondCode!==null?ot.val(n.SecondCode):ot.val("");ot.trigger("input");b.val(n.Guid);ci=n.NewGuid;li=n.NewId;bi.val(n.Version);ct=n.SlidingExpirationTimeInMinutes;n.Order!==null?at.val(n.Order):at.val("");gt.prop("checked",n.EditMode);ti.prop("checked",n.Status);ei.prop("checked",n.EnableCache);u=n.ForeignKey1;n.ForeignKey1!==null?(et.asDropdown("selectValue",n.ForeignKey1),d(),st.prop("checked",!1),i("#divType").show()):(et.asDropdown("selectValue",[],!0),d(),st.prop("checked",!0),i("#divType").hide());bt=[];lt.asDropdown("selectValue",[],!0);n.DependentDlls!=null&&(n.DependentDlls.length!=0&&lt.asDropdown("selectValue",n.DependentDlls),bt=n.DependentDlls);a=n.ForeignKey3;n.ForeignKey3!==null?n.ForeignKey3===197?ft.asDropdown("selectValue","csharp"):ft.asDropdown("selectValue","vbscript"):ft.asDropdown("selectValue",[],!0);y=n.Key;(u===756||u===757||u===758||u===979)&&y===812&&wt.asAfterTasks([rf($.asInitService($.asUrls.develop_code_os_dotNet_getOutputVersions,[{name:"@codeId",value:o}]))],function(n){ht.asDropdown("reload",{localData:n});ht.asDropdown("selectValue",[ct===0?null:ct])},{overlayClass:"as-overlay-absolute"});n.Key!==null?ui.asDropdown("selectValue",n.Key):ui.asDropdown("selectValue",[],!0);d();n.ViewRoleId!==null?(g.asDropdown("selectValue",n.ViewRoleId),kt=n.ViewRoleId):g.asDropdown("selectValue",[],!0);n.AccessRoleId!=null?(tt.asDropdown("selectValue",n.AccessRoleId),si=n.AccessRoleId):tt.asDropdown("selectValue",[],!0);n.ModifyRoleId!=null?(nt.asDropdown("selectValue",n.ModifyRoleId),oi=n.ModifyRoleId):nt.asDropdown("selectValue",[],!0);st.trigger("change")},fu=function(){if(e=$.asGetQueryString(),e!==null){var n=e.split("/");uf(n[0])}};$(ir).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})