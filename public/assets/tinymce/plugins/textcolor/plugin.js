tinymce.PluginManager.add("textcolor",function(e){function t(t){var n;return e.dom.getParents(e.selection.getStart(),function(e){var r;(r=e.style["forecolor"==t?"color":"background-color"])&&(n=r)}),n}function n(){var t,n,r=[];for(n=e.settings.textcolor_map||["000000","Black","993300","Burnt orange","333300","Dark olive","003300","Dark green","003366","Dark azure","000080","Navy Blue","333399","Indigo","333333","Very dark gray","800000","Maroon","FF6600","Orange","808000","Olive","008000","Green","008080","Teal","0000FF","Blue","666699","Grayish blue","808080","Gray","FF0000","Red","FF9900","Amber","99CC00","Yellow green","339966","Sea green","33CCCC","Turquoise","3366FF","Royal blue","800080","Purple","999999","Medium gray","FF00FF","Magenta","FFCC00","Gold","FFFF00","Yellow","00FF00","Lime","00FFFF","Aqua","00CCFF","Sky blue","993366","Red violet","FFFFFF","White","FF99CC","Pink","FFCC99","Peach","FFFF99","Light yellow","CCFFCC","Pale green","CCFFFF","Pale cyan","99CCFF","Light sky blue","CC99FF","Plum"],t=0;t<n.length;t+=2)r.push({text:n[t+1],color:"#"+n[t]});return r}function r(){function t(e,t){var n="transparent"==e;return'<td class="mce-grid-cell'+(n?" mce-colorbtn-trans":"")+'"><div id="'+h+"-"+m++ +'" data-mce-color="'+(e?e:"")+'" role="option" tabIndex="-1" style="'+(e?"background-color: "+e:"")+'" title="'+tinymce.translate(t)+'">'+(n?"&#215;":"")+"</div></td>"}var r,i,o,a,s,u,d,f=this,h=f._id,m=0;for(r=n(),r.push({text:tinymce.translate("No color"),color:"transparent"}),o='<table class="mce-grid mce-grid-border mce-colorbutton-grid" role="list" cellspacing="0"><tbody>',a=r.length-1,u=0;c>u;u++){for(o+="<tr>",s=0;l>s;s++)d=u*l+s,d>a?o+="<td></td>":(i=r[d],o+=t(i.color,i.text));o+="</tr>"}if(e.settings.color_picker_callback){for(o+='<tr><td colspan="'+l+'" class="mce-custom-color-btn"><div id="'+h+'-c" class="mce-widget mce-btn mce-btn-small mce-btn-flat" role="button" tabindex="-1" aria-labelledby="'+h+'-c" style="width: 100%"><button type="button" role="presentation" tabindex="-1">'+tinymce.translate("Custom...")+"</button></div></td></tr>",o+="<tr>",s=0;l>s;s++)o+=t("","Custom color");o+="</tr>"}return o+="</tbody></table>"}function i(t,n){e.undoManager.transact(function(){e.focus(),e.formatter.apply(t,{value:n}),e.nodeChanged()})}function o(t){e.undoManager.transact(function(){e.focus(),e.formatter.remove(t,{value:null},null,!0),e.nodeChanged()})}function a(n){function r(e){u.hidePanel(),u.color(e),i(u.settings.format,e)}function a(){u.hidePanel(),u.resetColor(),o(u.settings.format)}function s(e,t){e.style.background=t,e.setAttribute("data-mce-color",t)}var c,u=this.parent();tinymce.DOM.getParent(n.target,".mce-custom-color-btn")&&(u.hidePanel(),e.settings.color_picker_callback.call(e,function(e){var t,n,i,o=u.panel.getEl().getElementsByTagName("table")[0];for(t=tinymce.map(o.rows[o.rows.length-1].childNodes,function(e){return e.firstChild}),i=0;i<t.length&&(n=t[i],n.getAttribute("data-mce-color"));i++);if(i==l)for(i=0;l-1>i;i++)s(t[i],t[i+1].getAttribute("data-mce-color"));s(n,e),r(e)},t(u.settings.format))),c=n.target.getAttribute("data-mce-color"),c?(this.lastId&&document.getElementById(this.lastId).setAttribute("aria-selected",!1),n.target.setAttribute("aria-selected",!0),this.lastId=n.target.id,"transparent"==c?a():r(c)):null!==c&&u.hidePanel()}function s(){var e=this;e._color?i(e.settings.format,e._color):o(e.settings.format)}var l,c;c=e.settings.textcolor_rows||5,l=e.settings.textcolor_cols||8,e.addButton("forecolor",{type:"colorbutton",tooltip:"Text color",format:"forecolor",panel:{role:"application",ariaRemember:!0,html:r,onclick:a},onclick:s}),e.addButton("backcolor",{type:"colorbutton",tooltip:"Background color",format:"hilitecolor",panel:{role:"application",ariaRemember:!0,html:r,onclick:a},onclick:s})});