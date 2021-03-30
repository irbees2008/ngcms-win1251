<span id="save_area" style="display: block;"></span>
<div id="tags">
<a onclick="insertext('[b]','[/b]', {area})" title='{l_tags.bold}'><img src="{skins_url}/tags/bold.gif" height="16" width="16" alt="{l_tags.bold}" /></a>
<a onclick="insertext('[u]','[/u]', {area})" title='{l_tags.underline}'><img src="{skins_url}/tags/underline.gif" width="16" height="16" alt="{l_tags.underline}" /></a>
<a onclick="insertext('[i]','[/i]', {area})" title='{l_tags.italic}'><img src="{skins_url}/tags/italic.gif" width="16" height="16" alt="{l_tags.italic}" /></a>
<a onclick="insertext('[s]','[/s]', {area})" title='{l_tags.crossline}'><img src="{skins_url}/tags/crossline.gif" width="16" height="16" alt="{l_tags.crossline}" /></a>
<img src="{skins_url}/tags/sep.gif" width="1" height="16" alt="" />

<a onclick="insertext('[left]','[/left]', {area})" title='{l_tags.left}'><img src="{skins_url}/tags/left.gif" width="16" height="16" alt="{l_tags.left}" /></a>
<a onclick="insertext('[center]','[/center]', {area})" title='{l_tags.center}'><img src="{skins_url}/tags/center.gif" width="16" height="16" alt="{l_tags.center}" /></a>
<a onclick="insertext('[right]','[/right]', {area})" title='{l_tags.right}'><img src="{skins_url}/tags/right.gif" width="16" height="16" alt="{l_tags.right}" /></a>
<a onclick="insertext('[justify]','[/justify]', {area})" title='{l_tags.justify}'><img src="{skins_url}/tags/justify.gif" width="16" height="16" alt="{l_tags.justify}" /></a>
<img src="{skins_url}/tags/sep.gif" width="1" height="16" alt="" />

<select name="txtcolor" size="1" onChange="insertfortext('color',document.form.txtcolor[document.form.txtcolor.selectedIndex].value,{area});">

 <OPTION value="#000000"  selected style='background-color:#000000;height:15px;width:40px;'>Цвет 

 <OPTION value="#408080" style='background-color:#408080;height:15px;width:40px;'> 

 <OPTION value="#C0C0C0" style='background-color:#C0C0C0;height:15px;width:40px;'>

 <OPTION value="#730200" style='background-color:#730200;height:15px;width:40px;'> 

 <OPTION value="#231800" style='background-color:#231800;height:15px;width:40px;'> 

 <OPTION value="#044302" style='background-color:#044302;height:15px;width:40px;'> 

 <OPTION value="#0D09A3" style='background-color:#0D09A3;height:15px;width:40px;'> 

 <OPTION value="#808040" style='background-color:#808040;height:15px;width:40px;'> 

 <OPTION value="#800080" style='background-color:#800080;height:15px;width:40px;'> 

 <OPTION value="#444444" style='background-color:#444444;height:15px;width:40px;'> 

 <OPTION value="#FF0400" style='background-color:#FF0400;height:15px;width:40px;'> 

 <OPTION value="#EFE800" style='background-color:#EFE800;height:15px;width:40px;'> 

 <OPTION value="#05EF00" style='background-color:#05EF00;height:15px;width:40px;'> 

 <OPTION value="#0206FF" style='background-color:#0206FF;height:15px;width:40px;'> 

 <OPTION value="#AE08EF" style='background-color:#AE08EF;height:15px;width:40px;'>

 <OPTION value="#FF8C8A" style='background-color:#FF8C8A;height:15px;width:40px;'> 

 <OPTION value="#FF80FF" style='background-color:#FF80FF;height:15px;width:40px;'> 

 <OPTION value="#FFCCCC" style='background-color:#FFCCCC;height:15px;width:40px;'> 

 <OPTION value="#FFCC99" style='background-color:#FFCC99;height:15px;width:40px;'> 

 <OPTION value="#000080" style='background-color:#000080;height:15px;width:40px;'> 

 <OPTION value="#808080" style='background-color:#808080;height:15px;width:40px;'> 

 <OPTION value="#D5CCBB" style='background-color:#D5CCBB;height:15px;width:40px;'> 

 <OPTION value="#DDDDDD" style='background-color:#DDDDDD;height:15px;width:40px;'> 

 <OPTION value="#FBFF73" style='background-color:#FBFF73;height:15px;width:40px;'> 

 <OPTION value="#7CFF7D" style='background-color:#7CFF7D;height:15px;width:40px;'> 

 <OPTION value="#A6BEFF" style='background-color:#A6BEFF;height:15px;width:40px;'> 

 <OPTION value="#FFFFFF" style='background-color:#FFFFFF;height:15px;width:40px;'> 

</select>

<select name="txtsize" size="1" onChange="insertfortext('size',document.form.txtsize[document.form.txtsize.selectedIndex].value,{area});">

 <OPTION value="1" style="font-size:1;"> 1

 <OPTION value="2" style="font-size:2;"> 2

 <OPTION value="3" selected  style="font-size:3"> 3

 <OPTION value="4" style="font-size:4"> 4

  <OPTION value="5" style="font-size:5;"> 5

</select>
<a onclick="insertext('[ul]\n[li][/li]\n[li][/li]\n[li][/li]\n[/ul]','', {area})" title='{l_tags.bulllist}'><img src="{skins_url}/tags/bulllist.gif" width="16" height="16" alt="{l_tags.bulllist}" /></a>
<a onclick="insertext('[ol]\n[li][/li]\n[li][/li]\n[li][/li]\n[/ol]','', {area})" title='{l_tags.numlist}'><img src="{skins_url}/tags/numlist.gif" width="16" height="16" alt="{l_tags.numlist}" /></a>
<img src="{skins_url}/tags/sep.gif" width="1" height="16" alt="" />

<a onclick="insertext('[spoiler]','[/spoiler]', {area})" title='{l_tags.spoiler}'><img src="{skins_url}/tags/spoiler.gif" width="16" height="16" alt="{l_tags.spoiler}" /></a>
<a onclick="insertext('[p]','[/p]', {area})" title='{l_tags.paragraph}'><img src="{skins_url}/tags/paragraph.gif" width="16" height="16" alt="{l_tags.paragraph}" /></a>
<a onclick="insertext('[quote]','[/quote]', {area})" title='{l_tags.comment}'><img src="{skins_url}/tags/comment.gif" width="16" height="16" alt="{l_tags.comment}" /></a>
<a onclick="insertext('[acronym=]','[/acronym]', {area})" title='{l_tags.acronym}'><img src="{skins_url}/tags/acronym.gif" width="16" height="16" alt="{l_tags.acronym}" /></a>
<a onclick="insertext('[code]','[/code]', {area})" title='{l_tags.code}'><img src="{skins_url}/tags/code.gif" width="16" height="16" alt="{l_tags.code}" /></a>
<a onclick="insertext('[hide]','[/hide]', {area})" title='{l_tags.hide}'><img src="{skins_url}/tags/hide.gif" width="16" height="16" alt="{l_tags.hide}" /></a>
<a onclick="insertext('[email]','[/email]', {area})" title='{l_tags.email}'><img src="{skins_url}/tags/email.gif" width="16" height="16" alt="{l_tags.email}" /></a>
<img src="{skins_url}/tags/sep.gif" width="1" height="16" alt="" />

<a onclick="insertext('[url]','[/url]', {area})" title='{l_tags.link}'><img src="{skins_url}/tags/link.gif" width="16" height="16" alt="{l_tags.link}" /></a>
<a onclick="insertext('[img]','[/img]', {area})" title='{l_tags.imagelink}'><img src="{skins_url}/tags/imagelink.gif" width="16" height="16" alt="{l_tags.imagelink}" /></a>
<img src="{skins_url}/tags/sep.gif" width="1" height="16" alt="" />

<a onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('{php_self}?mod=files&amp;area={area}', '_Addfile', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addfile" title='{l_tags.file}'><img src="{skins_url}/tags/file.gif" width="16" height="16" alt="{l_tags.file}" /></a>
<a onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('{php_self}?mod=images&amp;area={area}', '_Addimage', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addimage" title='{l_tags.image}'><img src="{skins_url}/tags/image.gif" width="16" height="16" alt="{l_tags.image}" /></a>
<img src="{skins_url}/tags/sep.gif" width="1" height="16" alt="" />

<a onclick="insertext('<!--nextpage-->','', {area})" title='{l_tags.nextpage}'><img src="{skins_url}/tags/nextpage.gif" width="16" height="16" alt="{l_tags.nextpage}" /></a>
</div>