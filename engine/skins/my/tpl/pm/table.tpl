<form name="form" method="POST" action="{php_self}?mod=pm&action=delete">

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
			 <div class="panel-heading">Личка</div>
            <table class="table panel-body">
                <tr align="center" class="panel-heading">
                    <td width="15%" >{l_pmdate}</td>
                    <td width="40%" >{l_title}</td>
                    <td width="25%" >{l_from}</td>
                    <td width="15%" >{l_status}</td>
                    <td width="5%" ><input class="check" type="checkbox" name="master_box" title="{l_select_all}" onclick="javascript:check_uncheck_all(form)"></td>
                </tr>
                   {entries}
                <tr>
                    <td width=100% colspan="5">&nbsp;</td>
                </tr>
               
            </table>
			<div class="panel-footer">
				<button type="submit" class="btn btn-primary">{l_delete}</button>
                <button form="example" type="submit" class="btn btn-primary">{l_write}</button>
            </div>
	    </div>
	</div>
</div>
</form>
<form id="example" name="pm" method="POST" action="{php_self}?mod=pm&action=write">
</form>
