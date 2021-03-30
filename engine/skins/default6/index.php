<?php
// Protect against hack attempts
if (!defined('NGCMS')) die ('HAL');

if ( !in_array($config['default_lang'], array('russian', 'english'))) {
	$config['default_lang'] = 'english';
}

// Load skin language
function LoadLang_Askin() {
	global $config;
	
	$filename = root . 'skins/default/lang/' . $config['default_lang'] . '/admin/index.ini';
	
	if (!$content = parse_ini_file($filename, true)) {
		$filename = root . 'skins/default/lang/english/admin/index.ini';
		$content = parse_ini_file($filename, true);
	}
	
	return $content;
}

$skins_url = skins_url;

$lang = array_merge (LoadLang('index', 'admin'), LoadLang_Askin());

////////////// Запись в $_COOKIE сделать
LoadPluginLibrary('uprofile', 'lib');
$skin_UAvatar = ( isset($userROW['avatar']) and !empty($userROW['avatar']) )? userGetAvatar($userROW)[1] : $skins_url . '/assets/img/default-avatar.jpg';
$skin_UStatus = $UGROUP[$userROW['status']]['langName'][$config['default_lang']];
///////////////////

$year = date("Y");

if (is_array($userROW)) {
	$unnAppCount = '0';
	$newpm = '';
	$unapp1 = '';
	$unapp2 = '';
	
	$newpm = $mysql->result("SELECT count(pmid) FROM ".prefix."_users_pm WHERE to_id = ".db_squote($userROW['id'])." AND viewed = '0'");
	$newpmText = ($newpm != "0") ? $newpm : 'нет новых';
	
	// Calculate number of un-approved news
	if ($userROW['status'] == 1 || $userROW['status'] == 2) {
		$unapp1 = $mysql->result("SELECT count(id) FROM ".prefix."_news WHERE approve = '-1'");
		$unapp2 = $mysql->result("SELECT count(id) FROM ".prefix."_news WHERE approve = '0'");
		$unapp3 = $mysql->result("SELECT count(id) FROM ".prefix."_static WHERE approve = '0'");
		if ($unapp1)
		$unapproved1 = '<li><a href="'.$PHP_SELF.'?mod=news&status=1"><i class="fa fa-pencil-square-o"></i> '.$unapp1.' новостей недописано</a></li>';
		if ($unapp2)
		$unapproved2 = '<li><a href="'.$PHP_SELF.'?mod=news&status=2"><i class="fa fa-minus-circle"></i> '.$unapp2.' новостей неопубликовано</a></li>';
		if ($unapp3)
		$unapproved3 = '<li><a href="'.$PHP_SELF.'?mod=static"><i class="fa fa-minus-circle"></i> '.$unapp3.' статья неопубликована</a></li>';
	}
	
	$unnAppCount = (int)$newpm + (int)$unapp1 + (int)$unapp2 + (int)$unapp3;
}

$mod = $_REQUEST['mod'];
$action = isset($_REQUEST['action'])?$_REQUEST['action']:'';

$h_active_pm = ($mod=='pm')?' active':'';
$h_active_content = ( $mod=='news' || $mod=='categories' || $mod=='static' || $mod=='images' || $mod=='files' )?' class="active"':'';

$h_active_users = (($mod=='users')||($mod=='ipban')||($mod=='ugroup')||($mod=='perm'))?' class="active"':'';
$h_active_extras = (($mod=='extra-config')||($mod=='extras'))?' class="active"':'';
$h_active_templates = ($mod=='templates')?' class="active"':'';
$h_active_options = (($mod=='')||($mod=='options')||($mod=='configuration')||($mod=='statistics')||($mod=='dbo')||($mod=='rewrite')||($mod=='cron'))?' class="active"':'';

$skin_header = <<<HTML
<!DOCTYPE html>
<html lang="$lang[langcode]">
	<head>
		<meta charset="$lang[encoding]">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		
		<title>$config[home_title] - $lang[adminpanel]</title>
		
		<script src="$skins_url/assets/js/jquery-1.11.3.js"></script>
		
		<!-- СТАРЫЕ СТИЛИ И ФУНКЦИИ УДАЛИТЬ ПОЗЖЕ К ЧЕРТЯМ -->
		<link rel="stylesheet" href="$config[home_url]/lib/jqueryui/core/themes/cupertino/jquery-ui.min.css" type="text/css"/>
		<link rel="stylesheet" href="$config[home_url]/lib/jqueryui/core/themes/cupertino/jquery-ui.theme.min.css" type="text/css"/>
		<link rel="stylesheet" href="$config[home_url]/lib/jqueryui/plugins/jquery-ui-timepicker-addon/dist/jquery-ui-timepicker-addon.min.css" type="text/css"/>
		<script type="text/javascript" src="$config[home_url]/lib/jq/jquery.min.js"></script>
		<script type="text/javascript" src="$config[home_url]/lib/jqueryui/core/jquery-ui.min.js"></script>
		<script type="text/javascript" src="$config[home_url]/lib/jqueryui/plugins/jquery-ui-timepicker-addon/dist/jquery-ui-timepicker-addon.min.js"></script>
		
		<link href="$skins_url/assets/css/fontawesome.css" rel="stylesheet">
		<link href="$skins_url/assets/css/bootstrap.css" rel="stylesheet">
		<link href="$skins_url/assets/css/animate.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Ubuntu:300" rel="stylesheet">
		<link href="$skins_url/css/style.css" rel="stylesheet">
		
		<script src="$skins_url/assets/js/bootstrap.js"></script>
		<script src="$skins_url/assets/js/notify.js"></script>
		<script src="$config[home_url]/lib/functions.js"></script>
		<script src="$config[home_url]/lib/admin.js"></script> <!-- datepicker ругается -->
		<script src="$skins_url/js/custom.js"></script>
	</head>
<body>
	<!-- Page Loader -->
	<section id="loader-wrapper"><div id="loader">$lang[loading]</div></section>
	<!-- Page Loader END -->
	
	<div id="loading-layer"><i class="fa fa-spinner fa-pulse"></i> $lang[loading]</div>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<span class="navbar-toggle"><i class="fa fa-bars"></i></span>
				<a class="navbar-brand" href="$config[home_url]" title="$lang[mainpage_t]" target="_blank"><span class="hidden-xs">$config[home_title]</span> <i class="fa fa-external-link visible-xs"></i></a>
			</div>
			
			<div class="pull-left">
				<ul class="list-inline list-unstyled pull-left">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle navbar-brand" data-toggle="dropdown">
							Добавить <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="$PHP_SELF?mod=news&action=add">Новость</a></li>
							<li><a href="$PHP_SELF?mod=categories&action=add">Категорию</a></li>
							<li><a href="$PHP_SELF?mod=static&action=addForm">Статью</a></li>
							<li><a href="#" class="adduser">Пользователя</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="pull-right">
				<ul class="list-inline list-unstyled pull-right">
					<li class="dropdown notifications-menu">
						<a href="#" class="dropdown-toggle navbar-brand" data-toggle="dropdown">
							<i class="fa fa-bell-o"></i><span class="label label-danger">$unnAppCount</span>
						</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li class="header">You have $unnAppCount notifications</li>
							$unapproved1
							$unapproved2
							$unapproved3
							<li><a href="$PHP_SELF?mod=pm" title="$lang[pm_t]"><i class="fa fa-envelope-o"></i>$newpmText персональных сообщений</a></li>
						</ul>
					</li>
					
					<li class="dropdown user-menu">
						<a href="#" class="dropdown-toggle navbar-brand" data-toggle="dropdown"><img src="$skin_UAvatar" class="img-circle" alt="User Image" width="25" height="25"> $userROW[name]</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li class="user-header">
								<!--img src="http://lorempixel.com/output/nature-q-c-280-100-5.jpg"-->
							</li>
							<li class="user-avatar">
								<img src="$skin_UAvatar" class="img-circle" alt="User Image">
							</li>
							<li class="user-body">
								<p><b>$userROW[name]</b><br>$skin_UStatus</p>
							</li>
							<li class="user-footer">
							<div class="pull-left"><a href="?mod=users&action=editForm&id=$userROW[id]" class="btn btn-default btn-flat">$lang[my_profile]</a></div>
								<div class="pull-right"><a href="$PHP_SELF?action=logout" title="$lang[logout_t]" class="btn btn-default btn-flat">Выход</a></div></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	
</nav>
<div class="side-menu-container">
		<ul class="navbar navbar-default" id="navmenu-v">
			<li class="panel panel-default">
				<a data-toggle="collapse" href="#active_content"$h_active_content><i class="fa fa-newspaper-o"></i> Контент <span class="caret"></span></a>
				
				<div id="active_content" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="nav navbar-nav">
							<li><a href="$PHP_SELF?mod=news">Новости</a></li>
							<li><a href="$PHP_SELF?mod=categories">Категории</a></li>
							<li><a href="$PHP_SELF?mod=static">Статьи</a></li>
							<li><a href="$PHP_SELF?mod=images">Изображения</a></li>
							<li><a href="$PHP_SELF?mod=files">Файлы</a></li>
						</ul>
					</div>
				</div>
			</li>
			
			<li class="panel panel-default">
				<a data-toggle="collapse" href="#h_active_users"$h_active_users><i class="fa fa-users"></i> Пользователи <span class="caret"></span></a>
				
				<div id="h_active_users" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="nav navbar-nav">
							<li><a href="$PHP_SELF?mod=users">Управление</a></li>
							<li><a href="$PHP_SELF?mod=ipban">Блокировка</a></li>
							<li><a href="$PHP_SELF?mod=ugroup">Группы</a></li>
							<li><a href="$PHP_SELF?mod=perm">Права доступа</a></li>
						</ul>
					</div>
				</div>
			</li>
			
			<li><a href="$PHP_SELF?mod=extras" $h_active_extras><i class="fa fa-puzzle-piece"></i> $lang[extras]</a></li>
			
			<li><a href="$PHP_SELF?mod=templates"$h_active_templates><i class="fa fa-th-large"></i> Шаблоны</a></li>
			
			<li class="panel panel-default">
				<a data-toggle="collapse" href="#h_active_options"$h_active_options><i class="fa fa-cogs"></i> Настройки <span class="caret"></span></a>
				
				<div id="h_active_options" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="nav navbar-nav">
							<li><a href="$PHP_SELF?mod=options">Все настройки</a></li>
							<li><a href="$PHP_SELF?mod=configuration">Настройка системы</a></li>
							<li><a href="$PHP_SELF?mod=dbo">База данных</a></li>
							<li><a href="$PHP_SELF?mod=rewrite">Форматы ссылок</a></li>
							<li><a href="$PHP_SELF?mod=cron">Планировщик задач</a></li>
							<li><a href="$PHP_SELF?mod=statistics">Статистика</a></li>
						</ul>
					</div>
				</div>
			</li>
			
			<li class="panel panel-default">
				<a data-toggle="collapse" href="#active_help"$active_help><i class="fa fa-leanpub"></i> Помощь <span class="caret"></span></a>
				<div id="active_help" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="nav navbar-nav">
							<li><a href="http://ngcms.ru/forum/" target="_blank"> Форум поддержки</a></li>
							<li><a href="http://wiki.ngcms.ru/" target="_blank"> Wiki NG CMS</a></li>
							<li><a href="http://ngcms.ru/" target="_blank"> Официальный сайт</a></li>
						</ul>
					</div>
				</div>
			</li>
        </ul>
	</div>
	
<main id="adminDataBlock" class="side-body">
		<input type="hidden" name="module-name" id="skin_module_name" value="$mod$action" />
		
		<noscript>
			<div class="syserror_common">Внимание! В вашем браузере отключен <b>JavaScript</b>.<div class="info">Для полноценной работы с админ. панелью <b>включите его</b>.</div></div>
		</noscript>
HTML;


$skin_footer = <<<HTML
	</main>
	
	<div id="modal-dialog" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<footer class="footer">
		&copy;  2008-$year <a href="http://ngcms.ru" target="_blank">Next Generation CMS</a>
	</footer>
</body>
</html>
HTML;
