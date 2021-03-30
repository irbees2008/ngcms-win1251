<!-- breadcrumb -->
				<div class="row breadcrumb">
					<ol class="breadcrumb-entry">
						<li><a href="admin.php">{{ lang['home'] }}</a></li>
						<li class="active"><a href="admin.php?mod=dbo">{{ lang.dbo.title }}</a></li>
					</ol>
				</div>
<!-- /breadcrumb -->
<div class="row">
     <div class="col-md-12">	
         <div class="panel panel-default">
<!-- FORM: Perform actions with tables -->
             <form name="form" method="post" action="{{php_self}}?mod=dbo">
                 <input type="hidden" name="subaction" value="modify" />
                 <input type="hidden" name="token" value="{{ token }}" />
                 <input type="hidden" name="massbackup" value="" />
                 <input type="hidden" name="cat_recount" value="" />
                 <input type="hidden" name="masscheck" value="" />
                 <input type="hidden" name="massrepair" value="" />
                 <input type="hidden" name="massoptimize" value="" />
                 <input type="hidden" name="massdelete" value="" />
				     <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                             <th>{{ lang.dbo.table }}</th>
                             <th>{{ lang.dbo.rows }}</th>
                             <th>{{ lang.dbo.data }}</th>
                             <th>{{ lang.dbo.overhead }}</th>
                             <th><input id="master_box" class="check" type="checkbox" name="master_box" title="{l_select_all}" onclick="javascript:check_uncheck_all(form, 'tables')" /><label for="master_box"></label></th>
                         </tr>
						</thead>
                        <tbody>
{% for tbl in tables %}
	                     <tr>
	                         <td>{{ tbl.table }}</td>
	                         <td>{{ tbl.rows }}</td>
	                         <td>{{ tbl.data }}</td>
	                         <td>{{ tbl.overhead }}</td>
	                         <td><input id="{{ tbl.table }}" name="tables[]" value="{{ tbl.table }}" class="check" type="checkbox"/><label for="{{ tbl.table }}"></label></td>
	                     </tr>
{% endfor %}
                        </tbody> 
                    </table>
					<div class="panel-footer">
                                 <div class="panel-body">
                                     <button type="submit" class="btn btn-primary" onclick="document.forms['form'].cat_recount.value = 'true';">{{ lang.dbo.cat_recount }}</button>
                                     <button type="submit" class="btn btn-info" onclick="document.forms['form'].masscheck.value = 'true';">{{ lang.dbo.check }}</button> 
                                     <button type="submit" class="btn btn-success" onclick="document.forms['form'].massrepair.value = 'true';">{{ lang.dbo.repair }}</button> 
                                     <button type="submit" class="btn btn-success" onclick="document.forms['form'].massoptimize.value = 'true';">{{ lang.dbo.optimize }}</button>
                                     <button type="submit" class="btn btn-warning" onclick="document.forms['form'].massdelete.value = 'true';">{{ lang.dbo.delete }}</button>
                                 </div>
                        
                                 <div class="panel-body">
                                     <input type="checkbox" id="gz" name="gzencode" value="1" />{{ lang.dbo.gzencode }}<label for="gz"></label>
                                     <input type="checkbox" id="email" name="email_send" value="1"  />{{ lang.dbo.email_send }}<label for="email"></label>
                                     <button type="submit" class="btn btn-warning" onclick="document.forms['form'].massbackup.value = 'true';">{{ lang.dbo.backup }}</button>
                                 </div>
                          
                         
					</div>	
              </form>
         </div>
     </div>
</div>


<!-- FORM: Perform actions with backups -->
<form name="backups" method="post" action="{{php_self}}?mod=dbo">
     <input type="hidden" name="subaction" value="modify" />
     <input type="hidden" name="token" value="{{ token }}" />
     <input type="hidden" name="delbackup" value="" />
     <input type="hidden" name="massdelbackup" value="" />
     <input type="hidden" name="restore" value="" />
         <div class="row">
             <div class="col-md-12">
                 <div class="panel panel-default">
                     <div class="panel-body">
                         {{restore}} 
                     </div>
                     <div class="panel-body">
                         <button type="submit" class="btn btn-primary" onclick="document.forms['backups'].restore.value = 'true';">{{ lang.dbo.restore }}</button>
                         <button type="submit" class="btn btn-success" onclick="document.forms['backups'].delbackup.value = 'true';">{{ lang.dbo.delete }}</button>
                         <button type="submit" class="btn btn-warning" onclick="document.forms['backups'].massdelbackup.value = 'true';">{{ lang.dbo.deleteall }}</button>
                     </div>
                 </div>
             </div>
         </div>
</form>
