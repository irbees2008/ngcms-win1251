<form method="post" action="">
	<table border="0" width="100%" cellspacing="0" cellpadding="0">
		{% for entry in list_error %}
			{{ entry }}
		{% endfor %}
		<tr>
			<td width="50%" class="contentEntry1">�����������<br/>
				<small></small>
			</td>
			<td width="50%" class="contentEntry2">
				<select size=1 disabled>
					<option value="{{ forum_id }}">{{ forum_title }}</option>
				</select>
			</td>

		</tr>
		<tr>
			<td width="50%" class="contentEntry1">�������� ������:<br/>
				<small></small>
			</td>
			<td width="50%" class="contentEntry2">
				<input type="text" size="80" name="forum_name" value="{{ forum_name }}"/></td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">�������� ������<br/>
				<small></small>
			</td>
			<td width="50%" class="contentEntry2">
				<textarea name="forum_description" cols="77" rows="4"/>{{ forum_description }}</textarea></td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">�������� �����<br/>
				<small></small>
			</td>
			<td width="50%" class="contentEntry2">
				<textarea name="forum_keywords" cols="77" rows="4"/>{{ forum_keywords }}</textarea></td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">������� �� ������<br/>
				<small></small>
			</td>
			<td width="50%" class="contentEntry2">
				<input type="password" size="80" name="forum_lock_passwd" value="{{ forum_lock_passwd }}"/></td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">��������<br/>
				<small></small>
			</td>
			<td width="50%" class="contentEntry2">
				<input type="password" size="80" name="forum_redirect_url" value="{{ forum_redirect_url }}"/></td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">����������<br/>
				<small>������� ������ ������������� ����� �������</small>
			</td>
			<td width="50%" class="contentEntry2">
				<input type="text" size="80" name="forum_moderators" value="{{ forum_moderators }}"/></td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">��������� ����</td>
			<td width="50%" class="contentEntry2">{{ m_topic_send }}</td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">������������� ����</td>
			<td width="50%" class="contentEntry2">{{ m_topic_modify }}</td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">��������� ����</td>
			<td width="50%" class="contentEntry2">{{ m_topic_closed }}</td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">������� ����</td>
			<td width="50%" class="contentEntry2">{{ m_topic_remove }}</td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">�������� � �����</td>
			<td width="50%" class="contentEntry2">{{ m_post_send }}</td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">������������� ���������</td>
			<td width="50%" class="contentEntry2">{{ m_post_modify }}</td>
		</tr>
		<tr>
			<td width="50%" class="contentEntry1">������� ���������</td>
			<td width="50%" class="contentEntry2">{{ m_post_remove }}</td>
		</tr>
	</table>
	<div id="userTabs">
		<ul>
			{% for entry in list_group %}
				<li><a href="#userTabs-{{ entry.group_id }}">{{ entry.group_name }}</a></li>
			{% endfor %}
		</ul>
		{% for entry in list_group %}
			<div id="userTabs-{{ entry.group_id }}">
				<div><i>���������� ������� ������ �������������: <b>{{ entry.group_name }}</b></i></div>
				<br/>
				<div class="pconf">
					<h1></h1>

					<h2>��������� ����</h2>

					<table width="100%" class="content">
						<thead>
						<tr class="contHead">
							<td><b>��������</b></td>
							<td><b>��������</b></td>
							<td width="90"><b>������</b></td>
							</td>
						</thead>
						<tr class="contentEntry1">
							<td><strong>������������� �����</strong></td>
							<td>-</td>
							<td>
								{{ entry.forum_read }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������������� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_read }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>��������� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_send }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>����������� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_modify }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������������� ���� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_modify_your }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>��������� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_closed }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>��������� ���� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_closed_your }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_remove }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������� ���� ����</strong></td>
							<td>-</td>
							<td>
								{{ entry.topic_remove_your }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>��������� �����</strong></td>
							<td>-</td>
							<td>
								{{ entry.post_send }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������������� �����</strong></td>
							<td>-</td>
							<td>
								{{ entry.post_modify }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������������� ���� �����</strong></td>
							<td>-</td>
							<td>
								{{ entry.post_modify_your }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������� �����</strong></td>
							<td>-</td>
							<td>
								{{ entry.post_remove }}
							</td>
						</tr>
						<tr class="contentEntry1">
							<td><strong>������� ���� �����</strong></td>
							<td>-</td>
							<td>
								{{ entry.post_remove_your }}
							</td>
						</tr>
					</table>
					<br/>
				</div>
			</div>
		{% endfor %}
	</div>
	<script type="text/javascript">
		$(function () {
			$("#userTabs").tabs();
		});
	</script>
	<table border="0" width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td width="100%" colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td width="100%" colspan="2" class="contentEdit" align="center">
				<input type="submit" name="submit" value="��������� �����" class="button"/></td>
		</tr>
	</table>
</form>