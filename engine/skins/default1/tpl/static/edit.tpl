
<script language="javascript" type="text/javascript">
var currentInputAreaID = 'content';
</script>

<table border="0" width="100%" cellpadding="0" cellspacing="0">
<tr>
<td width=100% colspan="5" class="contentHead"><img src="{skins_url}/images/nav.gif" hspace="8"><a href="?mod=static">{l_static_title}</a> &#8594; {l_static_title_edit} "{title}"</td>
</tr>
</table><form name="DATA_tmp_storage" action="" id="DATA_tmp_storage">
<input type=hidden name="area" value="" />
</form>

<form name="form" id="postForm" method="post" action="{php_self}?mod=static" target="_self">
<input type="hidden" name="token" value="{token}"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="content" align="center">
<tr>
<td valign="top" >
 <!-- Left edit column -->

<table border="0" cellspacing="1" cellpadding="0" width="98%">
<tr>
<td>&nbsp;
</td>
</tr>
<tr><td>

<!-- MAIN CONTENT -->
<div id="maincontent" style="display: block;">
<table width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
   <td width="10"><img src="{skins_url}/images/nav.png" hspace="8" alt="" /></td>
   <td width="100"><span class="f15">{l_title}</span></td>
   <td><input type="text" class="important" size="79" name="title" value="{title}" tabindex="1" /></td>
  </tr>
  <tr>
   <td valign="top" colspan=3>{quicktags}<br /> {smilies}<br />
   <textarea style="margin-left: 0px; margin-right: 0px; margin-top: 1px; width: 99%;" name="content" id="content" rows="16" tabindex="2">{content}</textarea></td>
  </tr>
  <tr>
   <td><img src="{skins_url}/images/nav.png" hspace="8" alt="" /></td>
   <td>{l_alt_name}:</td>
   <td><input type="text" name="alt_name" value="{alt_name}" size="60" tabindex="3" /></td>
  </tr>
[meta]
  <tr>
   <td><img src="{skins_url}/images/nav.png" hspace="8" alt="" /></td>
   <td>{l_description}:</td>
   <td><input type="text" name="description" value="{description}" size="60" tabindex="4" /></td>
  </tr>
  <tr>
   <td><img src="{skins_url}/images/nav.png" hspace="8" alt="" /></td>
   <td>{l_keywords}:</td>
   <td><input type="text" name="keywords" value="{keywords}" size="60" tabindex="5" /></td>
  </tr>
  <tr>
   <td><img src="{skins_url}/images/nav.png" hspace="8" alt="" /></td>
   <td>{l_postdate}</td>
   <td><input type="text" id="cdate" name="cdate" value="{cdate}"/> <input name="set_postdate" type="checkbox" value="1"/> {l_set_postdate}<script language="javascript" type="text/javascript">$("#cdate").datetimepicker( { currentText: "{cdate}", dateFormat: "dd.mm.yy", timeFormat: "hh:mm" });</script>
</td>
  </tr>
[/meta]
</table>
</div>

</td></tr>
</table>

</td>
<td id="rightBar" width="300" valign="top">
 <!-- Right edit column -->
 <table width="100%" cellspacing="0" cellpadding="0" border="0">
  <tr>
   <td><img src="{skins_url}/images/nav.png" hspace="0" alt="" /></td>
   <td><span class="f15">{l_editor.configuration}</span></td>
  </tr>
  <tr><td></td><td>
  <div class="list">
  <label><input type="checkbox" name="approve" value="1" class="check" id="approve" {flag_approve} /> {l_approve}</label><br/>
  <label><input type="checkbox" name="flag_HTML" {ifhtml} value="1" class="check" id="flag_HTML" {disable_flag_html} /> {l_flag_html}</label><br/>
  <label><input type="checkbox" name="flag_RAW" {ifraw} value="1" class="check" id="flag_RAW" {disable_flag_raw} /> {l_flag_raw}</label>
  </div>
  
  </td></tr>
<!--  <tr><td colspan=2>&nbsp;</td></tr> -->
  <tr>
   <td><img src="{skins_url}/images/nav.png" hspace="0" alt="" /></td>
   <td><span class="f15">{l_editor.template}</span></td>
  </tr>
  <tr><td></td><td>
  	<div class="list">
	<select name="template" style="width: 200px;" value="{template}">{templateopts}</select><br/><br/>
	<label><input type="checkbox" name="flag_MAIN" {ifmain} value="1" class="check" id="flag_MAIN" {disable_flag_main} /> {l_flag_main}</label>
	</div>
  </td></tr>
 </table>
</td>
</tr>
</table>
<br/>

<table id="edit" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr align="center">
<td width="100%" class="contentEdit" align="center" valign="top">
<input type="hidden" name="id" value="{id}" />
<input type="hidden" name="subaction" value="doedit" />
<input type="hidden" name="action" value="edit" />
[perm.modify]<input type="submit" value="{l_do_editnews}" accesskey="s" class="button" />&nbsp;
<input type="button" value="{l_delete}" onClick="confirmit('{php_self}?mod=static&token={token}&subaction=do_mass_delete&selected[]={id}', '{l_sure_del}')" class="button" />[/perm.modify]
</td>
</tr>
</table>
</form>