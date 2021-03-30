<!-- Navigation bar -->
<ul class="breadcrumb">
  <li><a href="admin.php">{{ lang['home'] }}</a></li>
  <li><a href="admin.php?mod=options">{{ lang['options'] }}</a></li>
  <li class="active">{{ lang['statistics'] }}</li>
</ul>

<!-- Info content -->
<div class="page-main">

	{% if(flags.confError) %}
	<!-- Configuration errors -->
	<div class="well alert alert-danger" role="alert">
		<h3>{{ lang['pconfig.error'] }}</h3>
	
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>{{ lang['perror.parameter'] }}</th>
					<th>{{ lang['perror.shouldbe'] }}</th>
					<th>{{ lang['perror.set'] }}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Register Globals</td>
					<td>{{ lang['statistics.disabled'] }}</td>
					<td>{{ flags.register_globals }}</td>
				</tr>
				<tr>
					<td>Magic Quotes GPC</td>
					<td>{{ lang['statistics.disabled'] }}</td>
					<td>{{ flags.magic_quotes_gpc }}</td>
				</tr>
				<tr>
					<td>Magic Quotes Runtime</td>
					<td>{{ lang['statistics.disabled'] }}</td>
					<td>{{ flags.magic_quotes_runtime }}</td>
				</tr>
				<tr>
					<td>Magic Quotes Sybase</td>
					<td>{{ lang['statistics.disabled'] }}</td>
					<td>{{ flags.magic_quotes_sybase }}</td>
				</tr>
			</tbody>
		</table>
		
		<p><a href="#" data-toggle="modal" data-target="#perror">{{ lang['perror.howto'] }}?</a></p>
		
		<div id="perror" class="modal fade" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4>{{ lang['perror.howto'] }}</h4>
					</div>
					<div class="modal-body">
						{{ lang['perror.descr'] }}
					</div>
					<div id="modalmsgWindowButton" class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">��</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	{% endif %}
	
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>{{ lang['server'] }}</h4>
				</div>
				<table class="table table-statistics">
					<tr>
						<td>{{ lang['os'] }}</td>
						<td>{{ php_os }}</td>
					</tr>
					<tr>
						<td>{{ lang['php_version'] }}</td>
						<td>{{ php_version }}</td>
					</tr>
					<tr>
						<td>{{ lang['mysql_version'] }}</td>
						<td>{{ mysql_version }}</td>
					</tr>
					<tr>
						<td>{{ lang['gd_version'] }}</td>
						<td>{{ gd_version }}</td>
					</tr>
					<tr>
						<td>{{ lang['pdo_support'] }}</td>
						<td>{{ pdo_support }}</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>Next Generation CMS</h4>
				</div>
				<table class="table table-statistics">
					<tr>
						<td>{{ lang['current_version'] }}</td>
						<td>{{ currentVersion }}</td>
					</tr>
					<tr>
						<td>{{ lang['last_version'] }}</td>
						<td><span id="syncLastVersion">loading..</span></td>
					</tr>
					<tr>
						<td>{{ lang['svn_version'] }}</td>
						<td><span id="syncSVNVersion">loading..</span></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>{{ lang['size'] }}</h4>
				</div>
				<table class="table table-statistics">
					<thead>
						<tr>
							<th>{{ lang['group'] }}</th>
							<th>{{ lang['amount'] }}</th>
							<th>{{ lang['volume'] }}</th>
							<th>{{ lang['permissions'] }}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>{{ lang['group_images'] }}</td>
							<td>{{ image_amount }}</td>
							<td>{{ image_size }}</td>
							<td>{{ image_perm }}</td>
						</tr>
						<tr>
							<td>{{ lang['group_files'] }}</td><td>{{ file_amount }}</td><td>{{ file_size }}</td><td> &nbsp; {{ file_perm }}</td>
						</tr>
						<tr>
							<td>{{ lang['group_photos'] }}</td><td>{{ photo_amount }}</td><td>{{ photo_size }}</td><td>&nbsp; {{ photo_perm }}</td>
						</tr>
						<tr><td>{{ lang['group_avatars'] }}</td><td>{{ avatar_amount }}</td><td>{{ avatar_size }}</td><td> &nbsp; {{ avatar_perm }}</td></tr>
						<tr><td>{{ lang['group_backup'] }}</td><td>{{ backup_amount }}</td><td>{{ backup_size }}</td><td> &nbsp; {{ backup_perm }}</td></tr>
						<tr>
						<td colspan="2">{{ lang['allowed_size'] }}</td>
						<td>{{ allowed_size }}</td>
						<td></td>
						</tr>
						<tr>
						<td colspan="2">{{ lang['mysql_size'] }}</td>
						<td>{{ mysql_size }}</td>
						<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>{{ lang['system'] }}</h4>
				</div>
				<table class="table table-statistics">
					<tr>
						<td>{{ lang['all_cats'] }}</td>
						<td>{{ categories }}</td>
					</tr>
					<tr>
						<td>{{ lang['all_news'] }}</td>
						<td><a href="?mod=news&status=1">{{ news_draft }}</a> / <a href="?mod=news&status=2">{{ news_unapp }}</a> / <a href="?mod=news&status=3">{{ news }}</a></td>
					</tr>
					<tr>
						<td>{{ lang['all_comments'] }}</td>
						<td>{{ comments }}</td>
					</tr>
					<tr>
						<td>{{ lang['all_users'] }}</td>
						<td>{{ users }}</td>
					</tr>
					<tr>
						<td>{{ lang['all_users_unact'] }}</td>
						<td>{{ users_unact }}</td>
					</tr>
					<tr>
						<td>{{ lang['all_images'] }}</td>
						<td>{{ images }}</td>
					</tr>
					<tr>
						<td>{{ lang['all_files'] }}</td>
						<td>{{ files }}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div class="admin_note panel panel-default">
				<div class="panel-heading">
					<h4>{{ lang['note'] }}</h4>
				</div>
				<form method="post" action="{{ php_self }}?mod=statistics">
					<input type="hidden" name="action" value="save" >
					<div class="panel-body">
						<textarea name="note" class="form-control" rows="8"{% if (not admin_note) %}placeholder="{{ lang['no_notes'] }}"{% endif %}>{{ admin_note }}</textarea>
					</div>
					<div class="panel-footer">
						<button type="submit" class="btn btn-success">{{ lang['save_note'] }}</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

	<div id="modalmsgDialog" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4>Error</h4>
				</div>
				<div id="modalmsgWindowText" class="modal-body">
					
				</div>
				<div id="modalmsgWindowButton" class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">��</button>
				</div>
			</div>
		</div>
	</div>


<script src="{{versionNotifyURL }}"></script>
<script>
	function showModal(text) {
		$('#modalmsgWindowText').html(text);
		$('#modalmsgDialog').modal('show');
		return;
	}
</script>
