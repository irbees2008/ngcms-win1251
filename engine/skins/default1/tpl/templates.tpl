<div  class="comments-area">
<h3 id="reply-title" class="comment-reply-title"><a href="admin.php?mod=templates">{{ lang.templates['title'] }}</a></h3>


<form name="selectForm" id="selectForm">
<table border="0" cellspacing="0" cellpadding="0" >
<tr align="center">
<td width="100%" class="contentNav" align="left" valign="top">
<label><input id="selectTypeTemplate" type="radio" name="selectType" value="template" checked="checked" /> Шаблон(ы) сайта: </label><select name="selectTemplate" id="selectTemplate">
{% for st in siteTemplates %}
<option value="{{ st.name }}">{{ st.name }} ({{ st.title }})</option>
{% endfor %}
</select><br/>
<label><input id="selectTypePlugin" type="radio" name="selectType" value="plugin" /> Шаблон плагинов</label><br/>
<input type="button" value="Выбрать" class="navbutton" onclick="submitTemplateSelector();"/>
</td>
</tr>
</table>
</form>


<!-- BLOCK TEMPLATES -->

<h3 id="reply-title" class="comment-reply-title">Редактирование шаблона [ <b><span id="templateNameArea">default</span> </b>]</h3>
<table>
<tr>
 <td style="width: 20%; float: left; ">
  <div id="fileTreeSelector" style="overflow: auto; width: 99%; height: 578px; background-color: #ABCDEF; float: left; ">TEST CONTENT</div>
  <div style="width: 100%; background-color: #E0E0E0; padding: 3px; ">
  </div>
 </td>
 <td style="width: 80%; height:578px;float: left;">
  <div id="fileEditorInfo" style="padding: 3px; background-color: #E0E0E0;">&nbsp;</div>
  <div id="fileEditorContainer" style="width: 100%; padding: 0px; margin: 0px; height: 540px;">
  <textarea id="fileEditorSelector" wrap="off" style="width: 100%; height: 100%; float: left; background-color: #EEEEEE; white-space: nowrap; font-family: monospace; font-size: 10pt;">*** EDITOR ***</textarea>
  <div id="imageViewContainer" style="display: none; height: 100%; width: 100%; vertical-align: middle;"></div>
  </div>
  </td>
</tr>
<tr>
<td>
  <div id="fileEditorButtonLine" >
  <input type="button" class="navbutton" value="Сохранить изменения" onclick="submitTemplateEdit();" /></div>
 </td>
</tr>
</table>


<script type="text/javascript" src="{{ home }}/lib/ngFileTree.js"></script>
<link rel="stylesheet" href="{{ home }}/lib/ngFileTree.css" type="text/css" media="screen" />
<script type="text/javascript" language="javascript">
var ngTemplateName = 'default';
var ngFileName = '';
var ngFileType = '';
var ngFileContent = '';
var ngFileTreeParams = { root: '/', script: '/engine/rpc.php', securityToken : '{{ token }}', templateName : ngTemplateName };

var ngFileTreeFunc = function(file) {
        ngFileName = file;
        ngShowLoading();
		$.post('/engine/rpc.php', { json : 1, methodName : 'admin.templates.getFile', rndval: new Date().getTime(), params : json_encode({ template : ngTemplateName, 'file' : file, token : '{{ token }}' }) }, function(data) {
			ngHideLoading();
			// Try to decode incoming data
			try {
				resTX = eval('('+data+')');
			} catch (err) { alert('Error parsing JSON output. Result: '+linkTX.response); }
			if (!resTX['status']) {
				ngNotifyWindow('Error ['+resTX['errorCode']+']: '+resTX['errorText'], 'ERROR');
			}

			ngFileContent = '';
			ngFileType = resTX['type'];

			$('#fileEditorInfo').html(((ngFileType == 'image')?'Image':'File')+' name: <b>'+ngFileName+'</b> ('+resTX['size']+' bytes)<br/>Last change time: '+resTX['lastChange']);

			if (resTX['type'] == 'image') {
				document.getElementById('imageViewContainer').style.display = 'block';
				document.getElementById('fileEditorSelector').style.display = 'none';
				$('#imageViewContainer').html(resTX['content']);
			} else {
				document.getElementById('imageViewContainer').style.display = 'none';
				document.getElementById('fileEditorSelector').style.display = 'block';
				$('#fileEditorSelector').val(resTX['content']);
				ngFileContent = resTX['content'];
			}
		}, "text").error(function() { ngHideLoading(); ngNotifyWindow('HTTP error during request', 'ERROR'); });
}

function submitTemplateSelector() {
	var selectMode		= $('input[name=selectType]:checked', '#selectForm').val();
	var selectTemplate	= $('[name=selectTemplate]', '#selectForm').val();

	$('#fileEditorInfo').html('');
	$('#imageViewContainer').html('');
	$('#fileEditorSelector').val('');

	ngFileName = '';

	if (selectMode == 'template') {
		ngTemplateName = selectTemplate;
		ngFileTreeParams['templateName'] = ngTemplateName;

		$('#fileTreeSelector').ngFileTree(ngFileTreeParams, ngFileTreeFunc);
		$('#templateNameArea').html(ngTemplateName);
	} else {
		ngTemplateName = '#plugins';
		ngFileTreeParams['templateName'] = ngTemplateName;
		$('#fileTreeSelector').ngFileTree(ngFileTreeParams, ngFileTreeFunc);
		$('#templateNameArea').html(' PLUGIN TEMPLATES ');
	}
}

function submitTemplateEdit() {
	var editedContent = $('#fileEditorSelector').val();

	ngShowLoading();
	$.post('/engine/rpc.php', { json : 1, methodName : 'admin.templates.updateFile', rndval: new Date().getTime(), params : json_encode({ template : ngTemplateName, 'file' : ngFileName, token : '{{ token }}', 'content' : editedContent }) }, function(data) {
		ngHideLoading();
		// Try to decode incoming data
		try {
			resTX = eval('('+data+')');
		} catch (err) { alert('Error parsing JSON output. Result: '+linkTX.response); }
		if (!resTX['status']) {
			ngNotifyWindow('Error ['+resTX['errorCode']+']: '+resTX['errorText'], 'ERROR');
		} else {
			ngNotifyWindow(resTX['content'], 'RESULT');
		}
	}, "text").error(function() { ngHideLoading(); ngNotifyWindow('HTTP error during request', 'ERROR'); });


//	ngNotifyWindow('Test MSG', 'Test Title');
}

$(document).ready( function() {
    $('#fileTreeSelector').ngFileTree(ngFileTreeParams, ngFileTreeFunc);
});

</script>
</div>