﻿(function(n,t,i){"use strict";function p(t){function r(r){return i.identifier&&n.asGetPropertybyName(r,i.identifier)===n.asGetPropertybyName(t,i.identifier)}var i=this;return this.rows.contains(r)?!1:(this.rows.push(t),!0)}function c(t){var i=this.footer?this.footer.find(t):n(),r=this.header?this.header.find(t):n();return n.merge(i,r)}function u(t){return t?n.extend({},this.cachedParams,{ctx:t}):this.cachedParams}function rt(){var i={current:this.current,rowCount:this.rowCount,sort:this.sortDictionary,searchPhrase:this.searchPhrase},t=this.options.post;return t=n.isFunction(t)?t():t,this.options.requestHandler(n.extend(!0,i,t))}function f(t){return"."+n.trim(t).replace(/\s+/gm,".")}function ut(){this.element.trigger("initialize"+r);et.call(this);this.selection=this.options.selection&&this.identifier!=null;ot.call(this);st.call(this);b.call(this);pt.call(this);ht.call(this);o.call(this);this.element.trigger("initialized"+r)}function ft(){this.options.highlightRows}function w(n){return n.visible}function et(){var t=this,r=this.element.find("thead > tr").first(),i=!1;r.children().each(function(){var f=n(this),r=f.data(),u={id:r.columnId,identifier:t.identifier==null&&r.identifier||!1,converter:t.options.converters[r.converter||r.type]||t.options.converters.string,text:f.text(),align:r.align||"left",headerAlign:r.headerAlign||"left",cssClass:r.cssClass||"",headerCssClass:r.headerCssClass||"",formatter:t.options.formatters[r.formatter]||null,order:!i&&(r.order==="asc"||r.order==="desc")?r.order:null,searchable:!(r.searchable===!1),sortable:!(r.sortable===!1),visible:!(r.visible===!1),visibleInSelection:!(r.visibleInSelection===!1),width:n.isNumeric(r.width)?r.width+"px":typeof r.width=="string"?r.width:null};t.columns.push(u);u.order!=null&&(t.sortDictionary[u.id]=u.order);u.identifier&&(t.identifier=u.id,t.converter=u.converter);t.options.multiSort||u.order===null||(i=!0)})}function o(u){function a(n){for(var t,r=new RegExp(f.searchPhrase,f.options.caseSensitive?"g":"gi"),i=0;i<f.columns.length;i++)if(t=f.columns[i],t.converter.to(n[t.id])!=null){if(t.searchable&&t.visible&&(t.converter.to(n[t.id])+"").search(r)>-1)return!0}else return!1;return!1}function c(n,t){f.currentRows=n;d.call(f,t);f.options.keepSelection||(f.selectedRows=[]);nt.call(f,n);lt.call(f);at.call(f);f.element._bgBusyAria(!1).trigger("loaded"+r)}var f=this,l,o,h,e;this.element._bgBusyAria(!0).trigger("load"+r);bt.call(this);l=function(t){typeof t=="string"&&s.datatype==="json"&&(t=n.parseJSON(t));t=f.options.responseHandler(t);f.current=f.newCurrent;f.beforeSearchCurrent=f.newCurrent;f.rows=t.rows;f.beforeSearchTotal=t.total;c(t.rows,t.total)};s=n.extend({datatype:"json",loadComplete:l,page:y},this.options.source);k=n.extend({error:function(n,t){f.xqr=null;t!=="abort"&&(g.call(f),f.element._bgBusyAria(!1).trigger("loaded"+r))},extraSettings:{loadingText:n.aswaitingViewSmall,overlayClass:"as-overlay-absolute"}},this.options.dataAdepter);this.options.ajax=s.url!==i?!0:!1;(this.options.ajax||s.localData)&&typeof u=="undefined"?(o=rt.call(this),o!==null?(f.newCurrent=o.current,s.url=o.url,n.as(y).asDataAdepter(s,k)):this.element._bgBusyAria(!1)):(e=this.searchPhrase.length>0?this.rows.where(a):this.rows,this.rowCount!==-1&&(e=e.page(this.current,this.rowCount)),this.searchPhrase.length>0?h=e.length:(h=f.beforeSearchTotal,this.current=f.beforeSearchCurrent),t.setTimeout(function(){c(e,h)},10))}function ot(){if(!this.options.ajax){var t=this,i=this.element.find("tbody > tr");i.each(function(){var r=n(this),u=r.children("td"),i={};n.each(t.columns,function(n,t){i[t.id]=t.converter.from(u.eq(n).text())});p.call(t,i)});d.call(this,this.rows.length);v.call(this)}}function d(n){this.total=n;this.totalPages=this.rowCount===-1?1:Math.ceil(this.total/this.rowCount)}function st(){var t=this.options.templates,i=this.element.parent().hasClass(this.options.css.responsiveTable)?this.element.parent():this.element;this.element.addClass(this.options.css.table);this.element.children("tbody").length===0&&this.element.append(t.body);this.options.navigation&1&&(this.header=n(t.header.resolve(u.call(this,{id:this.element._bgId()+"-header"}))),i.before(this.header));this.options.navigation&2&&(this.footer=n(t.footer.resolve(u.call(this,{id:this.element._bgId()+"-footer"}))),i.after(this.footer))}function ht(){var l,v;if(this.options.navigation!==0){var e=this.options.css,y=f(e.actions),s=c.call(this,y);if(s.length>0){var h=this,i=this.options.templates,t=n(i.actions.resolve(u.call(this)));(this.options.ajax||(this.options.source?this.options.source.url!=="undefined":!1))&&(l=i.icon.resolve(u.call(this,{iconCss:e.iconRefresh})),v=n(i.actionButton.resolve(u.call(this,{content:l,text:this.options.labels.refresh}))).on("click"+r,function(n){n.stopPropagation();h.current=1;o.call(h)}),t.append(v));vt.call(this,t);ct.call(this,t);a.call(this,s,t)}}}function ct(t){if(this.options.columnSelection&&this.columns.length>1){var i=this,e=this.options.css,s=this.options.templates,a=s.icon.resolve(u.call(this,{iconCss:e.iconColumns})),c=n(s.actionDropDown.resolve(u.call(this,{content:a}))),l=f(e.dropDownItem),h=f(e.dropDownItemCheckbox),v=f(e.dropDownMenuItems);n.each(this.columns,function(t,a){if(a.visibleInSelection){var y=n(s.actionDropDownCheckboxItem.resolve(u.call(i,{name:a.id,label:a.text,checked:a.visible}))).on("click"+r,l,function(t){var r,u,f;t.stopPropagation();r=n(this);u=r.find(h);u.prop("disabled")||(a.visible=u.prop("checked"),f=i.columns.where(w).length>1,r.parents(v).find(l+":has("+h+":checked)")._bgEnableAria(f).find(h)._bgEnableField(f),i.element.find("tbody").empty(),b.call(i),o.call(i))});c.find(f(e.dropDownMenuItems)).append(y)}});t.append(c)}}function lt(){var r,i,t,e;this.options.navigation!==0&&(r=f(this.options.css.infos),i=c.call(this,r),i.length>0&&(t=this.current*this.rowCount,e=n(this.options.templates.infos.resolve(u.call(this,{end:this.total===0||t===-1||t>this.total?this.total:t,start:this.total===0?0:t-this.rowCount+1,total:this.total}))),a.call(this,i,e)))}function g(){var t=this.element.children("tbody").first(),i=this.options.templates,n=this.columns.where(w).length;this.selection&&(n=n+1);t.html(i.noResults.resolve(u.call(this,{columns:n})))}function at(){var l,s,o,e;if(this.options.navigation!==0&&(l=f(this.options.css.pagination),s=c.call(this,l)._bgShowAria(this.rowCount!==-1),this.rowCount!==-1&&s.length>0)){var b=this.options.templates,t=this.current,r=this.totalPages,i=n(b.pagination.resolve(u.call(this))),v=r-t,y=(this.options.padding-t)*-1,k=v>=this.options.padding?Math.max(y,1):Math.max(y-this.options.padding+v,1),p=this.options.padding*2+1,w=r>=p?p:r;for(h.call(this,i,"first","&laquo;","first")._bgEnableAria(t>1),h.call(this,i,"prev","&lt;","prev")._bgEnableAria(t>1),o=0;o<w;o++)e=o+k,h.call(this,i,e,e,"page-"+e)._bgEnableAria()._bgSelectAria(e===t);w===0&&h.call(this,i,1,1,"page-1")._bgEnableAria(!1)._bgSelectAria();h.call(this,i,"next","&gt;","next")._bgEnableAria(r>t);h.call(this,i,"last","&raquo;","last")._bgEnableAria(r>t);a.call(this,s,i)}}function h(t,i,e,s){var h=this,l=this.options.templates,a=this.options.css,v=u.call(this,{css:s,text:e,page:i}),c=n(l.paginationItem.resolve(v)).on("click"+r,f(a.paginationButton),function(t){var i,r,f,u;t.stopPropagation();t.preventDefault();i=n(this);r=i.parent();r.hasClass("active")||r.hasClass("disabled")||(f={first:1,prev:h.current-1,next:h.current+1,last:h.totalPages},u=i.data("page"),h.current=f[u]||u,o.call(h));i.trigger("blur")});return t.append(c),c}function vt(t){function s(n){return n===-1?i.options.labels.all:n}var i=this,h=this.options.rowCount;if(n.isArray(h)){var e=this.options.css,c=this.options.templates,l=n(c.actionDropDown.resolve(u.call(this,{content:s(this.rowCount)}))),y=f(e.dropDownMenu),p=f(e.dropDownMenuText),a=f(e.dropDownMenuItems),v=f(e.dropDownItemButton);n.each(h,function(t,f){var e=n(c.actionDropDownItem.resolve(u.call(i,{text:s(f),action:f})))._bgSelectAria(f===i.rowCount).on("click"+r,v,function(t){t.preventDefault();var u=n(this),r=u.data("action");r!==i.rowCount&&(i.current=1,i.rowCount=r,u.parents(a).children().each(function(){var t=n(this),i=t.find(v).data("action");t._bgSelectAria(i===r)}),u.parents(y).find(p).text(s(r)),o.call(i))});l.find(a).append(e)});t.append(l)}}function nt(t,i){if(t.length>0){var r=this,e=this.options.css,o=this.options.templates,c=this.element.children("tbody").first(),s=!0,h="";n.each(t,function(t,i){var l="",a=' data-row-id="'+(r.identifier==null?t:n.asGetPropertybyName(i,r.identifier))+'"',f="",c,y,v;r.selection&&(c=n.inArray(n.asGetPropertybyName(i,r.identifier),r.selectedRows)!==-1,y=o.select.resolve(u.call(r,{type:"checkbox",value:n.asGetPropertybyName(i,r.identifier),checked:c})),l+=o.cell.resolve(u.call(r,{content:y,css:e.selectCell})),s=s&&c,c&&(f+=e.selected,a+=' aria-selected="true"'));v=i.status!=null&&r.options.statusMapping[i.status];v&&(f+=v);n.each(r.columns,function(t,f){if(f.visible){var s=n.isFunction(f.formatter)?f.formatter.call(r,f,i):f.converter.to(i[f.id]),h=f.cssClass.length>0?" "+f.cssClass:"";l+=o.cell.resolve(u.call(r,{content:s==null||s===""?"&nbsp;":s,css:(f.align==="right"?e.right:f.align==="center"?e.center:e.left)+h,style:f.width==null?"":"width:"+f.width+";"}))}});f.length>0&&(a+=' class="'+f+'"');h+=o.row.resolve(u.call(r,{attr:a,cells:l}))});r.element.find("thead "+f(r.options.css.selectBox)).prop("checked",s);typeof i!="undefined"?n("#"+this.element._bgId()+" tr:last").after(h):c.html(h);yt.call(this,c)}else g.call(this)}function yt(t){var i=this,u=f(this.options.css.selectBox);if(this.selection)t.off("click"+r,u).on("click"+r,u,function(t){t.stopPropagation();var r=n(this),u=i.converter.from(r.val());r.prop("checked")?i.select([u]):i.deselect([u])});t.off("click"+r,"> tr").on("click"+r,"> tr",function(t){t.stopPropagation();var f=n(this),u=i.identifier==null?f.data("row-id"):i.converter.from(f.data("row-id")+""),e=i.identifier==null?i.currentRows[u]:i.currentRows.first(function(t){return n.asGetPropertybyName(t,i.identifier)===u});i.selection&&i.options.rowSelect&&(f.hasClass(i.options.css.selected)?i.deselect([u]):i.select([u]));i.element.trigger("click"+r,[i.columns,e])})}function pt(){if(this.options.navigation!==0){var o=this.options.css,y=f(o.search),s=c.call(this,y);if(s.length>0){var e=this,p=this.options.templates,h=null,l="",v=f(o.searchField),i=n(p.search.resolve(u.call(this))),w=i.is(v)?i:i.find(v);w.on("keyup"+r,function(i){i.stopPropagation();var r=n(this).val();(l!==r||i.which===13&&r!=="")&&(l=r,(i.which===13||r.length===0||r.length>=e.options.searchSettings.characters)&&(t.clearTimeout(h),h=t.setTimeout(function(){tt.call(e,r)},e.options.searchSettings.delay)))});a.call(this,s,i)}}}function tt(n){this.searchPhrase!==n&&(this.current=1,this.searchPhrase=n,o.call(this,!0))}function b(){var t=this,h=this.element.find("thead > tr"),i=this.options.css,e=this.options.templates,c="",s=this.options.sorting,y,l,a;if(this.selection&&(y=this.options.multiSelect?e.select.resolve(u.call(t,{type:"checkbox",value:"all"})):"",c+=e.rawHeaderCell.resolve(u.call(t,{content:y,css:i.selectCell}))),n.each(this.columns,function(n,r){if(r.visible){var f=t.sortDictionary[r.id],h=s&&f&&f==="asc"?i.iconUp:s&&f&&f==="desc"?i.iconDown:"",l=e.icon.resolve(u.call(t,{iconCss:h})),o=r.headerAlign,a=r.headerCssClass.length>0?" "+r.headerCssClass:"";c+=e.headerCell.resolve(u.call(t,{column:r,icon:l,sortable:s&&r.sortable&&i.sortable||"",css:(o==="right"?i.right:o==="center"?i.center:i.left)+a,style:r.width==null?"":"width:"+r.width+";"}))}}),h.html(c),s){l=f(i.sortable);h.off("click"+r,l).on("click"+r,l,function(i){i.preventDefault();wt.call(t,n(this));v.call(t);o.call(t)})}if(this.selection&&this.options.multiSelect){a=f(i.selectBox);h.off("click"+r,a).on("click"+r,a,function(i){i.stopPropagation();n(this).prop("checked")?t.select():t.deselect()})}}function wt(n){var t=this.options.css,s=f(t.icon),i=n.data("column-id")||n.parents("th").first().data("column-id"),r=this.sortDictionary[i],u=n.find(s),o,e;if(this.options.multiSort||(n.parents("tr").first().find(s).removeClass(t.iconDown+" "+t.iconUp),this.sortDictionary={}),r&&r==="asc")this.sortDictionary[i]="desc",u.removeClass(t.iconUp).addClass(t.iconDown);else if(r&&r==="desc")if(this.options.multiSort){o={};for(e in this.sortDictionary)e!==i&&(o[e]=this.sortDictionary[e]);this.sortDictionary=o;u.removeClass(t.iconDown)}else this.sortDictionary[i]="asc",u.removeClass(t.iconDown).addClass(t.iconUp);else this.sortDictionary[i]="asc",u.addClass(t.iconUp)}function a(t,i){t.each(function(t,r){n(r).before(i.clone(!0)).remove()})}function bt(){var n=this;t.setTimeout(function(){if(n.element._bgAria("busy")==="true"){var f=n.options.templates,e=n.element.children("thead").first(),t=n.element.children("tbody").first(),o=t.find("tr > td").first(),r=n.element.height()-e.height()-(o.height()+20),i=n.columns.where(w).length;n.selection&&(i=i+1);t.html(f.loading.resolve(u.call(n,{columns:i})));n.rowCount!==-1&&r>0&&t.find("tr > td").css("padding","20px 0 "+r+"px")}},250)}function v(){function i(t,r,u){function o(n){return f.order==="asc"?n:n*-1}u=u||0;var e=u+1,f=n[u];return t[f.id]>r[f.id]?o(1):t[f.id]<r[f.id]?o(-1):n.length>e?i(t,r,e):0}var n=[],r,t;if(!this.options.ajax){r=this;for(t in this.sortDictionary)(this.options.multiSort||n.length===0)&&n.push({id:t,order:this.sortDictionary[t]});n.length>0&&this.rows.sort(i)}}var r=".rs.jquery.asBootGrid",s,k,y,e=function(t,i){this.element=n(t);this.origin=this.element.clone();this.options=n.extend(!0,{},e.defaults,this.element.data(),i);var r=this.options.rowCount=this.element.data().rowCount||i.rowCount||this.options.rowCount;this.columns=[];this.current=1;this.newCurrent=1;this.currentRows=[];this.identifier=null;this.selection=!1;this.converter=null;this.rowCount=n.isArray(r)?r[0]:r;this.rows=[];this.searchPhrase="";this.selectedRows=[];this.sortDictionary={};this.total=0;this.beforeSearchTotal=0;this.beforeSearchCurrent=0;this.totalPages=0;this.cachedParams={lbl:this.options.labels,css:this.options.css,ctx:{}};this.header=null;this.footer=null;this.xqr=null},l,it;e.defaults={navigation:3,padding:2,columnSelection:!0,rowCount:[10,25,50,-1],selection:!1,multiSelect:!1,rowSelect:!1,keepSelection:!1,highlightRows:!1,sorting:!0,multiSort:!1,searchSettings:{delay:250,characters:1},ajax:!1,ajaxSettings:{method:"POST"},post:{},url:"",caseSensitive:!0,requestHandler:function(n){return n},responseHandler:function(t){var i={rows:[],total:0};return n.isArray(t)?(i.rows=t,i.total=t.length):i=t,i},converters:{numeric:{from:function(n){return+n},to:function(n){return n+""}},string:{from:function(n){return n},to:function(n){return n}}},css:{actions:"actions btn-group",center:"text-center",columnHeaderAnchor:"column-header-anchor",columnHeaderText:"text",dropDownItem:"dropdown-item",dropDownItemButton:"dropdown-item-button",dropDownItemCheckbox:"dropdown-item-checkbox",dropDownMenu:"dropdown btn-group",dropDownMenuItems:"dropdown-menu pull-right",dropDownMenuText:"dropdown-text",footer:"bootgrid-footer container-fluid",header:"bootgrid-header container-fluid",icon:"icon glyphicon",iconColumns:"glyphicon-th-list",iconDown:"glyphicon-chevron-down",iconRefresh:"glyphicon-refresh",iconSearch:"glyphicon-search",iconUp:"glyphicon-chevron-up",infos:"infos",left:"text-left",pagination:"pagination",paginationButton:"button",responsiveTable:"table-responsive",right:"text-right",search:"search form-group",searchField:"search-field form-control",selectBox:"select-box",selectCell:"select-cell",selected:"active",sortable:"sortable",table:"bootgrid-table table"},formatters:{},labels:{all:n.asRes[n.asLang].bootGrid.all,infos:n.asRes[n.asLang].bootGrid.infos,loading:n.asRes[n.asLang].bootGrid.loading,noResults:n.asRes[n.asLang].bootGrid.noResults,refresh:n.asRes[n.asLang].bootGrid.refresh,search:n.asRes[n.asLang].bootGrid.search},statusMapping:{0:"success",1:"info",2:"warning",3:"danger"},templates:{actionButton:'<button class="btn btn-default" type="button" title="{{ctx.text}}">{{ctx.content}}<\/button>',actionDropDown:'<div class="{{css.dropDownMenu}}"><button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"><span class="{{css.dropDownMenuText}}">{{ctx.content}}<\/span> <span class="caret"><\/span><\/button><ul class="{{css.dropDownMenuItems}}" role="menu"><\/ul><\/div>',actionDropDownItem:'<li><a data-action="{{ctx.action}}" class="{{css.dropDownItem}} {{css.dropDownItemButton}}">{{ctx.text}}<\/a><\/li>',actionDropDownCheckboxItem:'<li><label class="{{css.dropDownItem}}"><input name="{{ctx.name}}" type="checkbox" value="1" class="{{css.dropDownItemCheckbox}}" {{ctx.checked}} /> {{ctx.label}}<\/label><\/li>',actions:'<div class="{{css.actions}}"><\/div>',body:"<tbody><\/tbody>",cell:'<td class="{{ctx.css}}" style="{{ctx.style}}">{{ctx.content}}<\/td>',footer:'<div id="{{ctx.id}}" class="{{css.footer}}"><div class="row"><div class="col-sm-6"><p class="{{css.pagination}}"><\/p><\/div><div class="col-sm-6 infoBar"><p class="{{css.infos}}"><\/p><\/div><\/div><\/div>',header:'<div id="{{ctx.id}}" class="{{css.header}}"><div class="row"><div class="col-sm-12 actionBar"><p class="{{css.search}}"><\/p><p class="{{css.actions}}"><\/p><\/div><\/div><\/div>',headerCell:'<th data-column-id="{{ctx.column.id}}" class="{{ctx.css}}" style="{{ctx.style}}"><a href="javascript:void(0);" class="{{css.columnHeaderAnchor}} {{ctx.sortable}}"><span class="{{css.columnHeaderText}}">{{ctx.column.text}}<\/span>{{ctx.icon}}<\/a><\/th>',icon:'<span class="{{css.icon}} {{ctx.iconCss}}"><\/span>',infos:'<div class="{{css.infos}}">{{lbl.infos}}<\/div>',loading:'<tr><td colspan="{{ctx.columns}}" class="loading">{{lbl.loading}}<\/td><\/tr>',noResults:'<tr><td colspan="{{ctx.columns}}" class="no-results">{{lbl.noResults}}<\/td><\/tr>',pagination:'<ul class="{{css.pagination}}"><\/ul>',paginationItem:'<li class="{{ctx.css}}"><a data-page="{{ctx.page}}" class="{{css.paginationButton}}">{{ctx.text}}<\/a><\/li>',rawHeaderCell:'<th class="{{ctx.css}}">{{ctx.content}}<\/th>',row:"<tr{{ctx.attr}}>{{ctx.cells}}<\/tr>",search:'<div class="{{css.search}}"><div class="input-group"><span class="{{css.icon}} input-group-addon {{css.iconSearch}}"><\/span> <input type="text" class="{{css.searchField}}" placeholder="{{lbl.search}}" /><\/div><\/div>',select:'<input name="select" type="{{ctx.type}}" class="{{css.selectBox}}" value="{{ctx.value}}" {{ctx.checked}} />'}};e.prototype.append=function(n){var i,t;if(this.options.ajax){for(i=[],t=0;t<n.length;t++)p.call(this,n[t])&&i.push(n[t]);nt.call(this,i,!0);this.element.trigger("appended"+r,[i])}else{for(i=[],t=0;t<n.length;t++)p.call(this,n[t])&&i.push(n[t]);v.call(this);ft.call(this,i);o.call(this);this.element.trigger("appended"+r,[i])}return this};e.prototype.clear=function(){if(!this.options.ajax){var t=n.extend([],this.rows);this.rows=[];this.current=1;this.total=0;o.call(this);this.element.trigger("cleared"+r,[t])}return this};e.prototype.destroy=function(){return n(t).off(r),this.options.navigation&1&&this.header.remove(),this.options.navigation&2&&this.footer.remove(),this.element.before(this.origin).remove(),this};e.prototype.reload=function(){return this.current=1,o.call(this),this};e.prototype.remove=function(t){var s,e,f,u,i;if(this.identifier!=null)if(s=this,this.options.ajax){for(t=t||this.selectedRows,f=[],u=0;u<t.length;u++)for(e=t[u],i=0;i<this.rows.length;i++)if(n.asGetPropertybyName(this.rows[i],this.identifier)===e){f.push(this.rows[i]);this.rows.splice(i,1);break}n("#"+this.element._bgId()).find(".active").hide();this.element.trigger("removed"+r,[f])}else{for(t=t||this.selectedRows,f=[],u=0;u<t.length;u++)for(e=t[u],i=0;i<this.rows.length;i++)if(n.asGetPropertybyName(this.rows[i],this.identifier)===e){f.push(this.rows[i]);this.rows.splice(i,1);break}this.current=1;o.call(this);this.element.trigger("removed"+r,[f])}return this};e.prototype.search=function(n){if(n=n||"",this.searchPhrase!==n){var t=f(this.options.css.searchField),i=c.call(this,t);i.val(n)}return tt.call(this,n),this};e.prototype.select=function(t){var e,i,u,o,s;if(this.selection){for(t=t||this.currentRows.propValues(this.identifier),u=[];t.length>0&&!(!this.options.multiSelect&&u.length===1);)if(e=t.pop(),n.inArray(e,this.selectedRows)===-1)for(i=0;i<this.currentRows.length;i++)if(n.asGetPropertybyName(this.currentRows[i],this.identifier)===e){u.push(this.currentRows[i]);this.selectedRows.push(e);break}if(u.length>0){for(o=f(this.options.css.selectBox),s=this.selectedRows.length>=this.currentRows.length,i=0;!this.options.keepSelection&&s&&i<this.currentRows.length;)s=n.inArray(n.asGetPropertybyName(this.currentRows[i++],this.identifier),this.selectedRows)!==-1;for(this.element.find("thead "+o).prop("checked",s),this.options.multiSelect||this.element.find("tbody > tr "+o+":checked").trigger("click"+r),i=0;i<this.selectedRows.length;i++)this.element.find('tbody > tr[data-row-id="'+this.selectedRows[i]+'"]').addClass(this.options.css.selected)._bgAria("selected","true").find(o).prop("checked",!0);this.element.trigger("selected"+r,[u])}}return this};e.prototype.deselect=function(t){var e,i,o,u,s;if(this.selection){for(t=t||this.currentRows.propValues(this.identifier),u=[];t.length>0;)if(e=t.pop(),o=n.inArray(e,this.selectedRows),o!==-1)for(i=0;i<this.currentRows.length;i++)if(n.asGetPropertybyName(this.currentRows[i],this.identifier)===e){u.push(this.currentRows[i]);this.selectedRows.splice(o,1);break}if(u.length>0){for(s=f(this.options.css.selectBox),this.element.find("thead "+s).prop("checked",!1),i=0;i<u.length;i++)this.element.find('tbody > tr[data-row-id="'+n.asGetPropertybyName(u[i],this.identifier)+'"]').removeClass(this.options.css.selected)._bgAria("selected","false").find(s).prop("checked",!1);this.element.trigger("deselected"+r,[u])}}return this};e.prototype.sort=function(t){var i=t?n.extend({},t):{};return i===this.sortDictionary?this:(this.sortDictionary=i,b.call(this),v.call(this),o.call(this),this)};e.prototype.getColumnSettings=function(){return n.merge([],this.columns)};e.prototype.getCurrentPage=function(){return this.current};e.prototype.getCurrentRows=function(){return n.merge([],this.currentRows)};e.prototype.getRowCount=function(){return this.rowCount};e.prototype.getSearchPhrase=function(){return this.searchPhrase};e.prototype.getSelectedRows=function(){return n.merge([],this.selectedRows)};e.prototype.getSortDictionary=function(){return n.extend({},this.sortDictionary)};e.prototype.getTotalPageCount=function(){return this.totalPages};e.prototype.getTotalRowCount=function(){return this.total};n.fn.extend({_bgAria:function(n,t){return t?this.attr("aria-"+n,t):this.attr("aria-"+n)},_bgBusyAria:function(n){return n==null||n?this._bgAria("busy","true"):this._bgAria("busy","false")},_bgRemoveAria:function(n){return this.removeAttr("aria-"+n)},_bgEnableAria:function(n){return n==null||n?this.removeClass("disabled")._bgAria("disabled","false"):this.addClass("disabled")._bgAria("disabled","true")},_bgEnableField:function(n){return n==null||n?this.removeAttr("disabled"):this.attr("disabled","disable")},_bgShowAria:function(n){return n==null||n?this.show()._bgAria("hidden","false"):this.hide()._bgAria("hidden","true")},_bgSelectAria:function(n){return n==null||n?this.addClass("active")._bgAria("selected","true"):this.removeClass("active")._bgAria("selected","false")},_bgId:function(n){return n?this.attr("id",n):this.attr("id")}});String.prototype.resolve||(l={checked:function(n){return typeof n=="boolean"?n?'checked="checked"':"":n}},String.prototype.resolve=function(t,i){var r=this;return n.each(t,function(t,u){var f,e;u!=null&&typeof u!="function"&&(typeof u=="object"?(f=i?n.extend([],i):[],f.push(t),r=r.resolve(u,f)+""):(l&&l[t]&&typeof l[t]=="function"&&(u=l[t](u)),t=i?i.join(".")+"."+t:t,e=new RegExp("\\{\\{"+t+"\\}\\}","gm"),r=r.replace(e,u.replace?u.replace(/\$/gi,"&#36;"):u)))}),r});Array.prototype.first||(Array.prototype.first=function(n){for(var i,t=0;t<this.length;t++)if(i=this[t],n(i))return i;return null});Array.prototype.contains||(Array.prototype.contains=function(n){for(var i,t=0;t<this.length;t++)if(i=this[t],n(i))return!0;return!1});Array.prototype.page||(Array.prototype.page=function(n,t){var i=(n-1)*t,r=i+t;return this.length>i?this.length>r?this.slice(i,r):this.slice(i):[]});Array.prototype.where||(Array.prototype.where=function(n){for(var i,r=[],t=0;t<this.length;t++)i=this[t],n(i)&&r.push(i);return r});Array.prototype.propValues||(Array.prototype.propValues=function(t){for(var r=[],i=0;i<this.length;i++)r.push(n.asGetPropertybyName(this[i],t));return r});it=n.fn.asBootGrid;n.fn.asBootGrid=function(t){y=this;var i=Array.prototype.slice.call(arguments,1),u=null,f=this.each(function(f){var s=n(this),o=s.data(r),h=typeof t=="object"&&t;if((o||t!=="destroy")&&(o||(s.data(r,o=new e(this,h)),ut.call(o)),typeof t=="string"))if(t.indexOf("get")===0&&f===0)u=o[t].apply(o,i);else if(t.indexOf("get")!==0)return o[t].apply(o,i)});return typeof t=="string"&&t.indexOf("get")===0?u:f};n.fn.asBootGrid.Constructor=e;n.fn.asBootGrid.noConflict=function(){return n.fn.asBootGrid=it,this};n('[data-toggle="asBootGrid"]').asBootGrid()})(jQuery,window),function(n){"use strict";n.extend(n.fn.asBootGrid.Constructor.defaults.css,{icon:"icon glyphicon",iconColumns:"glyphicon-th-list",iconDown:"glyphicon-chevron-up",iconRefresh:"glyphicon-refresh",iconSearch:"glyphicon-search",iconUp:"glyphicon-chevron-down"})}(jQuery,window)