<!-- STYLE DEFINITION BEGIN ((( YOU CAN CHANGE IT ))) -->
<!-- Please SAVE styles .jchat_ODD, .jchat_EVEN, .jchat_INFO -->
<style>
	.jchat_ODD TD {
		background-color: #FFFFFF;
		width: 100%;
		text-align: left;
		font-size: 12px;
		border-bottom: 1px solid #DDDDDD;
	}

	.jchat_EVEN TD {
		background-color: #FBFBFB;
		width: 100%;
		text-align: left;
		font-size: 12px;
		border-bottom: 1px solid #DDDDDD;
	}

	.jchat_INFO TD {
		background-color: #FFFFFF;
		width: 100%;
		text-align: left;
		font: 10px arial;
		border-bottom: 1px solid #DDDDDD;
	}

	.jchat_userName {
		font-weight: bold;
		cursor: pointer;
	}
</style>
<!-- STYLE DEFINITION END ((( YOU CAN CHANGE IT ))) -->
<!-- SCRIPTS INTERNALS BEGIN ((( DO NOT CHANGE ))) -->
[:include jchat.script.header.js]
<!-- SCRIPTS INTERNALS END -->

<!-- Display data definition (( YOU CAN CHANGE IT )) -->
<table border="0" width="230" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr>
					<td><img border="0" src="{tpl_url}/images/2z_35.gif" width="7" height="36"/></td>
					<td style="background-image:url('{tpl_url}/images/2z_36.gif');" width="100%">
						&nbsp;<b><font color="#FFFFFF">���-����</font></b>[selfwin]
						<a target="_blank" href="{link_selfwin}"><img src="{skins_url}/images/open_new.png" width="15" height="11" border="0" alt="New window"/></a>[/selfwin]
					</td>
					<td><img border="0" src="{tpl_url}/images/2z_38.gif" width="7" height="36"/></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr>
					<td style="background-image:url('{tpl_url}/images/2z_56.gif');" width="7">&nbsp;</td>
					<td bgcolor="#FFFFFF">
						<div class="block_cal" align="left">

							<!-- THIS IS REQUIRED BLOCK. PLEASE SAVE IT -->
							<div style="overflow: auto; height: 300px;" onclick="jchatProcessAreaClick(event);">
								<table id="jChatTable" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<td>Loading chat...</td>
									</tr>
								</table>
							</div>
							[post-enabled]
							<form method="post" name="jChatForm" id="jChatForm" onsubmit="chatSubmitForm(); return false;">
								<table width="100%">[not-logged]
									<tr>
										<td colspan="2" align="left">
											<input type="text" name="name" value="{l_jchat:input.username}" onfocus="if(!jChatInputUsernameDefault){this.value='';jChatInputUsernameDefault=1;}"/>
										</td>
									</tr>
									[/not-logged]
									<tr>
										<td align="left">
											<textarea id="jChatText" name="text" style="width: 100%; height: 40px;" onfocus="jchatCalculateMaxLen(this,'jchatWLen', {maxlen});" onkeyup="jchatCalculateMaxLen(this,'jchatWLen', {maxlen});"></textarea>
										</td>
										<td valign="top"><span id="jchatWLen">{maxlen}</span></td>
									</tr>
									<tr>
										<td colspan="2" align="left">
											<input id="jChatSubmit" type="submit" value="{l_jchat:button.post}"/></td>
									</tr>
								</table>
							</form>
							[/post-enabled]
							<!-- END OF REQUIRED BLOCK -->

						</div>
					</td>
					<td style="background-image:url('{tpl_url}/images/2z_58.gif');" width="7">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr>
					<td><img border="0" src="{tpl_url}/images/2z_60.gif" width="7" height="11"/></td>
					<td style="background-image:url('{tpl_url}/images/2z_61.gif');" width="100%"></td>
					<td><img border="0" src="{tpl_url}/images/2z_62.gif" width="7" height="11"/></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<!-- SCRIPTS INTERNALS BEGIN ((( DO NOT CHANGE ))) -->
[:include jchat.script.footer.js]
<!-- SCRIPTS INTERNALS END -->
