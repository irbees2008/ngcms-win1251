<?php
//
// Configuration file for plugin
//
// Preload config file
plugins_load_config();
$count = extra_get_param($plugin, 'count');
if ((intval($count) < 1) || (intval($count) > 20))
	$count = 1;
// Fill configuration parameters
$cfg = array();
array_push($cfg, array('descr' => '������ RSS ��������.'));
array_push($cfg, array('name' => 'count', 'title' => '���������� ������ � RSS ���������', 'type' => 'input', 'value' => $count));
for ($i = 1; $i <= $count; $i++) {
	$cfgX = array();
	array_push($cfgX, array('name' => 'rss' . $i . '_name', 'title' => '��������� �������� ��� �����������<br /><small>��������: <b>Next Generation CMS</b></small>', 'type' => 'input', 'value' => extra_get_param($plugin, 'rss' . $i . '_name')));
	array_push($cfgX, array('name' => 'rss' . $i . '_url', 'title' => '����� �������� ��� �����������<br /><small>��������: <b>http://ngcms.ru</b></small>', 'type' => 'input', 'value' => extra_get_param($plugin, 'rss' . $i . '_url')));
	array_push($cfgX, array('name' => 'rss' . $i . '_number', 'title' => '���������� �������� ��� �����������<br /><small>�������� �� ���������: <b>10</b></small>', 'type' => 'input', 'value' => intval(extra_get_param($plugin, 'rss' . $i . '_number')) ? extra_get_param($plugin, 'rss' . $i . '_number') : '10'));
	array_push($cfgX, array('name' => 'rss' . $i . '_maxlength', 'title' => '����������� ����� �������� �������<br /><small>���� �������� ��������� ��������� �������, �� ��� ����� �������<br />�������� �� ���������: <b>100</b></small>', 'type' => 'input', 'value' => intval(extra_get_param($plugin, 'rss' . $i . '_maxlength')) ? extra_get_param($plugin, 'rss' . $i . '_maxlength') : '100'));
	array_push($cfgX, array('name' => 'rss' . $i . '_newslength', 'title' => '����������� ����� �������� �������<br /><small>���� �������� ��������� ��������� �������, �� ��� ����� �������<br />�������� �� ���������: <b>100</b></small>', 'type' => 'input', 'value' => intval(extra_get_param($plugin, 'rss' . $i . '_newslength')) ? extra_get_param($plugin, 'rss' . $i . '_newslength') : '100'));
	array_push($cfgX, array('name' => 'rss' . $i . '_content', 'title' => "������������ ���������� {short_news}", 'type' => 'checkbox', value => extra_get_param($plugin, 'rss' . $i . '_content')));
	array_push($cfgX, array('name' => 'rss' . $i . '_img', 'title' => "������� ��� �������� �� {short_news}", 'type' => 'checkbox', value => extra_get_param($plugin, 'rss' . $i . '_img')));
	array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� ����� � <b>' . $i . '</b> {rss' . $i . '}', 'entries' => $cfgX));
}
$cfgX = array();
array_push($cfgX, array('name' => 'localsource', 'title' => '�������� ������� �� �������� ������ ����� ����� ������� ��� �����������<br /><small><b>������ �����</b> - ������ ����� �������� ����� ������� �� ������ ������� �����; � ������ ������������� - ������� ����� ����� �� ������������ �������� �������<br /><b>������</b> - ������� ����� ������� �� ������������ �������� �������</small>', 'type' => 'select', 'values' => array('0' => '������ �����', '1' => '������'), 'value' => intval(extra_get_param($plugin, 'localsource'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� �����������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'cache', 'title' => '������������ ����������� ������<br /><small><b>��</b> - ����������� ������������<br /><b>���</b> - ����������� �� ������������</small>', 'type' => 'select', 'values' => array('1' => '��', '0' => '���'), 'value' => intval(extra_get_param($plugin, 'cache'))));
array_push($cfgX, array('name' => 'cacheExpire', 'title' => '������ ���������� ����<br /><small>(����� ������� ������ ���������� ���������� ����. �������� �� ���������: <b>60</b>)</small>', 'type' => 'input', 'value' => intval(extra_get_param($plugin, 'cacheExpire')) ? extra_get_param($plugin, 'cacheExpire') : '60'));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� �����������</b>', 'entries' => $cfgX));
// RUN 
if ($_REQUEST['action'] == 'commit') {
	// If submit requested, do config save
	commit_plugin_config_changes($plugin, $cfg);
	print_commit_complete($plugin);
} else {
	generate_config_page($plugin, $cfg);
}