﻿$("#i7e4e4c8fc91c4d3fa7b8b59212f26668").on($.asEvent.page.loaded,function(n,t,i){var f="#i7e4e4c8fc91c4d3fa7b8b59212f26668",e=".i7e4e4c8fc91c4d3fa7b8b59212f26668."+$.asPageClass,u=function(n){var t=new $.as({pageId:e});return t.as(n)},c=function(){},h;$(f).on($.asEvent.page.dispose,function(){c()});$.asUrls=$.extend({cms_localFilePath_GetByOtherLanguagesAndTypeCodeByPaging:"/odata/cms/LocalFilePaths?$filter=(FilePath%2FTypeCode%20eq%20@typeCoded)%20and%20(Language%20eq%20'@lang')&$orderby=@orderby&$skip=@skip&$top=@top&$expand=FilePath&$select=FilePath%2FId%2CName%2CDescription%2CFilePath%2FUrl%2CFilePath%2FGuid%2CFilePath%2FStatus%2CFilePath%2FSize&$inlinecount=allpages"},$.asUrls);var o=$(e),l=u("#btnCancel"),a=u("#btnSelect"),r,s;u("#grvPath").asBootGrid({rowCount:[5,10,25,50,100],source:{url:""},requestHandler:function(n){var t="Name desc",i=0;return n.current>1&&(i=(n.current-1)*n.rowCount),$.each(n.sort,function(n,i){t=n.replace(".","/")+" "+i}),n.url=$.asInitService($.asUrls.cms_localFilePath_GetByOtherLanguagesAndTypeCodeByPaging,[{name:"@lang",value:$.asLang},{name:"@typeCode",value:1},{name:"@orderby",value:t},{name:"@skip",value:i},{name:"@top",value:n.rowCount}]),n},formatters:{Url:function(n,t){return"<img src='"+($.asThumbnailPath+(t.FilePath?t.FilePath.Url:t.Url)).replace("//","/").replace("~","")+"' alt='Smiley face'>"},Id:function(n,t){return t.FilePath?t.FilePath.Id:t.Id}},selection:!0,rowSelect:!0}).on("selected.rs.jquery.asBootGrid",function(n,t){r=t[0].FilePath.Url;s=t[0].FilePath.Id}).on("deselected.rs.jquery.asBootGrid",function(){r=""});h=function(){$(f).on($.asEvent.modal.reopen,function(n,t){(t.parent!==i.parent||t.event!==i.event)&&(i=t)});$(f).on($.asEvent.page.ready,function(){});l.on("click",function(){o.asModal("hide")});a.on("click",function(){r!==""&&typeof r!="undefined"?(i&&$(i.parent).trigger(i.event,[r,s]),o.asModal("hide")):$.asShowMessage({template:"error",message:"No Path Selected"})})};h();$(e).append('<span id="asRegisterPage"><\/span>');u("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})