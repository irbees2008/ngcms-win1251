{% for entry in entries %}
<tr align="center" class="contRow1">
<td>
{% if (flags.canModify) %}
 <a href="#" onclick="categoryModifyRequest('up', {{ entry.id }});"><i class="fa fa-chevron-up" title="Переместить вверх"></i></a>
 <a href="#" onclick="categoryModifyRequest('down', {{ entry.id }});"><i class="fa fa-chevron-down" title="Переместить вниз"></i></a>
{% endif %}
</td>
<td>
<div style="float: left; margin-right: 3px;">{{ entry.level }}</div>
<div style="float: left;">
{% if (flags.canView) %}<a href="admin.php?mod=categories&amp;action=edit&amp;catid={{ entry.id }}" title="ID: {{ entry.id }}">{{ entry.name }}</a>{% else %}{{ entry.name }}{% endif %}
<br/><small><a href="{{ entry.linkView }}" title="{{ lang['site.view'] }}" target="_blank">{{ entry.linkView }}</a></small>
</div>{% if (entry.info|length>0) %}<div style="float: left;"><i class="fa fa-comment-o"></i></div>{% endif %}
</td>
<td>{{ entry.alt }}</td>
<td>
{% if (entry.flags.showMain) %}<i class="fa fa-check" title="{{ lang['yesa'] }}"></i> {% else %}<i class="fa fa-times" title="{{ lang['noa'] }}"></i> {% endif %}</td>
<td>{% if (entry.template == '') %}--{% else %}{{ entry.template }}{% endif %}</td>
<td><a href="admin.php?mod=news&amp;category={{ entry.id }}">{% if (entry.news == 0) %}--{% else %}{{ entry.news }}{% endif %}</a></td>
<td>{% if (flags.canModify) %}<a href="#" onclick="categoryModifyRequest('del', {{ entry.id }});"><i class="fa fa-times" title="{{ lang['delete'] }}"></i> </a>{% endif %}</td>
</tr>
{% endfor %}