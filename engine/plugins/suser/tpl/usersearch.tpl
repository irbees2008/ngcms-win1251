<h2>����� �������������</h2>
<form id="usersearch" method="post" action="">
	������: {{ boxlist['from'] }}

	{% if pluginIsActive('xfields') %}
		<!-- ���������� ������ ���. ����� -->
		{% for xf in xflist %}
			{% if boxlist[xf.id] %}
				{{ xf.title }}: {{ boxlist[xf.id] }}
			{% endif %}
		{% endfor %}
	{% endif %}

	<input class="btn" type="submit" name="search" value="�����"/>
	<input class="btn" type="submit" name="reset" value="�����"/>
</form>

{% if searched and entries %}
	<!-- ���� ����� ������� ����������� -->
	<table class="table">
		<thead>
		<tr>
			<th>���</th>

			{% if pluginIsActive('xfields') %}
				<!-- ��������� ���. ����� -->
				{% for xf in xflist %}
					<th>{{ xf.title }}</th>
				{% endfor %}
			{% endif %}

			<th>������</th>
			<th>��������</th>
			<th>������������</th>
			<th>���������������</th>
			<th>��������� ����</th>
		</tr>
		</thead>
		<tbody>
		{% for entry in entries %}
			<tr>
				<td><a href='{{ entry.profile_link }}'>{{ entry.profile }}</a></td>

				{% if pluginIsActive('xfields') %}
					<!-- ���������� ���. ����� -->
					{% for xf in entry.xfields %}
						<td>{{ xf }}</td>
					{% endfor %}
				{% endif %}

				<td>{{ entry.from }}</td>
				<td>{{ entry.news }}</td>
				<td>{{ entry.com }}</td>
				<td>{{ entry.reg|date("d-m-Y h:i") }}</td>
				<td>
					{% if (entry.last != 0) %}
						{{ entry.last|date("d-m-Y h:i") }}
					{% else %}
						�� ��� �� ����
					{% endif %}
				</td>
			</tr>
		{% endfor %}
		</tbody>
	</table>
{% else %}
	{% if searched %}
		<!-- ���� ��������� ������ ���� -->
		������������, ��������������� ���������, �� �������!
	{% endif %}
{% endif %}