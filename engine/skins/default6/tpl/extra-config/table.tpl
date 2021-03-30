<!-- Navigation bar -->
<ul class="breadcrumb">
	<li><a href="admin.php">{l_home}</a></li>
	<li><a href="admin.php?mod=extras" title="{l_extras}">{l_extras}</a></li>
	<li class="active">{plugin}</li>
</ul>

<style>
input:not([type="submit"]):not([type="button"]):not([type="reset"]),
select,
textarea {
	display: block;
	width: 100%!important;
	height: 34px;
	padding: 6px 12px;
	font-size: 15px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
	box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
	-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
	transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
input:not([type="submit"]):not([type="button"]):not([type="reset"]):focus,
select:focus,
textarea:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
textarea {
    /*height: auto;*/
	min-height: 60px;
}
.table>tbody>tr:first-child {
	margin-bottom: 20px
}
.table>tbody>tr:first-child,
.table>tbody>tr:first-child small {
	font-size: 18px;
	display: block;
}
.table>tbody>tr td:first-child small {
	display: block;
}
.table>tbody>tr:first-child{
		background-color: #f5f5f5;
	border: 1px solid #e3e3e3;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
	box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
	padding: 19px;
}
.table>tbody>tr:first-child td {
	border: 0;
}
</style>

<!-- Info content -->
<div class="page-main">
	<form method="post" action="{php_self}?mod=extra-config" name="form">
		<input type="hidden" name="token" value="{token}">
		<input type="hidden" name="plugin" value="{plugin}">
		<input type="hidden" name="action" value="commit">
		
		<table class="content table table-condensed">
			{entries}
			<tr>
				<td colspan="2" class="text-center"><input type="submit" value="{l_commit_change}" class="btn btn-success"></td>
			</tr>
		</table>
	</form>
</div>