{% for entry in entries %}
	<tr>
		<td>{{ entry.id }}</td>
		<td>{{ entry.level }}{% if (flags.canView) %}<a href="admin.php?mod=categories&amp;action=edit&amp;catid={{ entry.id }}" title="ID: {{ entry.id }}">{{ entry.name }}</a>{% else %}{{ entry.name }}{% endif %}{% if (entry.info|length>0) %}<i class="fa fa-info" title="Категория содержит описание"></i>{% endif %}</td>
		
		<td>{{ entry.alt }}</td>
		<td>{% if (entry.flags.showMain) %}<i class="fa fa-check" title="{{ lang['yesa'] }}"></i>{% else %}<i class="fa fa-times" title="{{ lang['noa'] }}"></i>{% endif %}</td>
		<td>{% if (entry.template == '') %}--{% else %}{{ entry.template }}{% endif %}</td>
		<td><a href="admin.php?mod=news&amp;category={{ entry.id }}">{% if (entry.news == 0) %}--{% else %}{{ entry.news }}{% endif %}</a></td>
		<td>{% if (flags.canModify) %}
			<a href="#" onclick="categoryModifyRequest('up', {{ entry.id }}); return false;"><i class="fa fa-arrow-up"></i></a>
			<a href="#" onclick="categoryModifyRequest('down', {{ entry.id }}); return false;"><i class="fa fa-arrow-down"></i></a>
			
			<a href="{{ entry.linkView }}" title="{{ lang['site.view'] }}" target="_blank"><i class="fa fa-external-link"></i></a>
			
			<a href="#" onclick="categoryModifyRequest('del', {{ entry.id }}); return false;"><i class="fa fa-trash-o" title="{{ lang['delete'] }}"></i></a>
			
			{% endif %}</td>
	</tr>
{% else %}
	<tr><td colspan="7"><p>- {{ lang['not_found'] }} -</p></td></tr>
{% endfor %}