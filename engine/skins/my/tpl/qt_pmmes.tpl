<span id="save_area" style="display: block;"></span>
<div id="tags" class="tags-box clear">
<span onclick="insertext('[b]','[/b]', {area})" title='{l_tags.bold}'><i class="fa fa-bold"></i></span>
	<span onclick="insertext('[u]','[/u]', {area})" title='{l_tags.underline}'><i class="fa fa-underline"></i></span>
	<span onclick="insertext('[i]','[/i]', {area})" title='{l_tags.italic}'><i class="fa fa-italic"></i></span>
	<span onclick="insertext('[s]','[/s]', {area})" title='{l_tags.crossline}'><i class="fa fa-strikethrough"></i></span>
	<span>|</span>
	<span onclick="insertext('[left]','[/left]', {area})" title='{l_tags.left}'><i class="fa fa-align-left"></i></span>
	<span onclick="insertext('[center]','[/center]', {area})" title='{l_tags.center}'><i class="fa fa-align-center"></i></span>
	<span onclick="insertext('[right]','[/right]', {area})" title='{l_tags.right}'><i class="fa fa-align-right"></i></span>
	<span onclick="insertext('[justify]','[/justify]', {area})" title='{l_tags.justify}'><i class="fa fa-align-justify"></i></span>
	<span>|</span>
	<span onclick="insertext('[ul]\n[li][/li]\n[li][/li]\n[li][/li]\n[/ul]','', {area})" title='{l_tags.bulllist}'><i class="fa fa-list-ul"></i></span>
	<span onclick="insertext('[ol]\n[li][/li]\n[li][/li]\n[li][/li]\n[/ol]','', {area})" title='{l_tags.numlist}'><i class="fa fa-list-ol"></i></span>
	<span>|</span>
	<span onclick="insertext('[spoiler]','[/spoiler]', {area})" title='{l_tags.spoiler}'><i class="fa fa-list-alt"></i></span>
	 
	<span>|</span>
  	<span  onclick="insertext('[email]','[/email]', {area})" title='{l_tags.email}'><i class="fa fa-envelope-o"></i></span>
	<span onclick="insertext('[url]','[/url]', {area})" title='{l_tags.link}'><i class="fa fa-link"></i></span>
	<span onclick="insertext('[img]','[/img]', {area})" title='{l_tags.imagelink}'><i class="fa fa-picture-o"></i></span>
	<span>|</span>
	<span onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('/engine/admin.php?mod=files&amp;ifield='+{area}, '_Addfile', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addfile" title='{l_tags.file}'><i class="fa fa-file-text-o"></i></span> 
	<span onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('{php_self}?mod=images&amp;ifield='+{area}, '_Addimage', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addimage" title='{l_tags.image}'><i class="fa fa-file-image-o"></i></span>
	<!--<span onclick="try{document.forms['DATA_tmp_storage'].area.value={area};} catch(err){;} window.open('{php_self}?mod=images&amp;ifield='+{area}, '_Addimage', 'height=600,resizable=yes,scrollbars=yes,width=800');return false;" target="DATA_Addimage" title='{l_tags.image}'><i class="fa fa-file-image-o"></i></span>-->
	<span>|</span>
	
	<span onclick=dialog_smilies(); return false;" title="Вставка смайликов"><i class="fa fa-smile-o"></i></span>
	<span onclick=dialog_color(); return false;" title="Выбор цвета"><i class="fa fa-paint-brush" aria-hidden="true"></i></span>
</div>
<script type="text/javascript">
document.onkeydown = function(e) {
	e = e || event;

	if (e.keyCode == 39) {
		$('.img-next').click();
		return false;
	}
	if (e.keyCode == 37) {
		$('.img-back').click();
		return false;
	}
}
</script>
<script>
function dialog_smilies() {
    $(function() {
		$( "#dialog_smilies" ).dialog({
		});
	});
}
</script>
<div id="dialog_smilies" style="display: none;" title="Вставка смайликов">
	<div style="width:100%;height:100%;overflow: auto;">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<th onclick="insertext(':angry:','', {area})"><img src="{skins_url}/smilies/angry.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':biggrin:','', {area})"><img src="{skins_url}/smilies/biggrin.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':blush:','', {area})"><img src="{skins_url}/smilies/blush.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':confused:','', {area})"><img src="{skins_url}/smilies/confused.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':cool:','', {area})"><img src="{skins_url}/smilies/cool.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
			</tr>
			<tr>
				<th onclick="insertext(':crazy:','', {area})"><img src="{skins_url}/smilies/crazy.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':cry:','', {area})"><img src="{skins_url}/smilies/cry.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':kiss:','', {area})"><img src="{skins_url}/smilies/kiss.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':sad:','', {area})"><img src="{skins_url}/smilies/sad.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':shhh:','', {area})"><img src="{skins_url}/smilies/shhh.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
			</tr>
			<tr>
				<th onclick="insertext(':smile:','', {area})"><img src="{skins_url}/smilies/smile.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':surprise:','', {area})"><img src="{skins_url}/smilies/surprise.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':thinking:','', {area})"><img src="{skins_url}/smilies/thinking.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':tired:','', {area})"><img src="{skins_url}/smilies/tired.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':tongue:','', {area})"><img src="{skins_url}/smilies/tongue.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
			</tr>
			<tr>
							<th onclick="insertext(':undecide:','', {area})"><img src="{skins_url}/smilies/undecide.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':upset:','', {area})"><img src="{skins_url}/smilies/upset.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':wink:','', {area})"><img src="{skins_url}/smilies/wink.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':up:','', {area})"><img src="{skins_url}/smilies/up.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
				<th onclick="insertext(':down:','', {area})"><img src="{skins_url}/smilies/down.gif" alt="" style="margin: 10px; cursor: pointer;" border="0" height="15" width="15"></th>
			</tr>
		</table>
	</div>
</div>

<script type="text/javascript">
function dialog_color() {
$(function(){
    $('#dialog_color').dialog({
    });
});

}
</script>
<div id="dialog_color" title="Выбор цвета:" style="display:none;">
	<div style="width:100%;height:100%;overflow: auto;" align="center">
		<div class="bb_color">
			<a onclick="insertext('[color=#000000]','[/color]', {area})" style="background:#000000;" title="000000"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#1b4a08]','[/color]', {area})" style="background:#1b4a08;" title="1b4a08"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#37470b]','[/color]', {area})" style="background:#37470b;" title="37470b"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#5d570c]','[/color]', {area})" style="background:#5d570c;" title="5d570c"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#7a6301]','[/color]', {area})" style="background:#7a6301;" title="7a6301"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#5d3b00]','[/color]', {area})" style="background:#5d3b00;" title="5d3b00"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#562f06]','[/color]', {area})" style="background:#562f06;" title="562f06"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#551600]','[/color]', {area})" style="background:#551600;" title="551600"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#500700]','[/color]', {area})" style="background:#500700;" title="500700"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#390b24]','[/color]', {area})" style="background:#390b24;" title="390b24"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#250b43]','[/color]', {area})" style="background:#250b43;" title="250b43"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#0c0941]','[/color]', {area})" style="background:#0c0941;" title="0c0941"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#0e295b]','[/color]', {area})" style="background:#0e295b;" title="0e295b"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#1c3f4d]','[/color]', {area})" style="background:#1c3f4d;" title="1c3f4d"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#212121]','[/color]', {area})" style="background:#212121;" title="212121"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#2b6516]','[/color]', {area})" style="background:#2b6516;" title="2b6516"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#4f6516]','[/color]', {area})" style="background:#4f6516;" title="4f6516"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#807b14]','[/color]', {area})" style="background:#807b14;" title="807b14"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a68a00]','[/color]', {area})" style="background:#a68a00;" title="a68a00"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#825200]','[/color]', {area})" style="background:#825200;" title="825200"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#764008]','[/color]', {area})" style="background:#764008;" title="764008"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#731e00]','[/color]', {area})" style="background:#731e00;" title="731e00"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#6f0b00]','[/color]', {area})" style="background:#6f0b00;" title="6f0b00"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#4f1333]','[/color]', {area})" style="background:#4f1333;" title="4f1333"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#350f5e]','[/color]', {area})" style="background:#350f5e;" title="350f5e"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#100c57]','[/color]', {area})" style="background:#100c57;" title="100c57"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#143a80]','[/color]', {area})" style="background:#143a80;" title="143a80"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#265769]','[/color]', {area})" style="background:#265769;" title="265769"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#404040]','[/color]', {area})" style="background:#404040;" title="404040"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#3e8b20]','[/color]', {area})" style="background:#3e8b20;" title="3e8b20"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#6e8b20]','[/color]', {area})" style="background:#6e8b20;" title="6e8b20"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#b2a81b]','[/color]', {area})" style="background:#b2a81b;" title="b2a81b"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e8c202]','[/color]', {area})" style="background:#e8c202;" title="e8c202"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#b57300]','[/color]', {area})" style="background:#b57300;" title="b57300"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a3590b]','[/color]', {area})" style="background:#a3590b;" title="a3590b"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a22a00]','[/color]', {area})" style="background:#a22a00;" title="a22a00"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#9b0f00]','[/color]', {area})" style="background:#9b0f00;" title="9b0f00"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#6e1a47]','[/color]', {area})" style="background:#6e1a47;" title="6e1a47"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#481581]','[/color]', {area})" style="background:#481581;" title="481581"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#19117c]','[/color]', {area})" style="background:#19117c;" title="19117c"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#1b4fb0]','[/color]', {area})" style="background:#1b4fb0;" title="1b4fb0"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#357993]','[/color]', {area})" style="background:#357993;" title="357993"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#5e5e5e]','[/color]', {area})" style="background:#5e5e5e;" title="5e5e5e"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#4cb228]','[/color]', {area})" style="background:#4cb228;" title="4cb228"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#8bb228]','[/color]', {area})" style="background:#8bb228;" title="8bb228"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e2d724]','[/color]', {area})" style="background:#e2d724;" title="e2d724"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffdd28]','[/color]', {area})" style="background:#ffdd28;" title="ffdd28"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e69100]','[/color]', {area})" style="background:#e69100;" title="e69100"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#cf6e0e]','[/color]', {area})" style="background:#cf6e0e;" title="cf6e0e"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#cd3600]','[/color]', {area})" style="background:#cd3600;" title="cd3600"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#c21400]','[/color]', {area})" style="background:#c21400;" title="c21400"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#8c2159]','[/color]', {area})" style="background:#8c2159;" title="8c2159"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#5b1ba4]','[/color]', {area})" style="background:#5b1ba4;" title="5b1ba4"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#1e1599]','[/color]', {area})" style="background:#1e1599;" title="1e1599"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#2364de]','[/color]', {area})" style="background:#2364de;" title="2364de"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#439ab9]','[/color]', {area})" style="background:#439ab9;" title="439ab9"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#808080]','[/color]', {area})" style="background:#808080;" title="808080"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#59d62f]','[/color]', {area})" style="background:#59d62f;" title="59d62f"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a4d62f]','[/color]', {area})" style="background:#a4d62f;" title="a4d62f"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fef538]','[/color]', {area})" style="background:#fef538;" title="fef538"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffe854]','[/color]', {area})" style="background:#ffe854;" title="ffe854"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffb31c]','[/color]', {area})" style="background:#ffb31c;" title="ffb31c"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fb9314]','[/color]', {area})" style="background:#fb9314;" title="fb9314"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f44a06]','[/color]', {area})" style="background:#f44a06;" title="f44a06"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e62414]','[/color]', {area})" style="background:#e62414;" title="e62414"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a82769]','[/color]', {area})" style="background:#a82769;" title="a82769"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#7421c4]','[/color]', {area})" style="background:#7421c4;" title="7421c4"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#2d1abb]','[/color]', {area})" style="background:#2d1abb;" title="2d1abb"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#3276ff]','[/color]', {area})" style="background:#3276ff;" title="3276ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#4eb2df]','[/color]', {area})" style="background:#4eb2df;" title="4eb2df"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a6a6a6]','[/color]', {area})" style="background:#a6a6a6;" title="a6a6a6"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#78ed4b]','[/color]', {area})" style="background:#78ed4b;" title="78ed4b"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#c1ed4b]','[/color]', {area})" style="background:#c1ed4b;" title="c1ed4b"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fef45f]','[/color]', {area})" style="background:#fef45f;" title="fef45f"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffe773]','[/color]', {area})" style="background:#ffe773;" title="ffe773"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffb83f]','[/color]', {area})" style="background:#ffb83f;" title="ffb83f"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fa9f3c]','[/color]', {area})" style="background:#fa9f3c;" title="fa9f3c"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f26c3f]','[/color]', {area})" style="background:#f26c3f;" title="f26c3f"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e64b4c]','[/color]', {area})" style="background:#e64b4c;" title="e64b4c"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#d33288]','[/color]', {area})" style="background:#d33288;" title="d33288"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#8c29fe]','[/color]', {area})" style="background:#8c29fe;" title="8c29fe"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#3222f5]','[/color]', {area})" style="background:#3222f5;" title="3222f5"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#5597ff]','[/color]', {area})" style="background:#5597ff;" title="5597ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#67d7ff]','[/color]', {area})" style="background:#67d7ff;" title="67d7ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#cccccc]','[/color]', {area})" style="background:#cccccc;" title="cccccc"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#98f07a]','[/color]', {area})" style="background:#98f07a;" title="98f07a"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#cdf07a]','[/color]', {area})" style="background:#cdf07a;" title="cdf07a"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fef888]','[/color]', {area})" style="background:#fef888;" title="fef888"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffee97]','[/color]', {area})" style="background:#ffee97;" title="ffee97"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffca70]','[/color]', {area})" style="background:#ffca70;" title="ffca70"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fab770]','[/color]', {area})" style="background:#fab770;" title="fab770"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f39174]','[/color]', {area})" style="background:#f39174;" title="f39174"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#eb7d7f]','[/color]', {area})" style="background:#eb7d7f;" title="eb7d7f"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#da67a6]','[/color]', {area})" style="background:#da67a6;" title="da67a6"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#a551ff]','[/color]', {area})" style="background:#a551ff;" title="a551ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#6049ff]','[/color]', {area})" style="background:#6049ff;" title="6049ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#81b2ff]','[/color]', {area})" style="background:#81b2ff;" title="81b2ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#84e3ff]','[/color]', {area})" style="background:#84e3ff;" title="84e3ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e8e8e8]','[/color]', {area})" style="background:#e8e8e8;" title="e8e8e8"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#bcf4a8]','[/color]', {area})" style="background:#bcf4a8;" title="bcf4a8"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#def4a8]','[/color]', {area})" style="background:#def4a8;" title="def4a8"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fef9b0]','[/color]', {area})" style="background:#fef9b0;" title="fef9b0"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fff3ba]','[/color]', {area})" style="background:#fff3ba;" title="fff3ba"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffdba1]','[/color]', {area})" style="background:#ffdba1;" title="ffdba1"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fbcea2]','[/color]', {area})" style="background:#fbcea2;" title="fbcea2"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f7b8a5]','[/color]', {area})" style="background:#f7b8a5;" title="f7b8a5"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f0aaab]','[/color]', {area})" style="background:#f0aaab;" title="f0aaab"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e59cc5]','[/color]', {area})" style="background:#e59cc5;" title="e59cc5"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#c18cff]','[/color]', {area})" style="background:#c18cff;" title="c18cff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#9586ff]','[/color]', {area})" style="background:#9586ff;" title="9586ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#adccff]','[/color]', {area})" style="background:#adccff;" title="adccff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#acecff]','[/color]', {area})" style="background:#acecff;" title="acecff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffffff]','[/color]', {area})" style="background:#ffffff;" title="ffffff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#d8f3ce]','[/color]', {area})" style="background:#d8f3ce;" title="d8f3ce"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e9f3ce]','[/color]', {area})" style="background:#e9f3ce;" title="e9f3ce"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fdfbd8]','[/color]', {area})" style="background:#fdfbd8;" title="fdfbd8"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fff9dc]','[/color]', {area})" style="background:#fff9dc;" title="fff9dc"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#ffecd0]','[/color]', {area})" style="background:#ffecd0;" title="ffecd0"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fde8d2]','[/color]', {area})" style="background:#fde8d2;" title="fde8d2"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#fadbd3]','[/color]', {area})" style="background:#fadbd3;" title="fadbd3"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f6d5d7]','[/color]', {area})" style="background:#f6d5d7;" title="f6d5d7"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#f0cfe2]','[/color]', {area})" style="background:#f0cfe2;" title="f0cfe2"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#e0c5ff]','[/color]', {area})" style="background:#e0c5ff;" title="e0c5ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#cbc5ff]','[/color]', {area})" style="background:#cbc5ff;" title="cbc5ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#d5e6ff]','[/color]', {area})" style="background:#d5e6ff;" title="d5e6ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
			<a onclick="insertext('[color=#d4f5ff]','[/color]', {area})" style="background:#d4f5ff;" title="d4f5ff"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>
		</div>
	</div>
</div>