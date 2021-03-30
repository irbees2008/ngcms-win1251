<h2>���������� �������������</h2>
<form id="userlist" method="post" action="">
	<table class="table">
		<tr>
			<th colspan="2">������� ����������� ��������� ����������</th>
		</tr>
		<tr>
			<td>���:</td>
			<td><input type="text" name="username" value="{{ username }}" size="25"/></td>
		</tr>
		<tr>
			<td>������:</td>
			<td>
				<select name="show_group">
					<option value="-1" {% if (show_group_) %}selected{% endif %}>
						��� ������������
					</option>
					<option value="1" {% if (show_group_1) %}selected{% endif %}>
						��������������
					</option>
					<option value="2" {% if (show_group_2) %}selected{% endif %}>
						���������
					</option>
					<option value="3" {% if (show_group_3) %}selected{% endif %}>
						����������
					</option>
					<option value="4" {% if (show_group_4) %}selected{% endif %}>
						������������
					</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>����������� ��:</td>
			<td>
				<select name="sort_by">
					<option value="username" {% if (sort_by_username) %}selected{% endif %}>
						���
					</option>
					<option value="registered" {% if (sort_by_registered) %}selected{% endif %}>
						���������������
					</option>
					<option value="num_posts" {% if (sort_by_num_posts) %}selected{% endif %}>
						���-�� ��������
					</option>
					<option value="num_comments" {% if (sort_by_num_comments) %}selected{% endif %}>
						���-�� ������������
					</option>

					{% if pluginIsActive('xfields') %}
						<!-- ������ ���. ����� -->
						{% for xf in xflist %}
							<option value="{{ xf.id }}" {% if (sort == xf.id) %}selected{% endif %}>
								{{ xf.title }}
							</option>
						{% endfor %}
					{% endif %}
				</select>
			</td>
		</tr>
		<tr>
			<td>����������� ��:</td>
			<td>
				<select name="sort_dir">
					<option value="ASC" {% if (sort_dir_ASC) %}selected{% endif %}>
						�����������
					</option>
					<option value="DESC" {% if (sort_dir_DESC) %}selected{% endif %}>
						��������
					</option>
				</select>
			</td>
		</tr>
	</table>
	<input class="btn" type="submit" name="submit" value="���������"/>
	<input class="btn" type="submit" name="reset" value="�����"/>
</form>

<div id="users1">
	<h2>������������</h2>
	<table class="table">
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
		{% else %}
			<tr>
				<td colspan="4">�� ������ ������� ������ �� �������.</td>
			</tr>
		{% endfor %}
	</table>
</div>

{% if (pages.true) %}
	<p>
		{% if (prevlink.true) %} {{ prevlink.link }} {% endif %}
		{{ pages.print }}
		{% if (nextlink.true) %} {{ nextlink.link }} {% endif %}
	</p>
{% endif %}
