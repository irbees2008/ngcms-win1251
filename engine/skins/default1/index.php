<?php
// Protect against hack attempts
if (!defined('NGCMS')) die ('HAL');

$lang = LoadLang('index', 'admin');

if (is_array($userROW)) {
	$newpm = $mysql->result("SELECT count(pmid) FROM ".prefix."_users_pm WHERE to_id = ".db_squote($userROW['id'])." AND viewed = '0'");
	$newpm = ($newpm != "0") ? '<b>'.$newpm.'</b>' : '0';

	// Calculate number of un-approved news
	$unapproved = '';
	if ($userROW['status'] == 1 || $userROW['status'] == 2) {
		$unapp = $mysql->result("SELECT count(id) FROM ".prefix."_news WHERE approve = '0'");
		if ($unapp)
			$unapproved = ' [ <a href="?mod=news&amp;status=2"><font color="red"><b>'.$unapp.'</b></font></a> ] ';
	}
}

$skins_url = skins_url;

$mod = $_REQUEST['mod'];
$action = isset($_REQUEST['action'])?$_REQUEST['action']:'';

$h_active_options = (in_array($mod, array('options', 'categories', 'static')))?' class="active"':'';
$h_active_extras = (($mod=='extra-config')||($mod=='extras'))?' class="active"':'';
$h_active_addnews = (($mod=='news')&&($action=='add'))?' class="active"':'';
$h_active_editnews = (($mod=='news')&&($action!='add'))?' class="active"':'';
$h_active_images = ($mod=='images')?' class="active"':'';
$h_active_files = ($mod=='files')?' class="active"':'';
$h_active_pm = ($mod=='pm')?' class="active"':'';

$skin_header = <<<HTML
<!DOCTYPE html>
<html lang="$lang[langcode]"class="no-js">
<head>
<meta name="viewport" content="width=device-width">
<meta http-equiv="Content-Type" content="text/html; charset=$lang[encoding]" />
<title>$config[home_title] - $lang[adminpanel]</title>
<link href='http://ngcmshak.ru/favicon.ico' rel='shortcut icon'> 
<link href='http://ngcmshak.ru/favicon.png' rel='shortcut icon'> 
<link rel='stylesheet' href='//fonts.googleapis.com/css?family=Noto+Sans%3A400italic%2C700italic%2C400%2C700%7CNoto+Serif%3A400italic%2C700italic%2C400%2C700%7CInconsolata%3A400%2C700&#038;subset=latin%2Clatin-ext%2Ccyrillic%2Ccyrillic-ext'/>
<link rel='stylesheet'  href="$skins_url/genericons/genericons.css"/>
<link rel='stylesheet'   href="$skins_url/css/style.css"/>
<link rel="stylesheet" href="$skins_url/ilight/css/jquery.lightbox.css">
<!--[if IE 6]><link rel="stylesheet" href="$skins_url/ilight/css/jquery.lightbox.ie6.css"><![endif]-->
<!--[if lte IE 7]><link href="$skins_url/css/old_ie.css" rel="stylesheet" ><![endif]-->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="$skins_url/css/jquery.qtip.css">
<!--[if lt IE 9]>
<link rel='stylesheet' id='twentyfifteen-ie-css'  href="$skins_url/css/ie.css"/>
<![endif]-->
<!--[if lt IE 8]>
<link rel='stylesheet' id='twentyfifteen-ie7-css'  href="$skins_url/css/ie7.css"/>
<![endif]-->
<script type="text/javascript" src="$config[home_url]/lib/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="$config[home_url]/lib/jquery-ui-1.9.0.custom.min.js"></script>
<script src="$skins_url/js/jquery-migrate.min.js"></script>
<!--[if lt IE 9]>
<script src="$skins_url/js/html5.js" ></script>
<![endif]-->
<script src="$skins_url/ilight/js/jquery.lightbox.min.js"></script>
<script>(function(){document.documentElement.className='js'})();</script>

<link rel="stylesheet" href="$skins_url/ftr_panel.css" type="text/css" />
<link rel="stylesheet" href="$config[home_url]/lib/jqueryui/jquery-ui-1.9.0.custom.css" type="text/css"/>
<link rel="stylesheet" href="$config[home_url]/lib/jquery-ui-timepicker-addon.css" type="text/css"/>
<link rel="stylesheet" href="$config[home_url]/lib/jquery.multiselect.css" type="text/css"/>
<script type="text/javascript" src="$config[home_url]/lib/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="$config[home_url]/lib/jquery.multiselect.min.js"></script>
<script type="text/javascript" src="$config[home_url]/lib/functions.js"></script>
<script type="text/javascript" src="$config[home_url]/lib/admin.js"></script>
<script src="$skins_url/js/jquery.qtip.js"></script>
<script type="text/javascript" src="$config[home_url]/lib/ajax.js"></script>
<script type="text/javascript" src="$config[home_url]/lib/libsuggest.js"></script>
<style>.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
</head>
<body class="home blog custom-background">
<div id="loading-layer" style="display:none"><div id="loading-layer-text">Загрузка. Пожалуйста, подождите...</div></div>
<div id="page" class="hfeed site">
<a class="skip-link screen-reader-text" href="#contenter">Перейти к содержимому</a>
<div id="sidebar" class="sidebar">
<header id="masthead" class="site-header" role="banner">
<div class="site-branding">
<h1 class="site-title"><a href="{{ home }}" rel="home" title="Админка">Админка</a></h1>
<button class="secondary-toggle">Меню и виджеты</button>
</div><!-- .site-branding -->
</header><!-- .site-header -->
<div id="secondary" class="secondary">
<nav id="site-navigation" class="main-navigation" role="navigation">
<div class="menu-header-menu-container">
<ul>
	<li><a href="$config[home_url]" title="$lang[mainpage_t]" target="_blank"><i class="fa fa-external-link"></i>  $lang[mainpage]</a></li>
	<li${h_active_extras}><a href="$PHP_SELF?mod=extras" title="$lang[extras_t]"><i class="fa fa-cubes"></i>  $lang[extras]</a></li>
	<li><a  href="$PHP_SELF?mod=categories" title="Управление категориями" ><i class="fa fa-list"></i>  Категории</a></li>
	<li${h_active_addnews}><a href="$PHP_SELF?mod=news&amp;action=add" title="$lang[addnews_t]"><i class="fa fa-plus"></i>  $lang[addnews_t]</a></li>
  <li><a href="$PHP_SELF?mod=static" title="Статические страницы"><i class="fa fa-file-text"></i>  Статические страницы</a></li>
	<li${h_active_editnews}><a href="$PHP_SELF?mod=news" title="$lang[editnews_t]"><i class="fa fa-pencil-square-o"></i>  $lang[editnews]</a></li>
	<li${h_active_images}><a href="$PHP_SELF?mod=images" title="$lang[images_t]"><i class="fa fa-picture-o"></i>  $lang[images]</a></li>
	<li${h_active_files}><a href="$PHP_SELF?mod=files" title="$lang[files_t]"><i class="fa fa-file"></i>  $lang[files]</a></li>
	<li><a href="$PHP_SELF?mod=configuration" title="Настройка системы"> <i class="fa fa-cogs"></i> Настройка системы</a></li>
	<li><a href="$PHP_SELF?mod=dbo" title="Управление базой данных"><i class="fa fa-cogs"></i>  Управление базой данных</a></li>
	<li><a href="$PHP_SELF?mod=statistics" title="Статистика"><i class="fa fa-bar-chart"></i>  Статистика</a></li>
	<li><a href="$PHP_SELF?mod=rewrite" title="Управление форматом ссылок"><i class="fa fa-link"></i>  Управление форматом ссылок</a></li>
	<li><a href="$PHP_SELF?mod=cron" title="Планировщик задач"><i class="fa fa-calendar"></i>  Планировщик задач</a></li>
	<li><a href="$PHP_SELF?mod=templates" title="$lang[templates_t]"><i class="fa fa-file-code-o"></i>  Редактирование шаблонов</a></li>
	<li><a href="$PHP_SELF?mod=users" title="Управление пользователями"><i class="fa fa-users"></i>  Управление пользователями</a></li>
  <li><a href="$PHP_SELF?mod=ipban" title="Блокировка IP-адресов"><i class="fa fa-ban"></i>  Блокировка IP-адресов</a></li>
  <li><a href="$PHP_SELF?mod=ugroup" title="Группы пользователей "><i class="fa fa-users"></i>  Группы пользователей</a></li>
  <li><a href="$PHP_SELF?mod=perm" title="Права доступа"><i class="fa fa-shield"></i>  Права доступа</a></li>
	<li${h_active_pm}><a href="$PHP_SELF?mod=pm" title="$lang[pm_t]"><i class="fa fa-comments-o"></i>  $lang[pm] [ $newpm ]</a></li>
	<li><a href="$PHP_SELF?action=logout" title="$lang[logout_t]"> <i class="fa fa-sign-out"></i>  $lang[logout]</a></li>
</ul>
</div>
</nav>
</div><!-- .secondary -->
</div><!-- .sidebar -->
<div id="contenter" class="site-content">
<div id="primary" class="content-area">
<main id="main" class="site-main" role="main">
HTML;


$skin_footer = <<<HTML
</main>
</div>
</div><!-- .site-content -->
<footer id="colophon" class="site-footer" role="contentinfo">
<div class="site-info">
<p><a href="$PHP_SELF?mod=statistics">Главная админки</a>&nbsp;|
<a href="http://ngcms.ru/forum/" > Форум NG</a>&nbsp;|
<a href="http://templates.ngcms.ru/" > Шаблоны</a></p>
</div><!-- .site-info -->
</footer><!-- .site-footer -->
</div><!-- .site -->
<script  src="$skins_url/js/skip-link-focus-fix.js" ></script>
<script >
/* <![CDATA[ */
var screenReaderText = {"expand":"<span class=\"screen-reader-text\">\u0440\u0430\u0441\u043a\u0440\u044b\u0442\u044c \u0434\u043e\u0447\u0435\u0440\u043d\u0435\u0435 \u043c\u0435\u043d\u044e<\/span>","collapse":"<span class=\"screen-reader-text\">\u0441\u0432\u0435\u0440\u043d\u0443\u0442\u044c \u0434\u043e\u0447\u0435\u0440\u043d\u0435\u0435 \u043c\u0435\u043d\u044e<\/span>"};
/* ]]> */
</script>
<script src="$skins_url/js/functions.js" ></script>
<script>
jQuery(document).ready(function($){
$('.lightbox').lightbox();
});
// Create the tooltips only when document ready
$(document).ready(function () {
    $('a[title]').qtip({
    style: { classes: 'qtip-bootstrap' },position: {
      my: 'bottom center',
      at: 'top center',
      viewport: $(window)
   }
})
    
});
</script>
</body>
</html>

HTML;
?>