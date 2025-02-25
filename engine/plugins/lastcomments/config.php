<?php
// Protect against hack attempts
if (!defined('NGCMS')) die ('HAL');
//
// Configuration file for plugin
//
// Preload config file
plugins_load_config();
// Fill configuration parameters
$cfg = array();
$cfgX = array();
array_push($cfg, array('descr' => '������ ���������� ��������� �����������, ����������� �� ������� �����.'));
array_push($cfgX, array('name' => 'sidepanel', 'title' => '�������� ��������� ������� ������', 'descr' => '<b>��</b> - ������ ����� ��������������<br/><b>���</b> - ������ �� ����� ��������������', 'type' => 'select', 'values' => array('0' => $lang['noa'], '1' => $lang['yesa']), 'value' => pluginGetVariable('lastcomments', 'sidepanel')));
array_push($cfgX, array('name' => 'number', 'title' => '���������� ��������� ������������', 'descr' => '�������� �� ���������: <b>10</b>', 'type' => 'input', 'html_flags' => 'size=5', 'value' => pluginGetVariable('lastcomments', 'number')));
array_push($cfgX, array('name' => 'comm_length', 'title' => '�������� ����� �����������', 'descr' => '���-�� �������� �� ����������� ��� �����������<br/>�������� �� ���������: <b>50</b>', 'type' => 'input', 'html_flags' => 'size=5', 'value' => pluginGetVariable('lastcomments', 'comm_length')));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� ������� ������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'ppage', 'title' => '��������� ����������� �������� �������', 'descr' => '<b>��</b> - ����������� �������� ���������<br/><b>���</b> - ����������� �������� ���������', 'type' => 'select', 'values' => array('0' => $lang['noa'], '1' => $lang['yesa']), 'value' => pluginGetVariable('lastcomments', 'ppage')));
array_push($cfgX, array('name' => 'pp_number', 'title' => '���������� ��������� ������������', 'descr' => '�������� �� ���������: <b>30</b>', 'type' => 'input', 'html_flags' => 'size=5', 'value' => pluginGetVariable('lastcomments', 'pp_number')));
array_push($cfgX, array('name' => 'pp_comm_length', 'title' => '�������� ����� �����������', 'descr' => '���-�� �������� �� ����������� ��� �����������<br/>�������� �� ���������: <b>500</b>', 'type' => 'input', 'html_flags' => 'size=5', 'value' => pluginGetVariable('lastcomments', 'pp_comm_length')));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� ����������� �������� �������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'rssfeed', 'title' => '��������� rss-����� �������', 'descr' => '<b>��</b> - rss-����� ���������<br/><b>���</b> - rss-����� ���������', 'type' => 'select', 'values' => array('0' => $lang['noa'], '1' => $lang['yesa']), 'value' => pluginGetVariable('lastcomments', 'rssfeed')));
array_push($cfgX, array('name' => 'rss_number', 'title' => '���������� ��������� ������������', 'descr' => '�������� �� ���������: <b>30</b>', 'type' => 'input', 'html_flags' => 'size=5', 'value' => pluginGetVariable('lastcomments', 'rss_number')));
array_push($cfgX, array('name' => 'rss_comm_length', 'title' => '�������� ����� �����������', 'descr' => '���-�� �������� �� ����������� ��� �����������<br/>�������� �� ���������: <b>500</b>', 'type' => 'input', 'html_flags' => 'size=5', 'value' => pluginGetVariable('lastcomments', 'rss_comm_length')));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� ����������� �������� �������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'localsource', 'title' => "�������� ������� �� �������� ������ ����� ����� ������� ��� �����������<br /><small><b>������ �����</b> - ������ ����� �������� ����� ������� �� ������ ������� �����; � ������ ������������� - ������� ����� ����� �� ������������ �������� �������<br /><b>������</b> - ������� ����� ������� �� ������������ �������� �������</small>", 'type' => 'select', 'values' => array('0' => '������ �����', '1' => '������'), 'value' => intval(pluginGetVariable($plugin, 'localsource'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� �����������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'cache', 'title' => "������������ ����������� ������<br /><small><b>��</b> - ����������� ������������<br /><b>���</b> - ����������� �� ������������</small>", 'type' => 'select', 'values' => array('1' => '��', '0' => '���'), 'value' => intval(pluginGetVariable($plugin, 'cache'))));
array_push($cfgX, array('name' => 'cacheExpire', 'title' => "������ ���������� ����<br /><small>(����� ������� ������ ���������� ���������� ����. �������� �� ���������: <b>60</b>)</small>", 'type' => 'input', 'value' => intval(pluginGetVariable($plugin, 'cacheExpire')) ? pluginGetVariable($plugin, 'cacheExpire') : '60'));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� �����������</b>', 'entries' => $cfgX));
// RUN
if ($_REQUEST['action'] == 'commit') {
	// If submit requested, do config save
	commit_plugin_config_changes('lastcomments', $cfg);
	print_commit_complete('lastcomments');
} else {
	generate_config_page('lastcomments', $cfg);
}
