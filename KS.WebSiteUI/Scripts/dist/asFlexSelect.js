﻿(function(n){"use strict";n.fn.asFlexSelect=function(t,i){var e=n.as(this),u,s,r,h,f=this,o,c;if(n.type(t)==="string"){if(t==="setItem")return o=f.selector.split(" "),n(o[0]).find(f.selector.replace(o[0],"").substring(1)).find(" ."+e.data("mainClass")).find(".dropdown-toggle").html(i)}else c=function(t){var o,i;e.html("");t.length>0&&(n.asSort({array:t,order:u.order,orderby:u.orderby,type:u.datatype}),h=n.asFindItemInJsonArray(t,r.selectedSearchKey,r.selectedItemKey,r.selectedValue),o={menu:t},r=n.extend({transform:{levelZero:{tag:"div","class":r.mainClass,html:r.selectedItemtemplate.replace(new RegExp("@selectedText","g"),h),children:function(){return json2html.transform(this,r.transform.levelOne)}},levelOne:{tag:"ul","class":"dropdown-menu",children:function(){return json2html.transform(this.menu,r.transform.levelTwo)}},levelTwo:{tag:"li",html:function(){return r.itemTemplate.replace(new RegExp("@value","g"),this[u.valueDataField]).replace(new RegExp("@text","g"),this[u.displayDataField]).replace(new RegExp("@url","g"),this[u.urlDataField]).replace(new RegExp("@id","g"),this[u.idDataField]).replace(new RegExp("@extera","g"),this[u.exteraDataField])}}}},r),e.json2html(o,r.transform.levelZero));e.data("mainClass",r.mainClass);i=f.selector.split(" ");n(i[0]).find(f.selector.replace(i[0],"").substring(1)).find(" ."+r.mainClass+" ul li .as-flex-select-link").off();n(i[0]).find(f.selector.replace(i[0],"").substring(1)).find(" ."+r.mainClass+" ul li .as-flex-select-link").click(function(){n(i[0]).find(f.selector.replace(i[0],"").substring(1)).trigger("selectedIndexChanged",[n.as(this).data("id"),n.as(this).data("value"),n.as(this).data("text"),n.as(this).data("url"),n.as(this).data("extera")])})},u=n.extend({datatype:"json",order:"asc",orderby:"order",displayDataField:"text",valueDataField:"id",urlDataField:"url",idDataField:"id",exteraDataField:"extera",loadComplete:c,page:f},t.source),s=n.extend({extraSettings:{loadingText:n.asWaitingViewSmall,overlayClass:"as-overlay-relative"}},t.dataAdepter),u.orderbyDesc&&(u.orderby=u.orderbyDesc),r=n.extend({mainClass:"btn-group",selectedItemtemplate:'<a class="btn btn-defaults dropdown-toggle" href="#" data-toggle="dropdown"><img src="@selectedText" /> <span class="caret"><\/span><\/a>',itemTemplate:'<div class="as-flex-select-link" data-extera="@extera" data-text="@text" data-id="@id" data-value="@value" data-url="@url"><img src="@url">&nbsp;@text<\/div>',selectedSearchKey:"country",selectedItemKey:"flagUrl",selectedValue:"ایران"},t),e.html('<div style="width: 15px;height: 15px"><\/div>'),e.asDataAdepter(u,s);return this}})(jQuery)