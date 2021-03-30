<!-- Navigation bar -->
<ul class="breadcrumb">
	<li><a href="admin.php">{{ lang['home'] }}</a></li>
	<li class="active">{{ lang.editnews['news_title'] }}</li>
</ul>

<!-- Info content -->
<div class="page-main">
	
	<div class="well">
		<!-- Filter form: BEGIN -->
		<form name="options_bar" id="options_bar" action="{{ php_self }}?mod=news" method="post">
			<div class="row">
				<!--Block 1-->
				<div class="col col-md-3 col-sm-6">
					<div class="form-group">
						<label for="">{{ lang.editnews['header.search'] }}</label>
						<input type="text" name="sl" id="sl" class="bfsearch form-control" value="{{ sl }}">
					</div>
					<div class="form-group">
						<label for="">��� ������</label>
						<select name="st" class="form-control">
							<option value="0" {% if (selected == '0') %}selected{% endif %}>{{ lang.editnews['header.stitle'] }}</option>
							<option value="1" {% if (selected == '1') %}selected{% endif %}>{{ lang.editnews['header.stext'] }}</option>
						</select>
					</div>
					<div class="form-group">
						<label>{{ lang.editnews['sort'] }}</label>
						<select name="sort" class="bfsortlist form-control">{{ sortlist }}</select>
					</div>
				</div>
				<!--/Block 1-->
				
				<!--Block 2-->
				<div class="col col-md-3 col-sm-6">
					<div class="form-group">
						<label>{{ lang.editnews.author }}</label>
						<input name="an" id="an" class="bfauthor form-control" type="text"  value="{{ an }}" autocomplete="off" />
						<span id="suggestLoader" style="width: 20px; visibility: hidden;"><img src="{{ skins_url }}/images/loading.gif"/></span>
					</div>
					<div class="form-group">
						<label>{{ lang.editnews['category'] }}</label>
						{{ category_select }}
					</div>
					<div class="form-group">
						<label>{{ lang.editnews['header.status'] }}</label>
						<select name="status" class="bfstatus form-control">
							<option value="">{{ lang.editnews['smode_all'] }}</option>
							{{ statuslist }}
						</select>
					</div>
				</div>
				<!--/Block 2-->
				
				<!--Block 3-->
				<div class="col col-md-3 col-sm-6">
					<div class="form-group">
						<label>{{ lang.editnews['header.date'] }} </label>
						<div class="input-group">
							<span class="input-group-addon">{{ lang.editnews['header.date_since'] }}&nbsp;&nbsp;&nbsp;</span>
							<input type="text" id="dr1" name="dr1" value="{{ dr1 }}" class="bfdate form-control">
						</div>
					</div>
					<div class="form-group">
						<label>{{ lang.editnews['header.date'] }} </label>
						<div class="input-group">
							<span class="input-group-addon">{{ lang.editnews['header.date_till'] }}</span>
							<input type="text" id="dr2" name="dr2" value="{{ dr2 }}" class="bfdate form-control">
						</div>
						
					</div>
					<div class="form-group">
						<label for="rpp">{{ lang['per_page'] }}</label>
						<div class="input-group">
							<input type="text" name="rpp" id="rpp" value="{{ rpp }}" class="form-control">
							<span class="input-group-btn">
								<button type="submit" class="btn btn-default">{{ lang['do_show'] }}</button>
							</span>
						</div>
					</div>
				</div>
				<!--/Block 3-->
				
				<!--Block 4-->
				<div class="col col-md-3 col-sm-6 text-right">
					{% if flags.allow_modify %}
					<div class="form-group">
						<label for="">&nbsp;</label>
						<a class="btn btn-success form-control" href="{{ php_self }}?mod=news&action=add"><i class="fa fa-plus"></i> {{ lang['add_news'] }}</a>
					</div>
					{% endif %}
				</div>
				<!--/Block 4-->
			</div>
		</form>
		<!-- Filter form: END -->
	</div>
	
	<div class="panel panel-default panel-table">
		<!-- List of news start here -->
		<form action="{{ php_self }}?mod=news" method="post" name="editnews">
			<input type="hidden" name="token" value="{{ token }}">
			<input type="hidden" name="mod" value="news">
			<input type="hidden" name="action" value="manage">
				
			<div class="panel-body table-responsive">
				
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>{{ lang.editnews['postid_short'] }}</th>
							<th>{{ lang.editnews['date'] }}</th>
							<th></th>
							<th>{{ lang.editnews['title'] }}</th>
							{% if (pluginIsActive('comments')) %}{% if flags.comments %}<th><img src="{{ skins_url }}/images/comments.gif" /></th>{% endif %}{% endif %}
							<th><img src="{{ skins_url }}/images/views.png" /></th>
							<th>{{ lang.editnews['category'] }}</th>
							<th>{{ lang.editnews['author'] }}</th>
							<th>{{ lang.editnews['status'] }}</th>
							<th><input type="checkbox" class="select-all"></th>
						</tr>
					</thead>
					
					<tbody>
					{% for entry in entries %}
						<tr>
							<td>{{ entry.newsid }}</td>
							<td>{{ entry.itemdate }}</td>
							<td>
								{% if entry.flags.mainpage %}<img src="{{ skins_url }}/images/mainpage.png" border="0" width="16" height="16" title="{{ lang['on_main'] }}"/> {% endif %}
								{% if (entry.attach_count > 0) %}<img src="{{ skins_url }}/images/attach.png" border="0" width="16" height="16" title="{{ lang['attach.count'] }}: {{ entry.attach_count }}"/> {% endif %}
								{% if (entry.images_count > 0) %}<img src="{{ skins_url }}/images/img_group.png" border="0" width="16" height="16" title="{{ lang['images.count'] }}: {{ entry.images_count }}"/> {% endif %}
							</td>
							<td>
								{% if entry.flags.editable %}<a href="{{ php_self }}?mod=news&amp;action=edit&amp;id={{ entry.newsid }}">{% endif %}{{ entry.title }}{% if entry.flags.editable %}</a>{% endif %}
							</td>
						  {% if (pluginIsActive('comments')) %}{% if entry.flags.comments %}<td style=" text-align:right;">{% if (entry.comments > 0) %}{{ entry.comments }}{% endif %}</td>{% endif %}{% endif %}
							<td>{% if entry.flags.isActive %}<a href="{{ entry.link }}" target="_blank">{% endif %}{% if (entry.views > 0) %}{{ entry.views }}{% else %}-{% endif %}{% if entry.flags.isActive %}</a>{% endif %}</td>
							<td>{{ entry.allcats }}</td>
							<td><a href="{{ php_self }}?mod=users&amp;action=editForm&amp;id={{ entry.userid }}">{{ entry.username }}</a></td>
							<td>{% if (entry.state == 1) %}<img src="{{ skins_url }}/images/yes.png" alt="{{ lang['state.published'] }}" />{% elseif (entry.state == 0) %}<img src="{{ skins_url }}/images/no.png" alt="{{ lang['state.unpiblished'] }}" />{% else %}<img src="{{ skins_url }}/images/no_plug.png" alt="{{ lang['state.draft'] }}" />{% endif %} </td>
							<td><input name="selected_news[]" value="{{ entry.newsid }}" class="check" type="checkbox" /></td>
						</tr>
						{% else %}
						<tr><td colspan="11"><p>{{ lang['not_found'] }}</p></td></tr>
						{% endfor %}
					</tbody>
				</table>
			</div>

			<div class="panel-footer">
				<div class="row">
					<div class="col col-sm-3">
						{% if flags.allow_modify %}
						<div class="form-group">
							<div class="input-group">
								<select name="subaction" class="form-control">
									<option value="">-- {{ lang.editnews['action'] }} --</option>
									<option value="mass_approve">{{ lang.editnews['approve'] }}</option>
									<option value="mass_forbidden">{{ lang.editnews['forbidden'] }}</option>
									<option value="" class="divider" disabled>===================</option>
									<option value="mass_mainpage">{{ lang.editnews['massmainpage'] }}</option>
									<option value="mass_unmainpage">{{ lang.editnews['massunmainpage'] }}</option>
									<option value="" class="divider" disabled>===================</option>
									<option value="mass_currdate">{{ lang.editnews['modify.mass.currdate'] }}</option>
									<option value="" class="divider" disabled>===================</option>
									{% if flags.comments %}<option value="mass_com_approve">{{ lang.editnews['com_approve'] }}</option>
									<option value="mass_com_forbidden">{{ lang.editnews['com_forbidden'] }}</option>
									<option value="" class="divider" disabled>===================</option>{% endif %}
									<option value="mass_delete">{{ lang.editnews['delete'] }}</option>
								</select>


								<!--select name="action" onchange="updateAction();" onclick="updateAction();" class="form-control">
									<option value="" class="divider">-- {{ lang['action'] }} --</option>
									<option value="massActivate">{{ lang['activate'] }}</option>
									<option value="massLock">{{ lang['lock'] }}</option>
									<option value="" class="divider" disabled>===================</option>
									<option value="massDel">{{ lang['delete'] }}</option>
									<option value="massDelInactive">{{ lang['delete_unact'] }}</option>
									<option value="" class="divider" disabled>===================</option>
									<option value="massSetStatus">{{ lang['setstatus'] }} &raquo;</option>
								</select-->
								

								
								<span class="input-group-btn"><button class="btn btn-default" type="submit" value="{{ lang['submit'] }}">{{ lang['ok'] }}</button>
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
		<!-- List of news: END -->
	</div>
</div>





<!-- DEBUG WINDOW <div id="debugWin" style="overflow: auto; position: absolute; top: 160px; left: 230px; width: 400px; height: 400px; background: white; 4px double black; padding: 2px; margin: 2px;">DEBUG WINDOW</div> -->

<!-- Hidden SUGGEST div -->
<div id="suggestWindow" class="suggestWindow">
<table id="suggestBlock" cellspacing="0" cellpadding="0" width="100%"></table>
<a href="#" align="right" id="suggestClose">{{ lang.editnews['close'] }}</a>
</div>

<script type="text/javascript" src="{{ scriptLibrary }}/ajax.js"></script>
<script type="text/javascript" src="{{ scriptLibrary }}/admin.js"></script>
<script type="text/javascript" src="{{ scriptLibrary }}/libsuggest.js"></script>
<script language="javascript" type="text/javascript">
<!--

function addEvent(elem, type, handler){
  if (elem.addEventListener){
    elem.addEventListener(type, handler, false)
  } else {
    elem.attachEvent("on"+type, handler)
  }
}

// DateEdit filter
function filter_attach_DateEdit(id) {
	var field = document.getElementById(id);
	if (!field)
		return false;

	if (field.value == '')
		field.value = 'DD.MM.YYYY';

	field.onfocus = function(event) {
		var ev = event ? event : window.event;
		var elem = ev.target ? ev.target : ev.srcElement;

		if (elem.value == 'DD.MM.YYYY')
			elem.value = '';

		return true;
	}


	field.onkeypress = function(event) {
		var ev = event ? event : window.event;
		var keyCode = ev.keyCode ? ev.keyCode : ev.charCode;
		var elem = ev.target ? ev.target : ev.srcElement;
		var elv = elem.value;

		isMozilla = false;
		isIE = false;
		isOpera = false;
		if (navigator.appName == 'Netscape') { isMozilla = true; }
		else if (navigator.appName == 'Microsoft Internet Explorer') { isIE = true; }
		else if (navigator.appName == 'Opera') { isOpera = true; }
		else { /* alert('Unknown navigator: `'+navigator.appName+'`'); */ }

		//document.getElementById('debugWin').innerHTML = 'keyPress('+ev.keyCode+':'+ev.charCode+')['+(ev.shiftKey?'S':'.')+(ev.ctrlKey?'C':'.')+(ev.altKey?'A':'.')+']<br/>' + document.getElementById('debugWin').innerHTML;

		// FF - onKeyPress captures functional keys. Skip anything with charCode = 0
		if (isMozilla && !ev.charCode)
			return true;

		// Opera - dumb browser, don't let us to determine some keys
		if (isOpera) {
			var ek = '';
			//for (i in event) { ek = ek + '['+i+']: '+event[i]+'<br/>\n'; }
			//alert(ek);
			if (ev.keyCode < 32) return true;
			if (!ev.shiftKey && ((ev.keyCode >= 33) && (ev.keyCode <= 47))) return true;
			if (!ev.keyCode) return true;
			if (!ev.which) return true;
		}


		// Don't block CTRL / ALT keys
		if (ev.altKey || ev.ctrlKey || !keyCode)
			return true;

		// Allow to input only digits [0..9] and dot [.]
		if (((keyCode >= 48) && (keyCode <= 57)) || (keyCode == 46))
			return true;

		return false;
	}

	return true;
}

-->
</script>

<script language="javascript" type="text/javascript">
$("#dr1").datepicker( { currentText: "{{ dr1 }}", dateFormat: "dd.mm.yy" });
$("#dr2").datepicker( { currentText: "{{ dr2 }}", dateFormat: "dd.mm.yy" });


function systemInit() {
var aSuggest = new ngSuggest('an',
								{
									'localPrefix'	: '{{ localPrefix }}',
									'reqMethodName'	: 'core.users.search',
									'lId'		: 'suggestLoader',
									'hlr'		: 'true',
									'iMinLen'	: 1,
									'stCols'	: 2,
									'stColsClass': [ 'cleft', 'cright' ],
									'stColsHLR'	: [ true, false ],
								}
							);

}

// Init system [ IE / Other browsers should be inited in different ways ]
if (document.body.attachEvent) {
	// IE
	document.body.onload = systemInit;
} else {
	// Others
	systemInit();
}

filter_attach_DateEdit('dr1');
filter_attach_DateEdit('dr2');
</script>
