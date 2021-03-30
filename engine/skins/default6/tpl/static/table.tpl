<!-- Navigation bar -->
<ul class="breadcrumb">
  <li><a href="admin.php">{{ lang['home'] }}</a></li>
  <li class="active">{{ lang['static_title'] }}</li>
</ul>

<!-- Info content -->
<div class="page-main">
	
	<div class="well">
		<form action="{{ php_self }}" method="get" name="options_bar">
		<input type="hidden" name="mod" value="static">
		
			<div class="row">
				<div class="col col-md-3 col-sm-6">
					<div class="form-group">
						<label for="per_page">{{ lang['per_page'] }}</label>
						<div class="input-group">
							<input type="text" name="per_page" id="per_page" value="{{ per_page }}" class="form-control">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">{{ lang['do_show'] }}</button>
							</span>
						</div>
					</div>
				</div>
				<div class="col col-md-3 col-sm-6">
					
				</div>
				<div class="col col-md-3 col-sm-6">
					
				</div>
				<div class="col col-md-3 col-sm-6 text-right">
					{% if (perm.modify) %}
					<div class="form-group">
						<label for="">&nbsp;</label>
						<a class="btn btn-success form-control" href="{{ php_self }}?mod=static&action=addForm"><i class="fa fa-plus"></i> {{ lang['addstatic'] }}</a>
						{% endif %}
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<div class="panel panel-default panel-table">
		<form action="{{ php_self }}?mod=static" method="post" name="static">
			<input type="hidden" name="token" value="{{ token }}">
			<div class="panel-body table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>{{ lang['title'] }}</th>
							<th>{{ lang['list.altname'] }}</th>
							<th>{{ lang['list.template'] }}</th>
							<th>{{ lang['list.date'] }}</th>
							<th>{{ lang['state'] }}</th>
							<th>{% if (perm.modify) %}<input type="checkbox" class="select-all">{% endif %}</th>
						</tr>
					</thead>
					
					<tbody>
					{% for entry in entries %}
						<tr>
							<td>{% if (perm.details) %}<a title="ID: {{ entry.id }}" href="{{ php_self }}?mod=static&amp;action=editForm&amp;id={{ entry.id }}">{% endif %}{{ entry.title }}{% if (perm.details) %}</a>{% endif %}<br/>{{ entry.url }}</td>
							<td>{{ entry.alt_name }}</td>
							<td>{{ entry.template }}</td>
							<td class="text-nowrap">{{ entry.date }}</td>
							<td>{{ entry.status }}</td>
							<td>{% if (perm.modify) %}<input type="checkbox" name="selected[]" value="{{ entry.id }}">{% endif %}</td>
						</tr>
					{% else %}
						<tr><td colspan="6"><p>- {{ lang['not_found'] }} -</p></td></tr>
					{% endfor %}
					</tbody>
				</table>
			</div>

			<div class="panel-footer">
				<div class="row">
					<div class="col col-sm-3">
						{% if (perm.modify) %}
						<div class="form-group">
							<div class="input-group">
								<select name="action" class="form-control selectpicker">
									<option value="">-- {{ lang['action'] }} --</option>
									<option value="do_mass_delete">{{ lang['delete'] }}</option>
									<option value="do_mass_approve">{{ lang['approve'] }}</option>
									<option value="do_mass_forbidden">{{ lang['forbidden'] }}</option>
								</select>
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">{{ lang['ok'] }}</button>
								</span>
							</div>
						</div>
						{% endif %}
					</div>
					<div class="col col-sm-3">
						
					</div>
					<div class="col col-sm-6 text-right">
						<div class="form-group">
							{{ pagesss }}
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	
</div>