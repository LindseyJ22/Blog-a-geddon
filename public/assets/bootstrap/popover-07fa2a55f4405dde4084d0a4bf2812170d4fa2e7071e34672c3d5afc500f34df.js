function _defineProperties(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function _createClass(t,e,n){return e&&_defineProperties(t.prototype,e),n&&_defineProperties(t,n),t}function _inheritsLoose(t,e){t.prototype=Object.create(e.prototype),t.prototype.constructor=t,t.__proto__=e}var Popover=function(){var t="popover",e="4.0.0-beta.2",n="bs.popover",o="."+n,i=$.fn[t],r="bs-popover",s=new RegExp("(^|\\s)"+r+"\\S+","g"),c=$.extend({},Tooltip.Default,{placement:"right",trigger:"click",content:"",template:'<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'}),u=$.extend({},Tooltip.DefaultType,{content:"(string|element|function)"}),a={FADE:"fade",SHOW:"show"},f={TITLE:".popover-header",CONTENT:".popover-body"},l={HIDE:"hide"+o,HIDDEN:"hidden"+o,SHOW:"show"+o,SHOWN:"shown"+o,INSERTED:"inserted"+o,CLICK:"click"+o,FOCUSIN:"focusin"+o,FOCUSOUT:"focusout"+o,MOUSEENTER:"mouseenter"+o,MOUSELEAVE:"mouseleave"+o},p=function(i){function p(){return i.apply(this,arguments)||this}_inheritsLoose(p,i);var h=p.prototype;return h.isWithContent=function(){return this.getTitle()||this._getContent()},h.addAttachmentClass=function(t){$(this.getTipElement()).addClass(r+"-"+t)},h.getTipElement=function(){return this.tip=this.tip||$(this.config.template)[0],this.tip},h.setContent=function(){var t=$(this.getTipElement());this.setElementContent(t.find(f.TITLE),this.getTitle()),this.setElementContent(t.find(f.CONTENT),this._getContent()),t.removeClass(a.FADE+" "+a.SHOW)},h._getContent=function(){return this.element.getAttribute("data-content")||("function"==typeof this.config.content?this.config.content.call(this.element):this.config.content)},h._cleanTipClass=function(){var t=$(this.getTipElement()),e=t.attr("class").match(s);null!==e&&e.length>0&&t.removeClass(e.join(""))},p._jQueryInterface=function(t){return this.each(function(){var e=$(this).data(n),o="object"==typeof t?t:null;if((e||!/destroy|hide/.test(t))&&(e||(e=new p(this,o),$(this).data(n,e)),"string"==typeof t)){if("undefined"==typeof e[t])throw new Error('No method named "'+t+'"');e[t]()}})},_createClass(p,null,[{key:"VERSION",get:function(){return e}},{key:"Default",get:function(){return c}},{key:"NAME",get:function(){return t}},{key:"DATA_KEY",get:function(){return n}},{key:"Event",get:function(){return l}},{key:"EVENT_KEY",get:function(){return o}},{key:"DefaultType",get:function(){return u}}]),p}(Tooltip);return $.fn[t]=p._jQueryInterface,$.fn[t].Constructor=p,$.fn[t].noConflict=function(){return $.fn[t]=i,p._jQueryInterface},p}($);