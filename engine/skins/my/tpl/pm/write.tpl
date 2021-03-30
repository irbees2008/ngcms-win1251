<form method=post name=form action="{php_self}?mod=pm&action=send">
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
			<div class="panel-heading">{l_content}</div>
				<div class="panel-body">
                    <div style="margin: 10px 0;">{quicktags}</div>
				    <div style="margin: 10px 0;">
                        <textarea name="content" id="content" rows="10" cols="60" tabindex="1" maxlength="3000" class="form-control" /></textarea>
				    </div>
                </div>
                <div class="panel-heading">{l_additional}</div>
                <div class="panel-body">
				    <div class="form-group">
                    <label class="col-sm-3 control-label">{l_title}</label>
					<div class="col-sm-9">
						<input type="text" class=important  name="title" tabindex="2" maxlength="50" class="form-control" />
					</div>
					</div>
					<div class="form-group">
					<label class="col-sm-3 control-label">{l_receiver}<br /><small>{l_receiver_desc}</small></label>
					<div class="col-sm-9">
					    <input type="text" name="sendto"  tabindex="3" maxlength="70" class="form-control"/>
					</div>
					</div>
				</div>
		        <div class="panel-footer">
					 <button type="submit" class="btn btn-primary">{l_send}</button>
                </div>
	        
        </div>
	</div>
</div>
</form>