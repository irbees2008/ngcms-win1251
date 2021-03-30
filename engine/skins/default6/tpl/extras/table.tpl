<!-- Navigation bar -->
<ul class="breadcrumb">
	<li><a href="admin.php">{{ lang['home'] }}</a></li>
	<li class="active">{{ lang['extras'] }}</li>
</ul>

<!-- Info content -->
<div class="page-main">
	<ul class="nav nav-tabs">
		<li data-filter="all" class="active"><a href="#">{{ lang['list.all'] }} <span class="badge">{{ cntAll }}</span></a></li>
		<li data-filter="pluginEntryActive"><a href="#">{{ lang['list.active'] }} <span class="badge">{{ cntActive }}</span></a></li>
		<li data-filter="pluginEntryInactive"><a href="#">{{ lang['list.inactive'] }} <span class="badge">{{ cntInactive }}</span></a></li>
		<li data-filter="pluginEntryUninstalled"><a href="#">{{ lang['list.needinstall'] }} <span class="badge">{{ cntUninstalled }}</span></a></li>
	</ul>
	<table class="table table-condensed" id="maincontent">
		<thead>
			<tr>
			<th>{{ lang['id'] }}</th>
			<th>{{ lang['title'] }}</th>
			<th>{{ lang['type'] }}</th>
			<th>{{ lang['version'] }}</th>

			<th>{{ lang['description'] }}</th>
			<th>{{ lang['author'] }}</th>
			<th>{{ lang['action'] }}</th>
			</tr>
		</thead>
		<tbody id="entryList">
			{% for entry in entries %}
			<tr class="all {{ entry.style }}" id="plugin_{{ entry.id }}">
				<td>{{ entry.id }} {{ entry.new }}</td>
				<td>{{ entry.url }}</td>
				<td>{{ entry.type }}</td>
				<td nowrap>{{ entry.history }} {{ entry.version }}</td>
				<td>{{ entry.readme }} {{ entry.description }}</td>
				<td>{{ entry.author_url }}</td>
				<td nowrap="nowrap">{{ entry.link }} {{ entry.install }}</td>
			</tr>
			{% endfor %}
		</tbody>
	</table>
</div>

<script>
$(document).ready(function() {

	var newSelection = "";

	function tabsSwitch(tabs) {
		$("#maincontent").fadeOut(1);
		$(".nav-tabs li").removeClass("active");
		tabs.addClass("active");
		newSelection = tabs.attr("data-filter");
		$("."+newSelection).show(1);
		$(".all").not("."+newSelection).hide(1);
		$("#maincontent").fadeIn(1);
	}

	$(".nav-tabs").on('click', 'li:not(.active)', function(){
		tabsSwitch($(this));
	});
});
</script>
