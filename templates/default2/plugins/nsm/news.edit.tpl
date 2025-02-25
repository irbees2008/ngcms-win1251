<script language="javascript" type="text/javascript">

	//
	// Global variable: ID of current active input area
		{% if (flags.edit_split) %}var currentInputAreaID = 'ng_news_content_short';
		{% else %}var currentInputAreaID = 'ng_news_content';{% endif %}

	function preview() {
		var form = document.getElementById("postForm");
		if (form.ng_news_content{% if (flags.edit_split) %}_short{% endif %}.value == '' || form.title.value == '') {
			alert('{{ lang.nsm['err.preview'] }}');
			return false;
		}

		form['mod'].value = "preview";
		form.target = "_blank";
		form.submit();

		form['mod'].value = "news";
		form.target = "_self";
		return true;
	}

	function changeActive(name) {
		if (name == 'full') {
			document.getElementById('container.content.full').className = 'contentActive';
			document.getElementById('container.content.short').className = 'contentInactive';
			currentInputAreaID = 'ng_news_content_full';
		} else {
			document.getElementById('container.content.short').className = 'contentActive';
			document.getElementById('container.content.full').className = 'contentInactive';
			currentInputAreaID = 'ng_news_content_short';
		}
	}
</script>

<form name="DATA_tmp_storage" action="" id="DATA_tmp_storage">
	<input type=hidden name="area" value=""/>
</form>
<form name="form" ENCTYPE="multipart/form-data" method="post" action="{{ php_self }}" id="postForm">
	<input type="hidden" name="token" value="{{ token }}"/>
	<input type="hidden" name="mod" value="news"/>
	<input type="hidden" name="action" value="edit"/>
	<input type="hidden" name="subaction" value="submit"/>
	<div class="post">
		<div class="post-header">
			<div class="post-title">�������������� �������:</div>
		</div>
		<div style="height: 10px;"></div>
		<div class="post-text">
			<p>
			<table border="0" width="100%">
				<tr>
					<th><a role="button" href="{{ listURL }}">������� � ������ ����� ��������</a></th>
				</tr>
			</table>
			<div style="height: 20px;"></div>
			<table border="0" width="100%">
				<tr>
					<td width="30%">���������:</td>
					<td width="70%"><input type="text" name="title" class="input" value="{{ title }}"/></td>
				</tr>
				<tr>
					<td width="30%">����. ���:</td>
					<td width="70%">
						<input type="text" name="alt_name" class="input" value="{{ alt_name }}" {% if flags['altname.disabled'] %}disabled="disabled" {% endif %} />
					</td>
				</tr>
				<tr>
					<td width="30%">���������:</td>
					<td width="70%">{{ mastercat }}</td>
				</tr>
				{% if flags['multicat.show'] %}
					<tr>
						<td width="30%">�������������� ���������:</td>
						<td width="70%">{{ extcat }}</td>
					</tr>
				{% endif %}
				{% if (flags.edit_split) %}
					<tr>
						<td colspan="2">
							<b>������� ����� ���������:</b> (�����������)
							<div>
								<div>{{ quicktags }}<br/> {{ smilies }}</div>
								<textarea onclick="changeActive('short');" onfocus="changeActive('short');" name="ng_news_content_short" id="ng_news_content_short" style="width:98%;" rows="15" class="textarea">{{ content.short }}</textarea>
							</div>
						</td>
					</tr>
					{% if (flags.extended_more) %}
						<tr>
							<td width="30%">�����������:</td>
							<td width="70%">
								<input tabindex="2" type="text" name="content_delimiter" value="{{ content.delimiter }}" style="width: 98%;" class="input" value=""/>
							</td>
						</tr>
					{% endif %}
					<tr>
						<td colspan="2">
							<b>�������� ���������:</b> (�������������)
							<div>
								<div>{{ quicktags }}<br/> {{ smilies }}</div>
								<textarea onclick="changeActive('full');" onfocus="changeActive('full');" name="ng_news_content_full" id="ng_news_content_full" style="width:98%;" rows="15" class="textarea">{{ content.full }}</textarea>
							</div>
						</td>
					</tr>
				{% else %}
					<tr>
						<td colspan="2">
							<div>
								<div>{{ quicktags }}<br/> {{ smilies }}</div>
								<textarea name="ng_news_content" id="ng_news_content" style="width:98%;" rows="15" class="textarea">{{ content.short }}</textarea>
							</div>
						</td>
					</tr>
				{% endif %}
				<tr>
					<td colspan="2">
						<div>
							{% if not flags['mainpage.disabled'] %}
								<label><input type="checkbox" name="mainpage" value="1" id="mainpage" {% if (flags.mainpage) %}checked="checked" {% endif %}{% if flags['mainpage.disabled'] %}disabled {% endif %} /> {{ lang.editnews['mainpage'] }}
								</label><br/>
							{% endif %}
							{% if not flags['pinned.disabled'] %}
								<label><input type="checkbox" name="pinned" value="1" id="pinned" {% if (flags.pinned) %}checked="checked" {% endif %}{% if flags['pinned.disabled'] %}disabled {% endif %} /> {{ lang.editnews['add_pinned'] }}
								</label><br/>
							{% endif %}
							{% if not flags['catpinned.disabled'] %}
								<label><input type="checkbox" name="catpinned" value="1" id="catpinned" {% if (flags.catpinned) %}checked="checked" {% endif %}{% if flags['catpinned.disabled'] %}disabled {% endif %} /> {{ lang.editnews['add_catpinned'] }}
								</label><br/>
							{% endif %}
							{% if not flags['favorite.disabled'] %}
								<label><input type="checkbox" name="favorite" value="1" id="favorite" {% if (flags.favorite) %}checked="checked" {% endif %}{% if flags['favorite.disabled'] %}disabled {% endif %} /> {{ lang.editnews['add_favorite'] }}
								</label><br/>
							{% endif %}
							{% if not flags['html.disabled'] %}
								<label><input name="flag_HTML" type="checkbox" id="flag_HTML" value="1" {% if (flags['html.disabled']) %}disabled {% endif %}{% if flags['html'] %}checked="checked"{% endif %} /> {{ lang.editnews['flag_html'] }}
								</label><br/>
								<label><input type="checkbox" name="flag_RAW" value="1" id="flag_RAW" {% if (flags['html.disabled']) %}disabled {% endif %}{% if flags['html'] %}checked="checked"{% endif %} /> {{ lang.editnews['flag_raw'] }}
								</label><br/>
							{% endif %}
						</div>
					</td>
				</tr>
				{% if flags['params.lost'] %}
					<tr>
						<td colspan="2">
							<div>
								�������� �������� - � ��� ������������ ���� ��� ������������ ��������������
								�������.<br/>
								��� ���������� ����� ����������� ��������� ���������:<br/><br/>
								{% if flags['publish.lost'] %}&#8594; ������� ����� ����� � ����������{% endif %}
								{% if flags['html.lost'] %}&#8594; � ������� ����� ��������� ������������� HTML ����� � ������������������{% endif %}
								{% if flags['mainpage.lost'] %}&#8594; ������� ����� ������ � ������� ��������{% endif %}
								{% if flags['pinned.lost'] %}&#8594; � ������� ����� ����� ������������ �� �������{% endif %}
								{% if flags['catpinned.lost'] %}&#8594; � ������� ����� ����� ������������ � ���������{% endif %}
								{% if flags['favorite.lost'] %}&#8594; ������� ����� ������� �� �������� ��������������{% endif %}
								{% if flags['multicat.lost'] %}&#8594; �� ������� ����� ������� ��� �������������� ���������{% endif %}
							</div>
						</td>
					</tr>
				{% endif %}
			</table>
			<div style="height: 10px;"></div>
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr align="center">
					<td width="100%" valign="top">
						<input type="hidden" name="id" value="{{ id }}"/>
						{% if flags.editable %}
							<select size="1" disabled>
								<option>{% if (approve == -1) %}{{ lang.editnews['state.draft'] }}{% elseif (approve == 0) %}{{ lang.editnews['state.unpublished'] }}{% else %}{{ lang.editnews['state.published'] }}{% endif %}</option>
							</select> &#8594;
							<select size="1" name="approve" id="approve">
								{% if flags.can_draft %}
									<option value="-1" {% if (approve == -1) %}selected="selected"{% endif %}>{{ lang.editnews['state.draft'] }}</option>{% endif %}
								{% if flags.can_unpublish %}
									<option value="0" {% if (approve == 0) %}selected="selected"{% endif %}>{{ lang.editnews['state.unpublished'] }}</option>{% endif %}
								{% if flags.can_publish %}
									<option value="1" {% if (approve == 1) %}selected="selected"{% endif %}>{{ lang.editnews['state.published'] }}</option>{% endif %}
							</select>
							<button class="btn" type="submit" onclick="return approveMode(-1);"><span>���������</span>
							</button>{% endif %}
						<button class="btn" type="button" onClick="preview()"><span>��������</span></button>
						{% if flags.deleteable %}
							<button class="btn" type="button" onClick="confirmit('{{ deleteURL }}', '{{ lang.editnews['sure_del'] }}')">
								<span>�������</span></button>{% endif %}
					</td>
				</tr>
			</table>
			</p>
		</div>
	</div>
</form>

<script language="javascript" type="text/javascript">
	// Restore variables if needed
	var jev = {{ JEV }};
	var form = document.getElementById('postForm');
	for (i in jev) {
		//try { alert(i+' ('+form[i].type+')'); } catch (err) {;}
		if (typeof(jev[i]) == 'object') {
			for (j in jev[i]) {
				//alert(i+'['+j+'] = '+ jev[i][j]);
				try {
					form[i + '[' + j + ']'].value = jev[i][j];
				} catch (err) {
					;
				}
			}
		} else {
			try {
				if ((form[i].type == 'text') || (form[i].type == 'textarea') || (form[i].type == 'select-one')) {
					form[i].value = jev[i];
				} else if (form[i].type == 'checkbox') {
					form[i].checked = (jev[i] ? true : false);
				}
			} catch (err) {
				;
			}
		}
	}
</script>