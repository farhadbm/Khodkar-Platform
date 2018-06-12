﻿ace.define("ace/mode/xml_highlight_rules",["require","exports","module","ace/lib/oop","ace/mode/text_highlight_rules"],function(n,t){"use strict";var u=n("../lib/oop"),r=n("./text_highlight_rules").TextHighlightRules,i=function(){var n="[_:a-zA-ZÀ-￿][-_:.a-zA-Z0-9À-￿]*";this.$rules={start:[{token:"string.cdata.xml",regex:"<\\!\\[CDATA\\[",next:"cdata"},{token:["punctuation.xml-decl.xml","keyword.xml-decl.xml"],regex:"(<\\?)(xml)(?=[\\s])",next:"xml_decl",caseInsensitive:!0},{token:["punctuation.instruction.xml","keyword.instruction.xml"],regex:"(<\\?)("+n+")",next:"processing_instruction"},{token:"comment.xml",regex:"<\\!--",next:"comment"},{token:["xml-pe.doctype.xml","xml-pe.doctype.xml"],regex:"(<\\!)(DOCTYPE)(?=[\\s])",next:"doctype",caseInsensitive:!0},{include:"tag"},{token:"text.end-tag-open.xml",regex:"<\/"},{token:"text.tag-open.xml",regex:"<"},{include:"reference"},{defaultToken:"text.xml"}],xml_decl:[{token:"entity.other.attribute-name.decl-attribute-name.xml",regex:"(?:"+n+":)?"+n+""},{token:"keyword.operator.decl-attribute-equals.xml",regex:"="},{include:"whitespace"},{include:"string"},{token:"punctuation.xml-decl.xml",regex:"\\?>",next:"start"}],processing_instruction:[{token:"punctuation.instruction.xml",regex:"\\?>",next:"start"},{defaultToken:"instruction.xml"}],doctype:[{include:"whitespace"},{include:"string"},{token:"xml-pe.doctype.xml",regex:">",next:"start"},{token:"xml-pe.xml",regex:"[-_a-zA-Z0-9:]+"},{token:"punctuation.int-subset",regex:"\\[",push:"int_subset"}],int_subset:[{token:"text.xml",regex:"\\s+"},{token:"punctuation.int-subset.xml",regex:"]",next:"pop"},{token:["punctuation.markup-decl.xml","keyword.markup-decl.xml"],regex:"(<\\!)("+n+")",push:[{token:"text",regex:"\\s+"},{token:"punctuation.markup-decl.xml",regex:">",next:"pop"},{include:"string"}]}],cdata:[{token:"string.cdata.xml",regex:"\\]\\]>",next:"start"},{token:"text.xml",regex:"\\s+"},{token:"text.xml",regex:"(?:[^\\]]|\\](?!\\]>))+"}],comment:[{token:"comment.xml",regex:"-->",next:"start"},{defaultToken:"comment.xml"}],reference:[{token:"constant.language.escape.reference.xml",regex:"(?:&#[0-9]+;)|(?:&#x[0-9a-fA-F]+;)|(?:&[a-zA-Z0-9_:\\.-]+;)"}],attr_reference:[{token:"constant.language.escape.reference.attribute-value.xml",regex:"(?:&#[0-9]+;)|(?:&#x[0-9a-fA-F]+;)|(?:&[a-zA-Z0-9_:\\.-]+;)"}],tag:[{token:["meta.tag.punctuation.tag-open.xml","meta.tag.punctuation.end-tag-open.xml","meta.tag.tag-name.xml"],regex:"(?:(<)|(<\/))((?:"+n+":)?"+n+")",next:[{include:"attributes"},{token:"meta.tag.punctuation.tag-close.xml",regex:"/?>",next:"start"}]}],tag_whitespace:[{token:"text.tag-whitespace.xml",regex:"\\s+"}],whitespace:[{token:"text.whitespace.xml",regex:"\\s+"}],string:[{token:"string.xml",regex:"'",push:[{token:"string.xml",regex:"'",next:"pop"},{defaultToken:"string.xml"}]},{token:"string.xml",regex:'"',push:[{token:"string.xml",regex:'"',next:"pop"},{defaultToken:"string.xml"}]}],attributes:[{token:"entity.other.attribute-name.xml",regex:"(?:"+n+":)?"+n+""},{token:"keyword.operator.attribute-equals.xml",regex:"="},{include:"tag_whitespace"},{include:"attribute_value"}],attribute_value:[{token:"string.attribute-value.xml",regex:"'",push:[{token:"string.attribute-value.xml",regex:"'",next:"pop"},{include:"attr_reference"},{defaultToken:"string.attribute-value.xml"}]},{token:"string.attribute-value.xml",regex:'"',push:[{token:"string.attribute-value.xml",regex:'"',next:"pop"},{include:"attr_reference"},{defaultToken:"string.attribute-value.xml"}]}]};this.constructor===i&&this.normalizeRules()};(function(){this.embedTagRules=function(n,t,i){this.$rules.tag.unshift({token:["meta.tag.punctuation.tag-open.xml","meta.tag."+i+".tag-name.xml"],regex:"(<)("+i+"(?=\\s|>|$))",next:[{include:"attributes"},{token:"meta.tag.punctuation.tag-close.xml",regex:"/?>",next:t+"start"}]});this.$rules[i+"-end"]=[{include:"attributes"},{token:"meta.tag.punctuation.tag-close.xml",regex:"/?>",next:"start",onMatch:function(n,t,i){return i.splice(0),this.token}}];this.embedRules(n,t,[{token:["meta.tag.punctuation.end-tag-open.xml","meta.tag."+i+".tag-name.xml"],regex:"(<\/)("+i+"(?=\\s|>|$))",next:i+"-end"},{token:"string.cdata.xml",regex:"<\\!\\[CDATA\\["},{token:"string.cdata.xml",regex:"\\]\\]>"}])}}).call(r.prototype);u.inherits(i,r);t.XmlHighlightRules=i});ace.define("ace/mode/behaviour/xml",["require","exports","module","ace/lib/oop","ace/mode/behaviour","ace/token_iterator","ace/lib/lang"],function(n,t){"use strict";function i(n,t){return n.type.lastIndexOf(t+".xml")>-1}var f=n("../../lib/oop"),e=n("../behaviour").Behaviour,r=n("../../token_iterator").TokenIterator,o=n("../../lib/lang"),u=function(){this.add("string_dquotes","insertion",function(n,t,u,f,e){var s,h,v;if(e=='"'||e=="'"){if(s=e,h=f.doc.getTextRange(u.getSelectionRange()),h!==""&&h!=="'"&&h!='"'&&u.getWrapBehavioursEnabled())return{text:s+h+s,selection:!1};var c=u.getCursorPosition(),y=f.doc.getLine(c.row),l=y.substring(c.column,c.column+1),a=new r(f,c.row,c.column),o=a.getCurrentToken();if(l==s&&(i(o,"attribute-value")||i(o,"string")))return{text:"",selection:[1,1]};if(o||(o=a.stepBackward()),!o)return;while(i(o,"tag-whitespace")||i(o,"whitespace"))o=a.stepBackward();if(v=!l||l.match(/\s/),i(o,"attribute-equals")&&(v||l==">")||i(o,"decl-attribute-equals")&&(v||l=="?"))return{text:s+s,selection:[1,1]}}});this.add("string_dquotes","deletion",function(n,t,i,r,u){var f=r.doc.getTextRange(u),e,o;if(!u.isMultiLine()&&(f=='"'||f=="'")&&(e=r.doc.getLine(u.start.row),o=e.substring(u.start.column+1,u.start.column+2),o==f))return u.end.column++,u});this.add("autoclosing","insertion",function(n,t,u,f,e){var l,v,a,y,p,c;if(e==">"){var h=u.getCursorPosition(),s=new r(f,h.row,h.column),o=s.getCurrentToken()||s.stepBackward();if(!o||!(i(o,"tag-name")||i(o,"tag-whitespace")||i(o,"attribute-name")||i(o,"attribute-equals")||i(o,"attribute-value")))return;if(i(o,"reference.attribute-value"))return;if(i(o,"attribute-value")&&(l=o.value.charAt(0),(l=='"'||l=="'")&&(v=o.value.charAt(o.value.length-1),a=s.getCurrentTokenColumn()+o.value.length,a>h.column||a==h.column&&l!=v)))return;while(!i(o,"tag-name"))o=s.stepBackward();return(y=s.getCurrentTokenRow(),p=s.getCurrentTokenColumn(),i(s.stepBackward(),"end-tag-open"))?void 0:(c=o.value,y==h.row&&(c=c.substring(0,h.column-p)),this.voidElements.hasOwnProperty(c.toLowerCase()))?void 0:{text:"><\/"+c+">",selection:[1,1]}}});this.add("autoindent","insertion",function(n,t,i,u,f){var c,l;if(f=="\n"){var o=i.getCursorPosition(),y=u.getLine(o.row),s=new r(u,o.row,o.column),e=s.getCurrentToken();if(e&&e.type.indexOf("tag-close")!==-1){if(e.value=="/>")return;while(e&&e.type.indexOf("tag-name")===-1)e=s.stepBackward();if(!e)return;if(c=e.value,l=s.getCurrentTokenRow(),e=s.stepBackward(),!e||e.type.indexOf("end-tag")!==-1)return;if(this.voidElements&&!this.voidElements[c]){var a=u.getTokenAt(o.row,o.column+1),y=u.getLine(l),v=this.$getIndent(y),h=v+u.getTabString();return a&&a.value==="<\/"?{text:"\n"+h+"\n"+v,selection:[1,h.length,1,h.length]}:{text:"\n"+h}}}}})};f.inherits(u,e);t.XmlBehaviour=u});ace.define("ace/mode/folding/xml",["require","exports","module","ace/lib/oop","ace/lib/lang","ace/range","ace/mode/folding/fold_mode","ace/token_iterator"],function(n,t){"use strict";function i(n,t){return n.type.lastIndexOf(t+".xml")>-1}var f=n("../../lib/oop"),h=n("../../lib/lang"),r=n("../../range").Range,e=n("./fold_mode").FoldMode,o=n("../../token_iterator").TokenIterator,s=t.FoldMode=function(n,t){e.call(this);this.voidElements=n||{};this.optionalEndTags=f.mixin({},this.voidElements);t&&f.mixin(this.optionalEndTags,t)},u;f.inherits(s,e);u=function(){this.tagName="";this.closing=!1;this.selfClosing=!1;this.start={row:0,column:0};this.end={row:0,column:0}},function(){this.getFoldWidget=function(n,t,i){var r=this._getFirstTagInLine(n,i);return r?r.closing||!r.tagName&&r.selfClosing?t=="markbeginend"?"end":"":!r.tagName||r.selfClosing||this.voidElements.hasOwnProperty(r.tagName.toLowerCase())?"":this._findEndTagInLine(n,i,r.tagName,r.end.column)?"":"start":""};this._getFirstTagInLine=function(n,t){for(var r,o=n.getTokens(t),f=new u,e=0;e<o.length;e++){if(r=o[e],i(r,"tag-open")){if(f.end.column=f.start.column+r.value.length,f.closing=i(r,"end-tag-open"),r=o[++e],!r)return null;for(f.tagName=r.value,f.end.column+=r.value.length,e++;e<o.length;e++)if(r=o[e],f.end.column+=r.value.length,i(r,"tag-close")){f.selfClosing=r.value=="/>";break}return f}if(i(r,"tag-close"))return f.selfClosing=r.value=="/>",f;f.start.column+=r.value.length}return null};this._findEndTagInLine=function(n,t,r,u){for(var f,o=n.getTokens(t),s=0,e=0;e<o.length;e++)if((f=o[e],s+=f.value.length,!(s<u))&&i(f,"end-tag-open")&&(f=o[e+1],f&&f.value==r))return!0;return!1};this._readTagForward=function(n){var t=n.getCurrentToken(),r;if(!t)return null;r=new u;do if(i(t,"tag-open"))r.closing=i(t,"end-tag-open"),r.start.row=n.getCurrentTokenRow(),r.start.column=n.getCurrentTokenColumn();else if(i(t,"tag-name"))r.tagName=t.value;else if(i(t,"tag-close"))return r.selfClosing=t.value=="/>",r.end.row=n.getCurrentTokenRow(),r.end.column=n.getCurrentTokenColumn()+t.value.length,n.stepForward(),r;while(t=n.stepForward());return null};this._readTagBackward=function(n){var t=n.getCurrentToken(),r;if(!t)return null;r=new u;do{if(i(t,"tag-open"))return r.closing=i(t,"end-tag-open"),r.start.row=n.getCurrentTokenRow(),r.start.column=n.getCurrentTokenColumn(),n.stepBackward(),r;i(t,"tag-name")?r.tagName=t.value:i(t,"tag-close")&&(r.selfClosing=t.value=="/>",r.end.row=n.getCurrentTokenRow(),r.end.column=n.getCurrentTokenColumn()+t.value.length)}while(t=n.stepBackward());return null};this._pop=function(n,t){while(n.length){var i=n[n.length-1];if(t&&i.tagName!=t.tagName)if(this.optionalEndTags.hasOwnProperty(i.tagName)){n.pop();continue}else return null;else return n.pop()}};this.getFoldWidgetRange=function(n,t,i){var f=this._getFirstTagInLine(n,i),c,e,u,h,s,l;if(!f)return null;if(c=f.closing||f.selfClosing,e=[],c)for(s=new o(n,i,f.end.column),l={row:i,column:f.start.column};u=this._readTagBackward(s);){if(u.selfClosing)if(e.length)continue;else return u.start.column+=u.tagName.length+2,u.end.column-=2,r.fromPoints(u.start,u.end);if(u.closing)e.push(u);else if(this._pop(e,u),e.length==0)return u.start.column+=u.tagName.length+2,u.start.row==u.end.row&&u.start.column<u.end.column&&(u.start.column=u.end.column),r.fromPoints(u.start,l)}else for(s=new o(n,i,f.start.column),h={row:i,column:f.start.column+f.tagName.length+2},f.start.row==f.end.row&&(h.column=f.end.column);u=this._readTagForward(s);){if(u.selfClosing)if(e.length)continue;else return u.start.column+=u.tagName.length+2,u.end.column-=2,r.fromPoints(u.start,u.end);if(u.closing){if(this._pop(e,u),e.length==0)return r.fromPoints(h,u.start)}else e.push(u)}}}.call(s.prototype)});ace.define("ace/mode/xml",["require","exports","module","ace/lib/oop","ace/lib/lang","ace/mode/text","ace/mode/xml_highlight_rules","ace/mode/behaviour/xml","ace/mode/folding/xml","ace/worker/worker_client"],function(n,t){"use strict";var r=n("../lib/oop"),u=n("../lib/lang"),f=n("./text").Mode,e=n("./xml_highlight_rules").XmlHighlightRules,o=n("./behaviour/xml").XmlBehaviour,s=n("./folding/xml").FoldMode,h=n("../worker/worker_client").WorkerClient,i=function(){this.HighlightRules=e;this.$behaviour=new o;this.foldingRules=new s};r.inherits(i,f),function(){this.voidElements=u.arrayToMap([]);this.blockComment={start:"<!--",end:"-->"};this.createWorker=function(n){var t=new h(["ace"],"ace/mode/xml_worker","Worker");t.attachToDocument(n.getDocument());t.on("error",function(t){n.setAnnotations(t.data)});t.on("terminate",function(){n.clearAnnotations()});return t};this.$id="ace/mode/xml"}.call(i.prototype);t.Mode=i})