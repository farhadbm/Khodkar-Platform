﻿$("#i8fdd153f29da46818e3be6eded27d705").on($.asEvent.page.loaded,function(n,t){var b="#i8fdd153f29da46818e3be6eded27d705",k=".i8fdd153f29da46818e3be6eded27d705."+$.asPageClass,i=function(n){var t=new $.as({pageId:k});return t.as(n)},d=function(){},w,vt,ct;$(b).on($.asEvent.page.dispose,function(){d()});$.asUrls=$.extend({cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20'@lang')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",develop_reports_ActionLog_GetById:"/develop/reports/ActionLog/GetById/@id",develop_reports_ActionLog_Delete:"/develop/reports/ActionLog/delete",develop_reports_ActionLog_GetByServiceIdAndPagination:"/develop/reports/ActionLog/GetByServiceIdAndPagination/@orderBy/@skip/@take/@serviceId/@user/@fromDateTime/@toDateTime"},$.asUrls);var h=i("#btnDell"),lt=i("#btnDetail"),c=i("#winDetail"),r=i("#grvLog"),u={items:{}},g=i("#divIsSuccessed"),nt=i("#divName"),tt=i("#divDataTime"),it=i("#divParameters"),rt=i("#divType"),ut=i("#divUrlReferrer"),ft=i("#divRequest"),et=i("#divCookies"),ot=i("#divIsMobileMode"),st=i("#divIp"),ht=i("#divIsDebugMode"),l=i("#fromDateInput"),a=i("#toDateInput"),o=i("#fromTimeInput"),s=i("#toTimeInput"),y=i("#drpService"),p=i("#txtNameOrUrlOrUser"),at=i("#btnSearch"),f="!",e="!",v=0;l.asDateTimeInput({type:"calendar",calendar:{params:{height:"30px",width:"190px"}},theme:"public",layout:"ltr"});a.asDateTimeInput({type:"calendar",calendar:{params:{height:"30px",width:"190px"}},theme:"public",layout:"ltr"});o.asDateTimeInput({type:"time",theme:"public"});s.asDateTimeInput({type:"time",theme:"public"});c.asModal({width:800});w=function(n,t){n.type==="selected"?u.items[t[0].Id]={Id:t[0].Id,Type:t[0].Type,Name:t[0].Name,serviceId:t[0].serviceId,User:t[0].User,LocalDateTime:t[0].LocalDateTime,Url:t[0].Url,ExecutionTimeInMilliseconds:t[0].ExecutionTimeInMilliseconds}:delete u.items[t[0].Id]};y.asDropdown({source:{hierarchy:{type:"flat",keyDataField:{name:"MasterDataKeyValue.Id"},parentDataField:{name:"MasterDataKeyValue.ParentId"}},url:$.asInitService($.asUrls.cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId,[{name:"@typeId",value:1001},{name:"@lang",value:$.asLang}]),displayDataField:"Name",valueDataField:"MasterDataKeyValue.Id",orderby:"MasterDataKeyValue.Order"},selectParents:!0});r.asBootGrid({rowCount:[10,25,50,100,-1],source:{url:""},requestHandler:function(n){if(v>0){var t="Id desc",i=0;return n.current>1&&(i=(n.current-1)*n.rowCount),$.each(n.sort,function(n,i){t=n+" "+i}),n.url=$.asInitService($.asUrls.develop_reports_ActionLog_GetByServiceIdAndPagination,[{name:"@orderby",value:t},{name:"@skip",value:i},{name:"@serviceId",value:v},{name:"@take",value:n.rowCount},{name:"@user",value:$.asUrlAsParameter(p.val()===""?"!":p.val())},{name:"@fromDateTime",value:e==="!"?"!":e.replace(":","_")},{name:"@toDateTime",value:f==="!"?"!":f.replace(":","_")}]),u.items={},r.asBootGrid("deselect"),n}return null},selection:!0,rowSelect:!0,multiSelect:!0}).on("selected.rs.jquery.asBootGrid",function(n,t){w(n,t)}).on("deselected.rs.jquery.asBootGrid",function(n,t){w(n,t)});vt=function(){$.asNotFound(" خطا")};ct=function(){$(b).on($.asEvent.page.ready,function(){});var t=function(){nt.empty();tt.empty();it.empty();et.empty();ft.empty();ut.empty();rt.empty();g.empty();ht.empty();st.empty();ot.empty()},n=function(){$.asShowMessage({message:$.asRes[$.asLang].successOpration});u.items={};r.asBootGrid("deselect")};y.on("change",function(n,t){t.selected&&(v=t.value,console.dir(v),r.asBootGrid("reload"))});i("#btnRemoveFilte").click(function(){y.asDropdown("selectValue",[],!0);p.val("");f="!";s.asDateTimeInput("setTime","");e="!";o.asDateTimeInput("setTime","");toDateInput="!";a.asDateTimeInput("setDate","");fromTimeInput="!";l.asDateTimeInput("setDate","")});at.click(function(){a.asDateTimeInput("getDate").length>0&&(f=a.asDateTimeInput("getDate")+(s.asDateTimeInput("getTime")!==""?" "+s.asDateTimeInput("getTime")+"_00":" "+s.asDateTimeInput("getTime")+"23_59_59"));l.asDateTimeInput("getDate").length>0&&(e=l.asDateTimeInput("getDate")+(o.asDateTimeInput("getTime")!==""?" "+o.asDateTimeInput("getTime")+"_00":" "+o.asDateTimeInput("getTime")+"00_00_00"));r.asBootGrid("reload")});lt.click(function(){var i=[];$.each(u.items,function(n,t){i.push(t)});i.length===1?(t(),c.asModal("show"),c.asAjax({url:$.asInitService($.asUrls.develop_reports_ActionLog_GetById,[{name:"@id",value:i[0].Id}]),type:"get",success:function(t){var i,r;nt.html(t.Name);tt.html(t.DateTime);it.html(t.Parameters);i="";t.Coockies!=null&&$.each(t.Coockies.split(";"),function(n,t){i+=n+" : "+t+" <br>"});et.html(i);r="";t.Request!==null&&t.Request&&$.each(t.Request.split(";"),function(n,t){r+=n+" : "+t+" <br>"});ft.html(r);ut.html(t.UrlReferrer);rt.html(t.Type);st.html(t.Ip);ht.html(t.IsDebugMode?"Yes":"No");ot.html(t.IsMobileMode?"Yes":"No");g.html(t.IsSuccessed?"Yes":"No");n()}},{overlayClass:"as-overlay-absolute"})):$.asShowMessage({template:"error",message:" Select a log to view"})});h.click(function(){var t=[];$.each(u.items,function(n,i){t.push(i.Id)});t.length>=1?(r.asAjax({url:$.asUrls.develop_reports_ActionLog_Delete,data:JSON.stringify({Ids:t}),error:function(){h.button("reset")},success:function(){h.button("reset");r.asBootGrid("remove");n()}},{validate:!1}),h.button("loading")):$.asShowMessage({template:"error",message:"   To remove at least one log must be selected "})});i("#btnCancel").click(function(){c.asModal("hide")});d=function(){r.asBootGrid("destroy")}};ct();$(k).append('<span id="asRegisterPage"><\/span>');i("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})