<?php
global $permRules;
$permRules = array(
	'#admin'	=> array(
		'title'	=> '���������������� ��������� CMS',
		'description' => '',
		'items' => array(
			'system' => array(
				'title'	=> '����� ��������� �������',
				'items'	=> array(
					'admpanel.view'					=> array(	'title'	=> '������ � �����-������',								),
					'lockedsite.view'				=> array(	'title'	=> '�������� ���������������� �����',					),
					'*'								=> array(	'title'	=> '** �������� �� ��������� **'						),

				),
			),
			'configuration' => array(
				'title'	=> '���������� ����������� ����������� CMS',
				'items'	=> array(
					'details'					=> array(	'title'	=> '�������� ��������',										),
					'modify'					=> array(	'title'	=> '�������������� ��������',								),
					'*'							=> array(	'title'	=> '** �������� �� ��������� **',							),

				),
			),
			'static' => array(
				'title'	=> '���������� ������������ ����������',
				'items'	=> array(
					'view'						=> array(	'title'	=> '�������� ������',										),
					'details'					=> array(	'title'	=> '�������� ���������� ����������� �������',				),
					'modify'					=> array(	'title'	=> '�������������� ����������� �������',					),
//					'*'							=> array(	'title'	=> '** DEFAULT **',											),
				),
			),
			'users' => array(
				'title'	=> '���������� ��������������',
				'items'	=> array(
					//					'*'							=> array(	'title'	=> '** DEFAULT **',											),
					'view'						=> array(	'title'	=> '�������� ������',										),
					'details'					=> array(	'title'	=> '�������� ������� ������������',							),
					'modify'					=> array(	'title'	=> '�������������� ������� ������������',					),
				),
			),
			'cron' => array(
				'title'	=> '���������� ������������� �����',
				'items'	=> array(
					'details'					=> array(	'title'	=> '�������� �������� ������������ �����',					),
					'modify'					=> array(	'title'	=> '��������� �������� ������������ �����',					),
				),
			),
			'rewrite' => array(
				'title'	=> '���������� �������� ������',
				'items'	=> array(
					'details'					=> array(	'title'	=> '�������� �������� ���������� ��������',					),
					'modify'					=> array(	'title'	=> '��������� �������� ���������� ������',					),
				),
			),
			'ipban' => array(
				'title'	=> '���������� ������������� �� IP ������',
				'items'	=> array(
					'view'						=> array(	'title'	=> '�������� ������ ��������������� IP �������',			),
					'modify'					=> array(	'title'	=> '�������������� ������',									),
//					'*'							=> array(	'title'	=> '** DEFAULT **',											),
				),
			),
			'categories' => array(
				'title'	=> '���������� �����������',
				'items'	=> array(
					'view'						=> array(	'title'	=> '�������� ������ ���������',								),
					'details'					=> array(	'title'	=> '�������� �������� ���������� ���������',				),
					'modify'					=> array(	'title'	=> '�������������� ���������',								),
					'list.admin'					=> array(	'title' => '���������, � ������� ��������� ���������� ���������', 'type' => 'listCategoriesSelector#withDefault'),
					//					'*'							=> array(	'title'	=> '** DEFAULT **',											),
				),
			),
			'news' => array(
				'title' => '���������� ���������',
				'description' => '��������� ���������� ��������� (����������, ��������,..)',
				'items' => array(
					'view'						=> array(	'title' => '�������� ������ ��������',							),
					'add'						=> array(	'title'	=> '���������� ��������',								),
					'add.mainpage'				=> array(	'title'	=> '�������� �� ��������� ��� ����� "���������� ������� �� �������"',		),
					'add.pinned'				=> array(	'title'	=> '�������� �� ��������� ��� ����� "������������ ������� �� �������"',		),
					'add.catpinned'				=> array(	'title'	=> '�������� �� ��������� ��� ����� "������������ ������� � ���������"',	),
					'add.favorite'				=> array(	'title'	=> '�������� �� ��������� ��� ����� "���������� ������� � ��������"',		),
					'add.html'					=> array(	'title'	=> '�������� �� ��������� ��� ����� "������������� HTML ���� � ��������"',	),
					'add.raw'					=> array(	'title'	=> '�������� �� ��������� ��� ����� "��������� ������������������"',	),
					'personal.list'				=> array(	'title'	=> '����������� �������: �������� ������',				),
					'personal.view'				=> array(	'title'	=> '����������� �������: �������� �����������',			),
					'personal.modify'			=> array(	'title'	=> '����������� �������: ��������������',				),
					'personal.modify.published'	=> array(	'title'	=> '����������� �������: �������������� ��������������',	),
					'personal.publish'			=> array(	'title'	=> '����������� �������: ����������',					),
					'personal.unpublish'		=> array(	'title'	=> '����������� �������: ������ � ����������',			),
					'personal.delete'			=> array(	'title'	=> '����������� �������: ��������',						),
					'personal.delete.published'	=> array(	'title'	=> '����������� �������: �������� ��������������',		),
					'personal.html'				=> array(	'title'	=> '����������� �������: ������������� HTML ����',		),
					'personal.mainpage'			=> array(	'title'	=> '����������� �������: ���������� �� �������',		),
					'personal.pinned'			=> array(	'title'	=> '����������� �������: ������������ �� �������',		),
					'personal.catpinned'		=> array(	'title'	=> '����������� �������: ������������ � ���������',		),
					'personal.favorite'			=> array(	'title'	=> '����������� �������: ���������� � ��������',		),
					'personal.setviews'			=> array(	'title'	=> '����������� �������: ��������� ���-�� ����������',	),
					'personal.multicat'			=> array(	'title'	=> '����������� �������: ���������� � ���������� ����������',		),
					'personal.nocat'			=> array(	'title'	=> '����������� �������: ���������� ��� ���������',		),
					'personal.customdate'		=> array(	'title'	=> '����������� �������: ��������� ���� ����������',	),
					'personal.altname'				=> array(	'title'	=> '����������� �������: ������� ����. �����',		),
					'other.list'				=> array(	'title'	=> '����� �������: �������� ������',					),
					'other.view'				=> array(	'title'	=> '����� �������: �������� �����������',				),
					'other.modify'				=> array(	'title'	=> '����� �������: ��������������',						),
					'other.modify.published'	=> array(	'title'	=> '����� �������: �������������� ��������������',		),
					'other.publish'				=> array(	'title'	=> '����� �������: ����������',							),
					'other.unpublish'			=> array(	'title'	=> '����� �������: ������ � ����������',				),
					'other.delete'				=> array(	'title'	=> '����� �������: ��������',							),
					'other.delete.published'	=> array(	'title'	=> '����� �������: �������� ��������������',			),
					'other.html'				=> array(	'title'	=> '����� �������: ������������� HTML ����',			),
					'other.mainpage'			=> array(	'title'	=> '����� �������: ���������� �� �������',				),
					'other.pinned'				=> array(	'title'	=> '����� �������: ������������ �� �������',			),
					'other.catpinned'			=> array(	'title'	=> '����� �������: ������������ � ���������',			),
					'other.favorite'			=> array(	'title'	=> '����� �������: ���������� � ��������',				),
					'other.setviews'			=> array(	'title'	=> '����� �������: ��������� ���-�� ����������',		),
					'other.multicat'			=> array(	'title'	=> '����� �������: ���������� � ���������� ����������',	),
					'other.nocat'				=> array(	'title'	=> '����� �������: ���������� ��� ���������',			),
					'other.customdate'			=> array(	'title'	=> '����� �������: ��������� ���� ����������',			),
					'other.altname'				=> array(	'title'	=> '����� �������: ������� ����. �����',				),
					'*'							=> array(	'title'	=> '** �������� �� ��������� **',						),
				),
			),
			'dbo' => array(
				'title'	=> '���������� ����� ������',
				'items'	=> array(
					'details'					=> array(	'title'	=> '�������� �������� ��������� ���� ������',			),
					'modify'					=> array(	'title'	=> '��������� � ���� ������',							),
				),
			),
			'templates' => array(
				'title'	=> '���������� ���������',
				'items'	=> array(
					'details'					=> array(	'title'	=> '�������� ��������',									),
					'modify'					=> array(	'title'	=> '��������� ��������',								),
				),
			),

		),
	),
	'nsm'	=> array(
		'title'		=> '������ NSM',
		'items'		=> array(
			''			=> array(
			'items'			=> array(
				'add'					=> array(	'title'	=> '���������� ��������',							),
				'list'					=> array(	'title'	=> '�������� ������ ��������',						),
				'view'					=> array(	'title'	=> '�������� ����������� �������',					),
				'view.draft'			=> array(	'title'	=> '�������� ����������� ���������',				),
				'view.unpublished'		=> array(	'title'	=> '�������� ����������� ������������ �������',		),
				'view.published'		=> array(	'title'	=> '�������� ����������� �������������� �������',	),
				'modify.draft'			=> array(	'title'	=> '��������� ����������� ���������',				),
				'modify.unpublished'	=> array(	'title'	=> '��������� ����������� ������������ �������',	),
				'modify.published'		=> array(	'title'	=> '��������� ����������� �������������� �������',	),
				'delete.draft'			=> array(	'title'	=> '�������� ����������� ���������',				),
				'delete.unpublished'	=> array(	'title'	=> '�������� ����������� ������������ �������',		),
				'delete.published'		=> array(	'title'	=> '�������� ����������� �������������� �������',	),

				),
			),
		),
	),

);
