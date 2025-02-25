<?php
// Protect against hack attempts
if (!defined('NGCMS')) die ('HAL');
//
// Configuration file for plugin
//
// Preload config file
plugins_load_config();
$personalCount = intval(pluginGetVariable($plugin, 'personalCount'));
if (($personalCount < 2) || ($personalCount > 100))
	$personalCount = 10;
// Fill configuration parameters
$cfg = array();
$cfgX = array();
array_push($cfg, array('descr' => '������ ���������� ������� ����������� ������������'));
$cfgX = array();
array_push($cfgX, array('name' => 'replaceCount', 'title' => "�������� �������� ���������� {news} �� �������� ������ �� ���� ������������?<br /><small><b>��</b> - ����� ���������� �������� ����������<br /><b>���</b> - �������� ���������� ���������� �� �����</small>", 'type' => 'select', 'values' => array('0' => $lang['noa'], '1' => $lang['yesa']), 'value' => intval(pluginGetVariable($plugin, 'replaceCount'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>�������� ��������� ������� ������������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'personalPages', 'title' => "�������� ������������ ����� ��� �������� �������������<br /><small><b>��</b> - �� ������ /plugin/ublog/?id=<b>ID_������������</b> ����� �������� ������ ��� ��������<br /><b>���</b> - ������ �������� ������������ ���������� �� �����</small>", 'type' => 'select', 'values' => array('0' => $lang['noa'], '1' => $lang['yesa']), 'value' => intval(pluginGetVariable($plugin, 'personalPages'))));
array_push($cfgX, array('name' => 'personalCount', 'title' => "���-�� ��������, ������������ �� ��������<br/><small>�������� �� ���������: <b>10</b></small>", 'type' => 'input', 'value' => $personalCount));
array_push($cfg, array('mode' => 'group', 'title' => '<b>����������� �������� � ������ �������� ������������</b>', 'entries' => $cfgX));
// RUN
if ($_REQUEST['action'] == 'commit') {
	// If submit requested, do config save
	commit_plugin_config_changes($plugin, $cfg);
	print_commit_complete($plugin);
} else {
	generate_config_page($plugin, $cfg);
}

