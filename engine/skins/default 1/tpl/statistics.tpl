<div  class="comments-area">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" class="contentHead"><b>{l_server}</b></td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_os}</td>
<td width="50%" class="contentEntry2">{php_os}</td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_php_version} / {l_mysql_version}</td>
<td width="50%" class="contentEntry2">{php_version} / {mysql_version}</td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_gd_version}</td>
<td width="50%" class="contentEntry2">{gd_version}</td>
</tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" class="contentHead"><b> Next Generation CMS</b></td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_current_version}</td>
<td width="50%" class="contentEntry2"><span style="font-weight: bold; color: #6cb7ef;">{currentVersion}</span></td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_last_version}</td>
<td width="50%" class="contentEntry2"><span id="syncLastVersion">loading..</span></td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_svn_version}</td>
<td width="50%" class="contentEntry2"><span id="syncSVNVersion">loading..</span></td>
</tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr>
<td colspan="4" class="contentHead"><b> {l_size}</b></td>
</tr>
<tr><td class="contentEntry1">{l_group}</td><td class="contentEntry1" align="right">{l_amount}</td><td class="contentEntry1"align="right">{l_volume}</td><td class="contentEntry1"> &nbsp; {l_permissions}</td></tr>
<tr><td class="contentEntry1">{l_group_images}</td><td class="contentEntry1"align="right">{image_amount}</td><td class="contentEntry1"align="right">{image_size}</td><td class="contentEntry1"> &nbsp; {image_perm}</td></tr>
<tr>
<td class="contentEntry1">{l_group_files}</td><td class="contentEntry1"align="right">{file_amount}</td><td class="contentEntry1"align="right">{file_size}</td><td class="contentEntry1"> &nbsp; {file_perm}</td></tr>
<tr>
<td class="contentEntry1">{l_group_photos}</td><td class="contentEntry1" align="right">{photo_amount}</td><td class="contentEntry1" align="right">{photo_size}</td><td class="contentEntry1">&nbsp; {photo_perm}</td></tr>
<tr><td class="contentEntry1">{l_group_avatars}</td><td class="contentEntry1" align="right">{avatar_amount}</td><td class="contentEntry1" align="right">{avatar_size}</td><td class="contentEntry1"> &nbsp; {avatar_perm}</td></tr>
<tr><td class="contentEntry1">{l_group_backup}</td><td class="contentEntry1" align="right">{backup_amount}</td><td class="contentEntry1" align="right">{backup_size}</td><td class="contentEntry1"> &nbsp; {backup_perm}</td></tr>
</table>

<script type="text/javascript" language="JavaScript" src="{versionNotifyURL}"></script>


<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" class="contentHead"><b> {l_size}</b></td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_allowed_size}</td>
<td width="50%" class="contentEntry2">{allowed_size}</td>
</tr>
<tr>
<td width="50%" class="contentEntry1">{l_mysql_size}</td>
<td width="50%" class="contentEntry2">{mysql_size}</td>
</tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" class="contentHead"><b>{l_system}</b></td>
</tr>
<tr>
<td width="70%" class="contentEntry1">{l_all_cats}</td>
<td width="30%" class="contentEntry2">{categories}</td>
</tr>
<tr>
<td width="70%" class="contentEntry1">{l_all_news}</td>
<td width="30%" class="contentEntry2"><a href="?mod=news&status=1">{news_draft}</a> / <a href="?mod=news&status=2">{news_unapp}</a> / <a href="?mod=news&status=3">{news}</a></td>
</tr>
<tr>
<td width="70%" class="contentEntry1">{l_all_comments}</td>
<td width="30%" class="contentEntry2">{comments}</td>
</tr>
<tr>
<td width="70%" class="contentEntry1">{l_all_users}</td>
<td width="30%" class="contentEntry2">{users}</td>
</tr>
<tr>        
<td width="70%" class="contentEntry1">{l_all_users_unact}</td>
<td width="30%" class="contentEntry2">{users_unact}</td>
</tr>
<tr>
<td width="70%" class="contentEntry1">{l_all_images}</td>
<td width="30%" class="contentEntry2">{images}</td>
</tr>
<tr>
<td width="70%" class="contentEntry1">{l_all_files}</td>
<td width="30%" class="contentEntry2">{files}</td>
</tr>
</table>
[conf_error]
<!-- Configuration errors -->
 <table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr><td colspan="2" class="contentHead"><font color="red">{l_pconfig.error}</font></td></tr>
  <tr><td>
<table width="100%">
<thead><tr><td>{l_perror.parameter}</td><td>{l_perror.shouldbe}</td><td>{l_perror.set}</td></thead>
<tr><td>Register Globals</td><td>Отключено</td><td>{flag:register_globals}</td></tr>
<tr><td>Magic Quotes GPC</td><td>Отключено</td><td>{flag:magic_quotes_gpc}</td></tr>
<tr><td>Magic Quotes Runtime</td><td>Отключено</td><td>{flag:magic_quotes_runtime}</td></tr>
<tr><td>Magic Quotes Sybase</td><td>Отключено</td><td>{flag:magic_quotes_sybase}</td></tr>
</table>
<br/>
&nbsp;<a style="cursor: pointer; color: red;" onclick="document.getElementById('perror_resolve').style.display='block';">{l_perror.howto}</a><br/>
<div id="perror_resolve" style="display: none;">
{l_perror.descr}
</div>
  </td></tr>
 </table>
[/conf_error]

</div>