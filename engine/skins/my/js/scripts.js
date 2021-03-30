$('.nav-menu > li > a').click(function() {
	var checkElement = $(this).next();
	$('.nav-menu li').removeClass('active');
	$(this).closest('li').addClass('active'); 
	if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
		$(this).closest('li').removeClass('active');
		checkElement.slideUp('normal');
	}
	if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
		$('.nav-menu ul:visible').slideUp('normal');
		checkElement.slideDown('normal');
	}
	if($(this).closest('li').find('ul').children().length == 0) {
		return true;
	} else {
		return false; 
	}
});
$(document).ready(function(){
	$(".content-sidebar").niceScroll({ cursorcolor: 'rgba(255, 255, 255, 0.2)',cursorborder: '0px', cursorwidth:'6px', cursorborderradius: '0px'});

	var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
	elems.forEach(function(html) {
		var switchery = new Switchery(html);
	});

});
$(window).resize(function() {
	var path = $(this);
	var contW = path.width();
	if(contW >= 751){
		document.getElementsByClassName("sidebar-toggle")[0].style.left="250px";
	}else{
		document.getElementsByClassName("sidebar-toggle")[0].style.left="-250px";
	}
});
$(document).ready(function() {
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		var elem = document.getElementById("sidebar-wrapper");
		left = window.getComputedStyle(elem,null).getPropertyValue("left");
		if(left == "250px"){
			document.getElementsByClassName("sidebar-toggle")[0].style.left="-250px";
		}
		else if(left == "-250px"){
			document.getElementsByClassName("sidebar-toggle")[0].style.left="250px";
		}
	});
});
$(document).ready(function(){
	
	// Добавляем стилизацию в соответствии
	// с bootstrap для недоступных элементов
	$('[type=submit]:not(.btn)').addClass('btn btn-success');
	$('input:not([type=hidden]):not([type=submit]):not([type=button]):not([type=reset]):not([type=file]):not([type=checkbox]):not([type=radio]):not(.form-control):not(.button), select:not(.form-control), textarea:not(.form-control)').addClass('form-control').removeAttr('style');
	$('.button:not([type=submit])').addClass('btn btn-default').removeClass('button');
	$('.btnActive').addClass('btn btn-sm btn-primary').removeClass('btnActive');
	$('.btnInactive').addClass('btn btn-sm btn-default').removeClass('btnInactive');
	$('.navbutton').addClass('btn btn-sm btn-primary').removeClass('navbutton');
	$('[type=button]:not(.btn)').addClass('btn btn-default');
	$('[type=cancel]:not(.btn)').addClass('btn btn-default');
	$('table:not(.table):not(.table-condensed)').addClass('table table-condensed table-old');
	$('.contentHead, .contHead').addClass('well');
	$('td').removeAttr('valign');

	});