﻿$("#iaf26bbce21214cd6b3fd21eba4d0596a").on($.asEvent.page.loaded,function(n,t,i){var e="#iaf26bbce21214cd6b3fd21eba4d0596a",v=".iaf26bbce21214cd6b3fd21eba4d0596a."+$.asPageClass,r=function(n){var t=new $.as({pageId:v});return t.as(n)},w=function(){},p;$(e).on($.asEvent.page.dispose,function(){w()});$.asUrls=$.extend({develop_code_os_dotNet_publishDll:"/develop/code/os/dotnet/publishDll",develop_code_os_dotNet_dellOutputDll:"/develop/code/os/dotnet/dellOutputDll",develop_code_os_dotNet_getOutputs:"/develop/code/os/dotnet/GetetOutputs/@codeId/@orderBy/@skip/@take",develop_code_os_dotNet_addOutputDll:"/develop/code/os/dotnet/addOutputDll",develop_code_os_dotNet_viewDllBuildLog:"/develop/code/os/dotnet/ViewDllBuildLog/@name/@codeId"},$.asUrls);var y=$(v),tt=r("#frmAddOrAupdate"),it=r("#txtPath"),rt=r("#txtDescription"),ut=r("#btnCancel"),ft=r("#btnSelect"),s=r("#btnPublish"),h=r("#btnNew"),d=r("#btnDell"),f=r("#grvOutputs"),b=$.asModalManager.get({url:$.asModalManager.urls.fileSelector}),c=r("#winLog"),g=r("#btnViewLog"),k=r("#txtLog"),o={items:{}},u="";if(s.hide(),h.hide(),b.asModal({width:800}),c.asModal({width:800}),p=function(n,t){n.type==="selected"?o.items[t[0].Name]={Id:t[0].Name}:delete o.items[t[0].Name]},i){u=i.codeId;f.asBootGrid({rowCount:[10,25,50,100],source:{url:""},requestHandler:function(n){if(u!==""){var t="PathOrUrl desc",i=0;return n.current>1&&(i=(n.current-1)*n.rowCount),$.each(n.sort,function(n,i){t=n+" "+i}),n.url=$.asInitService($.asUrls.develop_code_os_dotNet_getOutputs,[{name:"@codeId",value:u},{name:"@take",value:n.rowCount},{name:"@skip",value:i},{name:"@orderby",value:t}]),o.items={},n}},selection:!0,rowSelect:!0}).on("selected.rs.jquery.asBootGrid",function(n,t){p(n,t)}).on("deselected.rs.jquery.asBootGrid",function(n,t){p(n,t)})}var l=function(){var n=[];return $.each(o.items,function(t,i){n.push(i.Id)}),n},a=function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration});o.items={};f.asBootGrid("deselect")},nt=function(){var n=function(){i.showPublishButton?s.show():s.hide();i.showAddOutputButton?h.show():h.hide()};$(e).on($.asEvent.modal.reopen,function(t,r){(r.codeId!==i.codeId||r.codePath!==i.codePath||r.showPublishButton!==i.showPublishButton||r.showAddOutputButton!==i.showAddOutputButton)&&(i=r,u=i.codeId,n(),f.asBootGrid("reload"))});$(e).on($.asEvent.page.ready,function(){n()});$(e).on("fileSelected",function(n,t,i,r){y.asAjax({url:$.asUrls.develop_code_os_dotNet_addOutputDll,data:JSON.stringify({Id:u,Path:t,Name:r}),success:function(n){f.asBootGrid("append",[n]);a()}},{validate:!1,overlayClass:"as-overlay-absolute"})});g.click(function(){var n=l();n.length===1?(k.val(""),c.asModal("show"),c.asAjax({url:$.asInitService($.asUrls.develop_code_os_dotNet_viewDllBuildLog,[{name:"@codeId",value:u},{name:"@name",value:n[0]}]),type:"get",success:function(n){k.val(n);a()}},{overlayClass:"as-overlay-absolute"})):$.asShowMessage({template:"error",message:"  You must select an output to view the build report"})});r("#btnCancel").click(function(){c.asModal("hide")});s.click(function(){var n=l();n.length===1?y.asAjax({url:$.asUrls.develop_code_os_dotNet_publishDll,data:JSON.stringify({Id:u,Name:n[0]}),success:function(){a()}},{validate:!1,overlayClass:"as-overlay-absolute"}):$.asShowMessage({template:"error",message:"To publish only one output must be selected"})});h.click(function(){b.asModal("load",$.asInitService($.asFormUrl,[{name:"@url",value:$.asUrlAsParameter($.asModalManager.urls.fileSelector)},{name:"@isModal",value:!0}]),{path:i.codePath,parent:e,event:"fileSelected"})});d.click(function(){if(u!==""){var n=l();n.length>=1?y.asAjax({url:$.asUrls.develop_code_os_dotNet_dellOutputDll,data:JSON.stringify({Id:u,SelectedOutputs:l()}),success:function(){f.asBootGrid("remove");a()}},{validate:!1,overlayClass:"as-overlay-absolute"}):$.asShowMessage({template:"error",message:"At least one output must be selected"})}else $.asShowMessage({template:"error",message:" The code id is unclear"})});w=function(){f.asBootGrid("destroy")}};nt();$(v).append('<span id="asRegisterPage"><\/span>');r("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})