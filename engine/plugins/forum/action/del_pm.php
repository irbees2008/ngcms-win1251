<?php
/*
=====================================================
 NG FORUM v.alfa
-----------------------------------------------------
 Author: Nail' R. Davydov (ROZARD)
-----------------------------------------------------
 Jabber: ROZARD@ya.ru
 E-mail: ROZARD@list.ru
-----------------------------------------------------
 � ��������� ����������� ������� �� ������
 ������������. ��, ��� �������� � ������, ������
 ���������� � ������. :))
-----------------------------------------------------
 ������ ��� ������� ���������� �������
=====================================================
*/
if (!defined('NGCMS')) die ('HAL');
if (empty($GROUP_PS['group_pm']))
	return $output = permissions_forum('� ��� ��� ������� � ����������');
if (isset($params['id']))
	$id = isset($params['id']) ? intval($params['id']) : 0;
else
	$id = isset($_REQUEST['id']) ? intval($_REQUEST['id']) : 0;
if (isset($params['folder']))
	$folder = isset($params['folder']) ? $params['folder'] : '';
else
	$folder = isset($_REQUEST['folder']) ? $_REQUEST['folder'] : '';
switch ($folder) {
	case 'inbox':
		$io = 'inbox';
		break;
	case 'outbox':
		$io = 'outbox';
		break;
	default:
		$io = 'inbox';
}
if (empty($id))
	return $output = information('id ��������� �� �������', $title = '����������');
if (!is_array($userROW))
	return $output = information('� ��� ��� ���� �������', $title = '����������');
$mysql->query('DELETE FROM ' . prefix . '_pm WHERE ((`from_id`=' . securemysql($userROW['id']) . ' AND `folder`=\'outbox\') OR (`to_id`=' . securemysql($userROW['id']) . ') AND `folder`=\'inbox\') AND id = \'' . intval($id) . '\' LIMIT 1');
return $output = announcement_forum('��������� �������', link_list_pm(0, 0, $folder), 2);