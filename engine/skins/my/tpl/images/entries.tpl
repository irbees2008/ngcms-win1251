<div class="col-lg-3">
    <div class="cuadro_intro_hover " style="background-color:#cccccc;">
		<p class="cuadro" style="text-align:center; margin-top:20px;">
			{preview_img}
		</p>
		<div class="caption">
			<div class="blur"></div>
			<div class="caption-text">
				<h5 style="padding:4px 1px;">{file_name} <input type=checkbox name=files[] value="{id}" class="check" /></h5>
				<p>��������� : {folder}</p>
		        <p>�������� : {user}</p>
				<p>SIZE :<span class="img-width">{width}</span>x<span class="img-height">{height}</span> {size}</p>
				<p>�������� : 
				    <a data-toggle="tooltip" target="_blank" href="/uploads/images/{folder}/{file_name}" title="������ �����������"><i class="fa fa-search-plus" aria-hidden="true"></i></a>
				    <a data-toggle="tooltip" target="_blank" href="/uploads/images/{folder}/thumb/{file_name}" title="����������� �����������"><i class="fa fa-search-minus" aria-hidden="true"></i></a></p>
				<p>�������:
					<a data-toggle="tooltip" href="javascript:insertimage('[img=&quot;/uploads/images/{folder}/{file_name}&quot; border=&quot;0&quot; width=&quot;{width}&quot; height=&quot;{height}&quot; align=&quot;&quot;]{file_name} ({size})[/img]', '')" title="������ �����������"><i class="fa fa-share-square-o" aria-hidden="true"></i></a>
					<a data-toggle="tooltip" href="javascript:insertimage('[url=&quot;/uploads/images/{folder}/{file_name}&quot; target=&quot;_blank&quot;][img=&quot;/uploads/images/{folder}/thumb/{file_name}&quot; border=&quot;0&quot; align=&quot;&quot;]{file_name} ({size})[/img][/url]', '')" title="������� ������"><i class="fa fa-search-plus" aria-hidden="true"></i></a>
					<a data-toggle="tooltip" href="javascript:insertimage('[img=&quot;/uploads/images/{folder}/thumb/{file_name}&quot; border=&quot;0&quot; align=&quot;&quot;]{file_name}[/img]', '')" title="������� ������������ �����������"><i class="fa fa-search-minus" aria-hidden="true"></i></a>
				</p>
				<p>
		            ������������� : <a data-toggle="tooltip" href="{edit_link}"title="{l_edit}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
				</p>
			</div>
		</div>
	</div>
</div>