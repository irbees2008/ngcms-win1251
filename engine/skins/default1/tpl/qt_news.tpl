<span id="save_area" style="display: block;"></span>
<div id="tags">
<a onclick="insertext('[b]','[/b]', {area})" title='{l_tags.bold}'><i class="fa fa-bold fa-2x" title="{l_tags.bold}"></i></a>
<a onclick="insertext('[u]','[/u]', {area})" title='{l_tags.underline}'><i class="fa fa-underline fa-2x" title="{l_tags.underline}"></i></a>
<a onclick="insertext('[i]','[/i]', {area})" title='{l_tags.italic}'><i class="fa fa-italic fa-2x" title="{l_tags.italic}"></i></a>
<a onclick="insertext('[s]','[/s]', {area})" title='{l_tags.crossline}'><i class="fa fa-strikethrough fa-2x" title="{l_tags.crossline}"></i> </a>
<i class="fa fa-ellipsis-v fa-2x"></i>
 <select name="txtcolor" size="1" onChange="insertfortext('color',document.form.txtcolor[document.form.txtcolor.selectedIndex].value,{area});">
 <option value="#000000"  selected style='background-color:#000000;height:15px;width:40px;'>Цвет 
 <option value="#408080" style='background-color:#408080;height:15px;width:40px;'> 
 <option value="#C0C0C0" style='background-color:#C0C0C0;height:15px;width:40px;'>
 <option value="#730200" style='background-color:#730200;height:15px;width:40px;'> 
 <option value="#231800" style='background-color:#231800;height:15px;width:40px;'> 
 <option value="#044302" style='background-color:#044302;height:15px;width:40px;'> 
 <option value="#0D09A3" style='background-color:#0D09A3;height:15px;width:40px;'> 
 <option value="#808040" style='background-color:#808040;height:15px;width:40px;'> 
 <option value="#800080" style='background-color:#800080;height:15px;width:40px;'> 
 <option value="#444444" style='background-color:#444444;height:15px;width:40px;'> 
 <option value="#FF0400" style='background-color:#FF0400;height:15px;width:40px;'> 
 <option value="#EFE800" style='background-color:#EFE800;height:15px;width:40px;'> 
 <option value="#05EF00" style='background-color:#05EF00;height:15px;width:40px;'> 
 <option value="#0206FF" style='background-color:#0206FF;height:15px;width:40px;'> 
 <option value="#AE08EF" style='background-color:#AE08EF;height:15px;width:40px;'>
 <option value="#FF8C8A" style='background-color:#FF8C8A;height:15px;width:40px;'> 
 <option value="#FF80FF" style='background-color:#FF80FF;height:15px;width:40px;'> 
 <option value="#FFCCCC" style='background-color:#FFCCCC;height:15px;width:40px;'> 
 <option value="#FFCC99" style='background-color:#FFCC99;height:15px;width:40px;'> 
 <option value="#000080" style='background-color:#000080;height:15px;width:40px;'> 
 <option value="#808080" style='background-color:#808080;height:15px;width:40px;'> 
 <option value="#D5CCBB" style='background-color:#D5CCBB;height:15px;width:40px;'> 
 <option value="#DDDDDD" style='background-color:#DDDDDD;height:15px;width:40px;'> 
 <option value="#FBFF73" style='background-color:#FBFF73;height:15px;width:40px;'> 
 <option value="#7CFF7D" style='background-color:#7CFF7D;height:15px;width:40px;'> 
 <option value="#A6BEFF" style='background-color:#A6BEFF;height:15px;width:40px;'> 
 <option value="#FFFFFF" style='background-color:#FFFFFF;height:15px;width:40px;'> 
</select>
<select name="txtsize" size="1" onChange="insertfortext('size',document.form.txtsize[document.form.txtsize.selectedIndex].value,{area});">
 <option value="1" style="font-size:1;"> 1
 <option value="2" style="font-size:2;"> 2
 <option value="3" selected  style="font-size:3"> 3
 <option value="4" style="font-size:4"> 4
 <option value="5" style="font-size:5;"> 5
</select>
<a onclick="insertext('[left]','[/left]', {area})" title='{l_tags.left}'><i class="fa fa-align-left fa-2x" title="{l_tags.left}"></i> </a>
<a onclick="insertext('[center]','[/center]', {area})" title='{l_tags.center}'><i class="fa fa-align-center fa-2x" title="{l_tags.center}"></i> </a>
<a onclick="insertext('[right]','[/right]', {area})" title='{l_tags.right}'><i class="fa fa-align-right fa-2x" title="{l_tags.right}"></i></a>
<a onclick="insertext('[justify]','[/justify]', {area})" title='{l_tags.justify}'><i class="fa fa-align-justify fa-2x" title="{l_tags.justify}"></i></a>
<i class="fa fa-ellipsis-v fa-2x"></i>

<a onclick="insertext('[ul]\n[li][/li]\n[li][/li]\n[li][/li]\n[/ul]','', {area})" title='{l_tags.bulllist}'><i class="fa fa-list-ul fa-2x"></i></a>
<a onclick="insertext('[ol]\n[li][/li]\n[li][/li]\n[li][/li]\n[/ol]','', {area})" title='{l_tags.numlist}'><i class="fa fa-list-ol fa-2x"></i></a>
<i class="fa fa-ellipsis-v fa-2x"></i>

<a onclick="insertext('[spoiler]','[/spoiler]', {area})" title='{l_tags.spoiler}'><img src="{skins_url}/tags/spoiler.gif" width="16" height="16" alt="{l_tags.spoiler}" /></a>
<a onclick="insertext('[p]','[/p]', {area})" title='{l_tags.paragraph}'><i class="fa fa-paragraph fa-2x"></i></a>
<a onclick="insertext('[quote]','[/quote]', {area})" title='{l_tags.comment}'><i class="fa fa-comment-o fa-2x"></i></a>
<a onclick="insertext('[acronym=]','[/acronym]', {area})" title='{l_tags.acronym}'><i class="fa fa-tag fa-2x"></i></a>
<a onclick="insertext('[code]','[/code]', {area})" title='code=html'><i class="fa fa-code fa-2x"></i></a>
<a onclick="insertext('[code=html]','[/code]', {area})" title='code=html'><i class="fa fa-html5 fa-2x"></i></a>
<a onclick="insertext('[code=js]','[/code]', {area})" title='code=js'><i class="fa fa-code fa-2x"></i>js</a>
<a onclick="insertext('[code=css]','[/code]', {area})" title='code=css'><i class="fa fa-css3 fa-2x"></i></a>
<a onclick="insertext('[code=php]','[/code]', {area})" title='code=php'><i class="fa fa-code fa-2x"></i>php</a>
<a onclick="insertext('[hide]','[/hide]', {area})" title='{l_tags.hide}'><i class="fa fa-shield fa-2x"></i></a>
<a onclick="insertext('[email]','[/email]', {area})" title='{l_tags.email}'><i class="fa fa-envelope-o fa-2x"></i></a>
<i class="fa fa-ellipsis-v fa-2x"></i>

<a onclick="insertext('[url]','[/url]', {area})" title='{l_tags.link}'><i class="fa fa-link fa-2x"></i></a>
<a onclick="insertext('[img]','[/img]', {area})" title='{l_tags.imagelink}'><i class="fa fa-file-image-o fa-2x"></i></a>
<i class="fa fa-ellipsis-v fa-2x"></i>

<a onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('{php_self}?mod=files&amp;ifield='+{area}, '_Addfile', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addfile" title='{l_tags.file}'><i class="fa fa-floppy-o fa-2x"></i></a>
<a onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('{php_self}?mod=images&amp;ifield='+{area}, '_Addimage', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addimage" title='{l_tags.image}'><i class="fa fa-file-image-o fa-2x"></i></a>
<i class="fa fa-ellipsis-v fa-2x"></i>

<a onclick="insertext('<!--nextpage-->','', {area})" title='{l_tags.nextpage}'><i class="fa fa-hand-o-right fa-2x"></i></a>
<i class="fa fa-ellipsis-v fa-2x"></i>
<span class="more">
<a onclick="insertext('<!--more-->','', {area})" title='{l_tags.more}'><i class="fa fa-sign-out fa-2x"></i></a>
</span>
</div>