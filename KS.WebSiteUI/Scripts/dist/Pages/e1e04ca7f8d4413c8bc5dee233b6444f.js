﻿$("#ie1e04ca7f8d4413c8bc5dee233b6444f").on($.asEvent.page.loaded,function(n,t,i){var o="#ie1e04ca7f8d4413c8bc5dee233b6444f",s=".ie1e04ca7f8d4413c8bc5dee233b6444f."+$.asPageClass,r=function(n){var t=new $.as({pageId:s});return t.as(n)},g=function(){},k,y,d;$(o).on($.asEvent.page.dispose,function(){g()});$.asUrls=$.extend({develop_code_os_dotNet_getOutputVersionNumbers:"/develop/code/os/dotnet/GetOutputVersionNumbers/@codeId",develop_code_os_dotNet_getDllByTypeId:"/odata/cms/MasterDataKeyValues?$filter=((ForeignKey1%20eq%20null)%20or%20(ForeignKey1%20eq%20@typeIdd))%20and%20(TypeId%20eq%201041d)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_getNamespaceAndClassesAndMethodsByDllId:"/odata/cms/MasterDataKeyValues?$filter=((((ForeignKey1%20eq%20752d)%20or%20(ForeignKey1%20eq%20753d))%20or%20(ForeignKey1%20eq%20754d))%20and%20(TypeId%20eq%201041d))%20and%20(ForeignKey2%20eq%20@dllIdd)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_runUnitTestMethod:"/develop/code/os/dotnet/RunUnitTestMethod",develop_code_os_dotNet_getUnitTestMethods:"/develop/code/os/dotnet/GetUnitTestMethods/@dllId/@dllVersion/@codeId"},$.asUrls);var nt=$(s),p=r("#frmUnitTest"),w=r("#txtParameterValue"),tt=r("#btnExecute"),b=r("#drpUnitTestDll"),f=r("#drpDllVersion"),e=r("#drpDllCodes"),h=r("#drpMethods"),c="",l="",u=0,a=0,v=0,it;b.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},url:$.asInitService($.asUrls.develop_code_os_dotNet_getDllByTypeId,[{name:"@typeId",value:979}]),displayDataField:"Name",valueDataField:"Id",orderby:"Order"},multiple:!1,selectParents:!1});k={drpDllCodes:{asType:"asDropdown",required:!0},drpUnitTestDll:{asType:"asDropdown",required:!0},drpDllVersion:{asType:"asDropdown",required:!0}};it=p.asValidate({rules:k});y=function(){e.asDropdown("init","First, select an assembly",{source:{hierarchy:{type:"flat",keyDataField:{name:"Id"},parentDataField:{name:"ParentId"},removeChildLessParent:!1},displayDataField:"Name",valueDataField:"Id",orderby:"Order"},selectParents:!0});h.asDropdown("init"," First, select an code",{source:{displayDataField:"Name",valueDataField:"Name",orderby:"Name"}});f.asDropdown("init","First, select an assembly",{source:{displayDataField:"Value",valueDataField:"Id",orderby:"Id"}});w.val("")};d=function(){$(o).on($.asEvent.modal.reopen,function(n,t){i=t;y()});var n=function(n){return $.asAjaxTask({url:n})},t=function(){u>0&&r("#divDllCodes").asAfterTasks([n($.asInitService($.asUrls.develop_code_os_dotNet_getNamespaceAndClassesAndMethodsByDllId,[{name:"@dllId",value:u}]))],function(n){e.asDropdown("reload",{localData:n})},{overlayClass:"as-overlay-absolute-no-height"})},s=function(){u>0&&r("#divDllVersions").asAfterTasks([n($.asInitService($.asUrls.develop_code_os_dotNet_getOutputVersionNumbers,[{name:"@codeId",value:u}]))],function(n){f.asDropdown("reload",{localData:n})},{overlayClass:"as-overlay-absolute-no-height"})},k=function(){v>0&&r("#divMethods").asAfterTasks([n($.asInitService($.asUrls.develop_code_os_dotNet_getUnitTestMethods,[{name:"@dllId",value:u},{name:"@dllVersion",value:a},{name:"@codeId",value:v}]))],function(n){var t=[];$.each(n,function(n,i){t.push({Name:i})});h.asDropdown("reload",{localData:t})},{overlayClass:"as-overlay-absolute-no-height"})};f.on("change",function(n,t){a=t.value});h.on("change",function(n,t){if(t.value.indexOf("=>")>0){var i=t.value.split("=>");l=i[0];c=i[1]}else l="",c=t.value});e.on("change",function(n,t){t&&(v=t.value)});f.on("change",function(n,t){t&&k()});b.on("change",function(n,i){i&&(u=i.value,t(),s())});tt.on("click",function(){nt.asAjax({url:$.asUrls.develop_code_os_dotNet_runUnitTestMethod,data:JSON.stringify({CodeId:e.asDropdown("selected").value,DllVersion:a,Parameter:w.val(),MethodeName:c,ClassName:l}),success:function(n){$.asShowMessage({message:n})}},{$form:p,validate:!0,overlayClass:"as-overlay-absolute"})});$(o).on($.asEvent.page.ready,function(){y()})};d();$(s).append('<span id="asRegisterPage"><\/span>');r("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})