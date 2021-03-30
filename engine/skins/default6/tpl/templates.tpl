<!-- Navigation bar -->
<ul class="breadcrumb">
	<li><a href="admin.php">{{ lang['home'] }}</a></li>
	<li class="active">{{ lang.templates['title'] }}</li>
</ul>

<!-- Info content -->
<div class="page-main">
	<div class="row">
		<div class="col col-sm-5 col-md-4">
			<ul class="nav nav-tabs nav-justified">
				<li class="dropdown active">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						{{ lang.templates['tplsite'] }} <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
							{% for st in siteTemplates %}
							<li value="{{ st.name }}"><a href="#" data-toggle="tab" onclick="submitTemplateSelector('{{ st.name }}');">{{ st.name }} ({{ st.title }})</a></li>
							{% endfor %}
					</ul>
				</li>
				<li><a href="#" data-toggle="tab" onclick="submitTemplateSelector();">{{ lang.templates['tplmodules'] }}</a></li>
			</ul>
			
		</div>
		<div class="col col-sm-7 col-md-8"></div>
	</div>
	<div class="row">
		<div class="col col-sm-5 col-md-4">
			<div id="fileTreeSelector" class="well" style="overflow:auto; height: 620px;">TEST CONTENT</div>
		</div>
		<div class="col col-sm-7 col-md-8" style="height: 100%;">
			<div class="well">
				{{ lang.templates['tpl.edit'] }} [ <b><span id="templateNameArea">default</span> </b>]
				<div id="fileEditorInfo" style=" ">&nbsp;</div>
			</div>
			<div id="fileEditorContainer" class="Code-to-Mirror ">
				<textarea id="fileEditorSelector" wrap="off" style="width: 100%; height: 100%; background-color: #EEEEEE; white-space: nowrap; font-family: monospace; font-size: 10pt;" class="form-control">*** EDITOR ***</textarea>
				<div id="imageViewContainer" style="display: none; height: 100%; width: 100%; vertical-align: middle;"></div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col col-sm-5 col-md-4"></div>
		<div class="col col-sm-7 col-md-8">
			<div class="form-group">
				<input type="button" class="btn btn-success" value="Save file" onclick="submitTemplateEdit();">
			</div>
		</div>
	</div>
</div>

<link rel="stylesheet" href="{{ home }}/lib/codemirror/codemirror.css">
<script type="text/javascript" src="{{ home }}/lib/codemirror/codemirror.js"></script>

<script type="text/javascript" src="{{ home_url }}/lib/ngFileTree.js"></script>
<link rel="stylesheet" href="{{ home_url }}/lib/ngFileTree.css" type="text/css" media="screen" />
<script type="text/javascript" language="javascript">
var ngTemplateName = 'default';
var ngFileName = '';
var ngFileType = '';
var ngFileContent = '';
var ngFileTreeParams = { root: '/', script: '../engine/rpc.php', securityToken : '{{ token }}', templateName : ngTemplateName };

var ngFileTreeFunc = function(file) {
        ngFileName = file;
        ngShowLoading();
		$.post('../engine/rpc.php', { json : 1, methodName : 'admin.templates.getFile', rndval: new Date().getTime(), params : json_encode({ template : ngTemplateName, 'file' : file, token : '{{ token }}' }) }, function(data) {
			ngHideLoading();
			// Try to decode incoming data
			try {
				resTX = eval('('+data+')');
			} catch (err) {
				$.notify({message: 'Error parsing JSON output (mod=templates). Result: '+resTX.response},{type: 'danger'});
			}
			if (!resTX['status']) {
				$.notify({message: 'Error ['+resTX['errorCode']+']: '+resTX['errorText']},{type: 'danger'});
			}

			ngFileContent = '';
			ngFileType = resTX['type'];

			$('#fileEditorInfo').html(((ngFileType == 'image')?'Image':'File')+' name: <b>'+ngFileName+'</b> ('+resTX['size']+' bytes)<br/>Last change time: '+resTX['lastChange']);

			if (resTX['type'] == 'image') {
				document.getElementById('imageViewContainer').style.display = 'block';
				document.getElementById('fileEditorSelector').style.display = 'none';
				$('#imageViewContainer').html(resTX['content']);
				// Remove previous codemirror (if installed)
				$(".CodeMirror").remove();
			} else {
				document.getElementById('imageViewContainer').style.display = 'none';
				document.getElementById('fileEditorSelector').style.display = 'block';
				$('#fileEditorSelector').val(resTX['content']);

				// Remove previous codemirror (if installed)
				$(".CodeMirror").remove();

				// Install codemirror
				var edField = $('#fileEditorSelector');
				var eW = edField.width();
				var eH = edField.height();
				var cm = CodeMirror.fromTextArea(
					document.getElementById('fileEditorSelector'), {
				                lineNumbers: true,
				                //mode: i,
				       //         lineWrapping: true,
				                styleActiveLine: true,
				                tabMode: "indent",
				                extraKeys: {
				                	"F11": function(cm) {cm.setOption("fullScreen", !cm.getOption("fullScreen"));},
				                	"Esc": function(cm) {if (cm.getOption("fullScreen")) cm.setOption("fullScreen", false);}
				                }

				});
				cm.setSize(eW, eH);
				cm.on("change", function(cm) {
					$("#fileEditorSelector").val(cm.getValue());
				});

				ngFileContent = resTX['content'];
			}
		}, "text").error(function() { ngHideLoading(); $.notify({message: 'HTTP error during request'},{type: 'danger'}); });
}

function submitTemplateSelector(selTpl = false) {
	var selectMode		= $('input[name=selectType]:checked', '#selectForm').val();
	var selectTemplate	= $('[name=selectTemplate]', '#selectForm').val();

	$('#fileEditorInfo').html('');
	$('#imageViewContainer').html('');
	$('#fileEditorSelector').val('');

	ngFileName = '';

	if (selTpl) {
		ngTemplateName = selTpl;
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
	$.post('../engine/rpc.php', { json : 1, methodName : 'admin.templates.updateFile', rndval: new Date().getTime(), params : json_encode({ template : ngTemplateName, 'file' : ngFileName, token : '{{ token }}', 'content' : editedContent }) }, function(data) {
		ngHideLoading();
		// Try to decode incoming data
		try {
			resTX = eval('('+data+')');
		} catch (err) {
			$.notify({message: 'Error parsing JSON output. Result: '+linkTX.response},{type: 'danger'});
		}
		if (!resTX['status']) {
			$.notify({message: 'Error ['+resTX['errorCode']+']: '+resTX['errorText']},{type: 'danger'});
		} else {
			$.notify({message: resTX['content']},{type: 'info'});
		}
	}, "text").error(function() { ngHideLoading(); $.notify({message: 'HTTP error during request'},{type: 'danger'}); });
}

$(document).ready( function() {
    $('#fileTreeSelector').ngFileTree(ngFileTreeParams, ngFileTreeFunc);
});

</script>