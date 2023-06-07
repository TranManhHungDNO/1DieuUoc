<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{error}</div>
<!-- END: error -->
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.core.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.theme.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.menu.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.autocomplete.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.css" rel="stylesheet" />
<form action="" enctype="multipart/form-data" method="post">
	<input type="hidden" value="1" name="save" />
	<input type="hidden" value="{rowcontent.id}" name="id" />
	<div class="row">
		<table class="table table-striped table-bordered">
			<tr>
				<td valign="top">
				<table class="table table-striped table-bordered table-hover">
					<tbody>
						<tr>
							<td><strong>{LANG.content_sourceid}</strong></td>
							<td><a href="{rowcontent.link}" target="_blank">{rowcontent.link}</a></td>
						</tr>
						<tr>
							<td width="150"><strong>{LANG.name}</strong></td>
							<td>
							<input class="form-control" type="text" maxlength="255" value="{rowcontent.title}" id="idtitle" name="title" style="width:98%" />
							</td>
						</tr>
						<tr>
							<td><strong>{LANG.content_homeimg}</strong></td>
							<td>
								<input class="form-control" style="width:400px;display: inline-block;" type="text" name="homeimg" id="homeimg" value="{rowcontent.homeimgfile}"/>
								<input class="btn btn-info" type="button" value="Browse server" name="selectimg"/>
							</td>
						</tr>
						<tr>
							<td valign="top"><strong>{LANG.content_hometext}</strong></td>
							<td valign="top"> <textarea class="form-control" name="hometext" rows="5" cols="75" style="font-size:12px; width: 98%; height:100px;">{rowcontent.hometext}</textarea></td>
						</tr>
					</tbody>
 
				</table></td>
				<td valign="top" style="width: 250px">
				<ul style="padding:4px; margin:0">
					<li>
						<p class="message_head">
							<cite>{LANG.content_keywords}:</cite>
						</p>
						<div class="message_body">
							<p>
								{LANG.content_keywords_note} <a onclick="create_keywords();" href="javascript:void(0);">{LANG.content_clickhere}</a>
							</p>
							<textarea class="form-control" rows="3" cols="20" id="keywords" name="keywords" style="width: 240px;">{rowcontent.keywords}</textarea>
						</div>
					</li>
					<li>
						<p class="message_head">
							<cite>{LANG.content_author}:</cite>
						</p>
						<div class="message_body">
							<p>
								{LANG.content_keywords_note} <a onclick="create_keywords();" href="javascript:void(0);">{LANG.content_clickhere}</a>
							</p>
							<input class="form-control" type="text" maxlength="255" value="{rowcontent.author}" name="author" style="width:240px;" />
						</div>
					</li>
				</ul></td>
			</tr>
		</table>
	</div>
	<div class="row">
		<table class="table table-striped table-bordered">
			<tbody>
				<tr>
					<td><strong>{LANG.content_bodytext}</strong>{LANG.content_bodytext_note}</td>
				</tr>
			</tbody>
			<tbody class="second">
				<tr>
					<td>
					<div style="padding:2px; background:#CCCCCC; margin:0; display:block; position:relative">
						{edit_bodytext}
					</div></td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td colspan="2" align="center">
					<input name="statussave" type="submit" value="Lưu lại" />
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="action_queue" type="submit" value="{LANG.action_queue}" />
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="action_public" type="submit" value="{LANG.action_public}" />
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.menu.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.autocomplete.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/news/js/content.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<script type="text/javascript">
//<![CDATA[
$("input[name=selectimg]").click(function() {
	var area = "homeimg";
	var alt = "homeimgalt";
	var path = "{UPLOADS_DIR_USER}";
	var currentpath = "{UPLOAD_CURRENT}";
	var type = "image";
	nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type + "&currentpath=" + currentpath, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
	return false;
});;
//]]>
</script>
<!-- END:main -->