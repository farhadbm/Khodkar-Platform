﻿$("#i44910806741f445181072d14a44d07a5").on($.asEvent.page.loaded,function(n,t){var u=".i44910806741f445181072d14a44d07a5."+$.asPageClass,f=function(n){var t=new $.as({pageId:u});return t.as(n)},o=function(){};$("#i44910806741f445181072d14a44d07a5").on($.asEvent.page.dispose,function(){o()});$.asUrls=$.extend({},$.asUrls);var e=document.getElementById("sequence"),s=document.querySelectorAll(".seq-view-code"),r=sequence(e,{keyNavigation:!0,phaseThreshold:100,preloader:!0,reverseWhenNavigatingBackwards:!0,fallback:{speed:300},autoPlay:!0}),i={$openElement:undefined,$openButton:undefined,getTarget:function(n){var t;return t=n||window.event,t.target||t.srcElement},getWindowSize:function(n){return typeof getComputedStyle!="undefined"?window.getComputedStyle(n,":after").getPropertyValue("content").replace(/\"/g,""):!1},init:function(){var t,u,f,s=r.$pagination.elements[0],o=r.$canvas,n;r.utils.addEvent(e,"click",function(r){i.getWindowSize(o)!=="large"&&(n=i.getTarget(r),n.className==="seq-view-code"?(u=n.parentNode,t=u.parentNode,f=n,i.toggle(t,u,f)):n.nodeName==="LI"&&i.hide(t,!0,i.$openElement))});r.utils.addEvent(s,"click",function(t){var u,f,e;(n=i.getTarget(t),i.getWindowSize(o)!=="large")&&(u=n.parentNode.nodeName==="LI"?n.parentNode:n.parentNode.parentNode,f=[].indexOf.call(u.parentNode.children,u),e=r.$steps[f],i.hide(e,!0))})},toggle:function(n,t,r){var u=t.getAttribute("data-is-open");u!=="true"?i.show(n,t,r):i.hide(n,!0,t,r)},show:function(n,t,u){console.dir(n);console.dir(t);console.dir(u);r.utils.addClass(n,"seq-code-pane-open");r.utils.removeClass(n,"seq-code-pane-snap-shut");u.innerHTML='<i class="fa fa-angle-double-down"><\/i> پنهان کردن';t.setAttribute("data-is-open",!0);i.$openElement=t;i.$openButton=u},hide:function(n,t,u,f){(u===undefined&&(u=i.$openElement),i.$openElement!==undefined)&&(f===undefined&&(f=i.$openButton),n=u.parentNode,t===!1&&r.utils.addClass(n,"seq-code-pane-snap-shut"),r.utils.removeClass(n,"seq-code-pane-open"),f.innerHTML='<i class="fa fa-angle-double-up"><\/i> توضیحات',u.setAttribute("data-is-open",!1),i.$openElement=undefined,i.$openButton=undefined)}};r.ready=function(){i.init(s)};r.animationStarted=function(n,t){var r=t.$steps[t.currentStepId-1];i.hide(r,!1)};f("#sequence").show();$(u).append('<span id="asRegisterPage"><\/span>');f("#asRegisterPage").asRegisterPageEvent();typeof t!="undefined"&&$.asLoadPage(t,t.replace(/\//g,$.asUrlDelimeter))})