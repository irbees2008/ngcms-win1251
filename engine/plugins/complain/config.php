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
array_push($cfg, array('descr' => '������ ��������� ������ ���������� ��������� ��������������/������ ������� ����� � �������� � ���������� �������'));
$cfgX = array();
array_push($cfgX, array('name' => 'localsource', 'title' => "�������� ������� �� �������� ������ ����� ����� ������� ��� �����������<br /><small><b>������ �����</b> - ������ ����� �������� ����� ������� �� ������ ������� �����; � ������ ������������� - ������� ����� ����� �� ������������ �������� �������<br /><b>������</b> - ������� ����� ������� �� ������������ �������� �������</small>", 'type' => 'select', 'values' => array('0' => '������ �����', '1' => '������'), 'value' => intval(pluginGetVariable($plugin, 'localsource'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� �����������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'extform', 'title' => "����� ����������� �����", 'descr' => "<b>�������</b> - ����� ������ ��������� � ����� �������<br/><b>��������� ��������</b> - � ������� ��������� ������ ������, ����� �� ������������ �� ��������� ��������", 'type' => 'select', 'values' => array('0' => '�������', '1' => '��������� ��������'), 'value' => intval(pluginGetVariable($plugin, 'extform'))));
array_push($cfgX, array('name' => 'errlist', 'title' => "������ ������", 'descr' => "������������ � �������:<br/>���_������<b>|</b>�����_������<br/><b>���_������</b> - ���������� �������� ������������� (�� 1 �� 255) ������<br/><b>�����_������</b> - ����� ������, ������������ ������������.<br/>������������ � �������������� ����� ������������ �����, �� � �� ����� ��������� ������ ���", 'type' => 'text', 'html_flags' => 'cols=50 rows=6', 'value' => pluginGetVariable($plugin, 'errlist')));
array_push($cfgX, array('name' => 'inform_author', 'title' => "��������� ������ ������� �� email � ��������", 'descr' => "<b>��</b> - �� ������ ����� �� ������ ����� ������������ email ���������<br/><b>���</b> - email ��������� ������������ �� �����", 'type' => 'select', 'values' => array('0' => '���', '1' => '��'), 'value' => intval(pluginGetVariable($plugin, 'inform_author'))));
array_push($cfgX, array('name' => 'inform_admin', 'title' => "��������� <b>��������������� �����</b> �� email � ��������", 'descr' => "<b>��</b> - �� ������ ����� �� ������ ����� ������������ email ���������<br/><b>���</b> - email ��������� ������������ �� �����", 'type' => 'select', 'values' => array('0' => '���', '1' => '��'), 'value' => intval(pluginGetVariable($plugin, 'inform_admin'))));
array_push($cfgX, array('name' => 'inform_reporter', 'title' => "��������� � ������� �������� ������ ������", 'descr' => "<b>��</b> - ����� ����� ��������� email ��������� ��� ������� ������������� �� ��� �����<br/><b>���</b> - email ��������� ������������ �� �����<br/><b>�� �������</b> - email ��������� ����� ������������, ���� ��� ��������� �������", 'type' => 'select', 'values' => array('0' => '���', '1' => '��', '2' => '�� �������'), 'value' => intval(pluginGetVariable($plugin, 'inform_reporter'))));
array_push($cfgX, array('name' => 'allow_unreg', 'title' => "��������� �������������������� ��������� ������", 'descr' => "<b>��</b> - �������������������� ������������ ������ ��������� �����<br/><b>���</b> - ����� ������ �������� ������ ������������������ ������������", 'type' => 'select', 'values' => array('0' => '���', '1' => '��'), 'value' => intval(pluginGetVariable($plugin, 'allow_unreg'))));
array_push($cfgX, array('name' => 'allow_unreg_inform', 'title' => "��������� �������������������� �������� ����������", 'descr' => "<b>��</b> - �������������������� ������������ ������ ������� ���� email ����� ��� ��������� ����� � ������� ������������� �� �����<br/><b>���</b> - �������� email ���������� �������������������� ������������ �� ������", 'type' => 'select', 'values' => array('0' => '���', '1' => '��'), 'value' => intval(pluginGetVariable($plugin, 'allow_unreg_inform'))));
array_push($cfgX, array('name' => 'allow_text', 'title' => "��������� ��������� ��������� ��������� � ������ �� ������", 'descr' => "<b>���</b> - ���������� ������ ���������<br/><b>������ ������������������</b> - ����� ����� ��������� ������ ������������������ ������������<br/><b>��</b> - ����� ����� ��������� ���", 'type' => 'select', 'values' => array('0' => '���', '1' => '������ ������������������', '2' => '��'), 'value' => intval(pluginGetVariable($plugin, 'allow_text'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� ����������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'admins', 'title' => "������ ����������� ���������������", 'descr' => "������� ������ ������� ������������� (�� ������ ������ � ������), ������� ����� ������ ���������������� ����� ��� ������ � ������ ��������<br/><i>������� � ����� ����� �����������!</i>", 'type' => 'text', 'html_flags' => 'cols=50 rows=2', 'value' => pluginGetVariable($plugin, 'admins')));
array_push($cfgX, array('name' => 'inform_admins', 'title' => "��������� <b>����������� ���������������</b> �� email � ��������", 'descr' => "<b>��</b> - �� ������ ����� �� ������ ����� ������������ email ���������<br/><b>���</b> - email ��������� ������������ �� �����", 'type' => 'select', 'values' => array('0' => '���', '1' => '��'), 'value' => intval(pluginGetVariable($plugin, 'inform_admin'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>���������� ��������</b>', 'entries' => $cfgX));
$cfgX = array();
array_push($cfgX, array('name' => 'cache', 'title' => "��������� ����������� �����<br />", 'descr' => '<b>��</b> - ����������� ���������<br /><b>���</b> - ����������� ���������', 'type' => 'select', 'values' => array('1' => '��', '0' => '���'), 'value' => intval(pluginGetVariable($plugin, 'cache'))));
array_push($cfg, array('mode' => 'group', 'title' => '<b>��������� �����������</b>', 'entries' => $cfgX));
// RUN
if ($_REQUEST['action'] == 'commit') {
	// If submit requested, do config save
	commit_plugin_config_changes($plugin, $cfg);
	print_commit_complete($plugin);
} else {
	generate_config_page($plugin, $cfg);
}
?>