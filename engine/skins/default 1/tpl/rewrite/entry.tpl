<tr class="contentEntry1" id="re.row.{id}">
 <td width="30px;"><a href="#" onclick="reMoveUp({id}); return false;"><i class="fa fa-arrow-up"></i></a><a href="#" onclick="reMoveDown({id}); return false;"><i class="fa fa-arrow-down"></i></a></td>
 <td class="contentEntry1" id="re.{id}.id">{id}</td>
 <td class="contentEntry1" id="re.{id}.pluginName" width="40px">{pluginName}</td>
 <td class="contentEntry1" id="re.{id}.handlerName" width="50px">{handlerName}</td>
 <td class="contentEntry1" id="re.{id}.description">{description}</td>
 <td class="contentEntry1" id="re.{id}.regex">{regex}</td>
 <td class="contentEntry1" id="re.{id}.flags">{flags}</td>
 <td class="contentEntry1" align="right" width="70px;">
  <input id="btn.{id}" type="button"class="navbutton" style="padding: 2px 2px;" value="Edit" onclick="reEditRow({id});"/>
  <input id="btn.del.{id}" type="button" class="navbutton" style="padding: 2px 2px;" value="Del" onclick="reDeleteRow({id});"/>
 </td>
</tr>
