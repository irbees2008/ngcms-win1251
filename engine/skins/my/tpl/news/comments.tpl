<tr align="center">
    <td><input form="commentsForm" type="checkbox" name="delcomid[]" id="{com_id}-{com_author}-{com_ip}-{com_post}" value="{com_id}-{com_author}-{com_ip}-{com_post}" class="check" /><label for="{com_id}-{com_author}-{com_ip}-{com_post}"></label></td>
    <td >[userlink]<a href="{com_url}">{com_author}</a>[/userlink]<br><small>{com_time}</small><br> <a href="{php_self}?mod=ipban&iplock={com_ip}" target="_blank" title="{l_block_ip} {com_ip}"> ip </a></td>
    <td  align="left">{com_part}</td>
    <td ><a href="{php_self}?mod=editcomments&newsid={com_post}&comid={com_id}" title="{l_edit_comm}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
        
</tr>