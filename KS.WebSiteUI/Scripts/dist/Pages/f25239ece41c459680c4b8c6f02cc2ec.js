﻿$("#if25239ece41c459680c4b8c6f02cc2ec").on($.asEvent.page.loaded,function(n,t,i){var y="#if25239ece41c459680c4b8c6f02cc2ec",v=".if25239ece41c459680c4b8c6f02cc2ec."+$.asPageClass,r=function(n){var t=new $.as({pageId:v});return t.as(n)},p=function(){},it,b;$(y).on($.asEvent.page.dispose,function(){p()});$.asUrls=$.extend({},$.asUrls);var w=$(v),o=r("#grvChanges"),k=r("#btnSelect"),c=r("#fromDateInput"),l=r("#toDateInput"),s=r("#fromTimeInput"),h=r("#toTimeInput"),d=r("#txtComment"),g=r("#txtUser"),nt=r("#btnSearch"),tt=r("#btnCompare"),u=0,a="",f="!",e="!";c.asDateTimeInput({type:"calendar",calendar:{params:{height:"30px",width:"190px"},name:"gregorian",lang:"en"},theme:"public",layout:"ltr"});l.asDateTimeInput({type:"calendar",calendar:{params:{height:"30px",width:"190px"},name:"gregorian",lang:"en"},theme:"public",layout:"ltr"});s.asDateTimeInput({type:"time",theme:"public"});h.asDateTimeInput({type:"time",theme:"public"});i&&(a=i.getUrl);it=function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration});selectedItems.items={}};o.asBootGrid({rowCount:[10,25,50,100,-1],source:{url:""},requestHandler:function(n){if(a!==""){var t="LocalDateTime desc",i=0;return n.current>1&&(i=(n.current-1)*n.rowCount),$.each(n.sort,function(n,i){t=n+" "+i}),n.url=$.asInitService(a,[{name:"@orderby",value:t},{name:"@skip",value:i},{name:"@take",value:n.rowCount},{name:"@comment",value:"!"},{name:"@user",value:"!"},{name:"@fromDateTime",value:e==="!"?"!":e.replace(":","_")},{name:"@toDateTime",value:f==="!"?"!":f.replace(":","_")}]),u=0,o.asBootGrid("deselect"),n}},selection:!0,rowSelect:!0,multiSelect:!1}).on("selected.rs.jquery.asBootGrid",function(n,t){u=t[0].Id}).on("deselected.rs.jquery.asBootGrid",function(){u=0});b=function(){$(y).on($.asEvent.modal.reopen,function(n,t){(t.getUrl!==i.getUrl||t.parent!==i.parent||t.event!==i.event)&&(i=t,a=i.getUrl,u=0,o.asBootGrid("reload"))});k.click(function(){u!==0&&i?($(i.parent).trigger(i.selectEvent,[u]),w.asModal("hide")):$.asShowMessage({template:"error",message:" No Change Selected"})});r("#btnRemoveFilte").click(function(){g.val("");d.val("");f="!";h.asDateTimeInput("setTime","");e="!";s.asDateTimeInput("setTime","");toDateInput="!";l.asDateTimeInput("setDate","");fromTimeInput="!";c.asDateTimeInput("setDate","")});tt.click(function(){u!==0&&i?($(i.parent).trigger(i.compareEvent,[u]),w.asModal("hide")):$.asShowMessage({template:"error",message:"No Change Selected "})});nt.click(function(){l.asDateTimeInput("getDate").length>0&&(f=l.asDateTimeInput("getDate")+(h.asDateTimeInput("getTime")!==""?" "+h.asDateTimeInput("getTime")+"_00":" "+h.asDateTimeInput("getTime")+"23_59_59"));c.asDateTimeInput("getDate").length>0&&(e=c.asDateTimeInput("getDate")+(s.asDateTimeInput("getTime")!==""?" "+s.asDateTimeInput("getTime")+"_00":" "+s.asDateTimeInput("getTime")+"00_00_00"));o.asBootGrid("reload")});p=function(){o.asBootGrid("destroy")}};b();$(v).append('<span id="asRegisterPage"><\/span>');r("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})