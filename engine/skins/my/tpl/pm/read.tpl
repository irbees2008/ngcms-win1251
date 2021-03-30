<form method="POST" action="{php_self}?mod=pm&action=reply&pmid={pmid}">
<input type="hidden" name="title" value="{title}">
<input type="hidden" name="from" value="{from}">
<!-- breadcrumb -->
<div class="row breadcrumb">
	<ol class="breadcrumb-entry">
		<li><a href="admin.php">{l_home}</a></li>
		<li class="active"><a href="?mod=pm">{l_pm}</a></li>
	</ol>
</div>
<!-- /breadcrumb -->
<div class="row">
	 <div class="col-md-12">
	     <div class="panel panel-default">
			<div class="panel-heading">{title}</div>
				<div class="panel-body">
                    <div style="margin: 10px 0;"><blockquote>{content}</blockquote></div>
		        <div class="panel-footer">
					 <button type="submit" class="btn btn-primary">{l_reply}</button>
                </div>
	        
        </div>
	</div>
</div>
</form>