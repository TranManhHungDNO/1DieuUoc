<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{error}</div>
<!-- END: error -->
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.core.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.theme.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.menu.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.autocomplete.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.css" rel="stylesheet" />

<form class="form-inline m-bottom" action="{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}&cid={DATAFORM.cid}" enctype="multipart/form-data" method="post" class="confirm-reload">
	<div class="row">
		<div class="col-sm-12 col-md-9">
			<table class="table table-striped table-bordered table-hover">
				<tbody>
					<tr>
						<td style="width:250px"><strong>{LANG.action}: </strong></td>
						<td>
							<select class="form-control" name="action" onchange="nv_chang_action_file();" id="id_action_file">
								<option value="" >-----------------------------------------</option>
								<!-- BEGIN: action -->
								<option value="{ACTION.key}" {ACTION.selected}>{ACTION.custom_title}</option>
								<!-- END: action -->
							</select>
						</td>
					</tr>
				</tbody>
				<tbody >
					<tr>
						<td><strong>{LANG.url}: </strong></td>
						<td id="id_select_url" height="49">
						<select class="form-control" name="url">
							<!-- BEGIN: url -->
							<option value="{URL.key}" {URL.selected}>{URL.custom_title}</option>
							<!-- END: url -->
						</select></td>
					</tr>
					<tr>
						<td style="line-height:18px" valign="top"><strong>{LANG.content_cat}</strong>
						<br />
						</td>
						<td valign="top">
							<div class="message_body" style="height:260px; overflow: auto">
								<table class="table table-striped table-bordered table-hover">
									<tbody>
										<!-- BEGIN: catid -->
										<tr>
											<td><input style="margin-left: {CATS.space}px;" type="checkbox" value="{CATS.catid}" name="catids[]" class="news_checkbox" {CATS.checked} {CATS.disabled}> {CATS.title} </td>
											<td><input id="catright_{CATS.catid}" style="{CATS.catiddisplay}" type="radio" name="catid" title="{LANG.content_checkcat}" value="{CATS.catid}" {CATS.catidchecked}/></td>
										</tr>
										<!-- END: catid -->
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td><strong>Kiểm tra lại chủ đề sau thời gian</strong></td>
						<td>
						<input class="form-control" type="text" value="{DATAFORM.intervals}" name="intervals" style="width: 50px;"/>
						phút </td>
					</tr>
					<tr>
						<td><strong>{LANG.imgposition}</strong></td>
						<td>
						<select class="form-control" name="imgposition">
							<!-- BEGIN: looppos -->
							<option value="{IMGPOSITION.key}" {IMGPOSITION.selected}>{IMGPOSITION.custom_title}</option>
							<!-- END: looppos -->
						</select></td>
					</tr>
					<tr>
						<td><strong>Download ảnh trong bài viết về site</strong></td>
						<td>
						<input type="checkbox" name="download_image" value="1" {DOWNLOAD_IMAGE_CHECKED} />
						</td>
					</tr>
				<!-- BEGIN: post_auto -->
					<tr>
						<td><strong>{LANG.post_auto}</strong></td>
						<td>
						<input type="checkbox" name="post_auto" value="1" {POST_AUTO_CHECKED} />
						</td>
					</tr>
				<!-- END: post_auto -->
				<tbody>
			</table>
			<div style="text-align: center">
				<input class="btn btn-primary" name="submit" type="submit" value="Lưu lại" />
			</div>
		</div>
		<div class="col-sm-12 col-md-3">
			<div class="row">
				<div class="col-sm-6 col-md-12">
					<ul style="padding:4px; margin:0">
						
						<!-- BEGIN:block_cat -->
						<li>
							<p class="message_head">
								<cite>{LANG.content_block}:</cite>
							</p>
							<div class="message_body" style="overflow: auto">
								<div class="clearfix uiTokenizer uiInlineTokenizer">
		                            <div id="bids" class="tokenarea">
		                                <!-- BEGIN: default -->
		                                <span class="uiToken removable" title="{BLOCKS.title}" id="bids-{BLOCKS.bid}">
		                                    {BLOCKS.title}
		                                    <input type="hidden" autocomplete="off" name="bids[]" value="{BLOCKS.bid}" />
		                                    <a onclick="$(this).parent().remove();" class="remove uiCloseButton uiCloseButtonSmall" href="javascript:void(0);"></a>
		                                </span>
		                                <!-- END: default -->
		                            </div>
		                            <div class="uiTypeahead">
		                                <div class="wrap">
		                                    <input type="hidden" class="hiddenInput" autocomplete="off" value="" />
		                                    <div class="innerWrap">
		                                        <input id="bids-search" type="text" placeholder="{LANG.input_title_blocks}" class="form-control textInput" style="width: 100%;" />
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
							</div>
						</li>
						<!-- END:block_cat -->
						 
						
					</ul>
					
				</div>
				<div class="col-sm-6 col-md-12">
					<ul style="padding:4px; margin:0">
						<li>
							<div style="margin-top: 5px;">
									<input type="checkbox" value="1" name="archive" {archive_checked} />
									<label> {LANG.content_archive} </label>
							</div>
							<p class="message_head">
								<cite>{LANG.content_allowed_comm}:</cite>
							</p>
							<div class="message_body">
								<!-- BEGIN: allowed_comm -->
								<div class="row">
									<label><input name="allowed_comm[]" type="checkbox" value="{ALLOWED_COMM.value}" {ALLOWED_COMM.checked} />{ALLOWED_COMM.title}</label>
								</div>
								<!-- END: allowed_comm -->
								<!-- BEGIN: content_note_comm -->
								<div class="alert alert-info">{LANG.content_note_comm}</div>
								<!-- END: content_note_comm -->
							</div>
						</li>
						<li>
							<p class="message_head">
								<cite>{LANG.content_extra}:</cite>
							</p>
							<div class="message_body">
								<div style="margin-bottom: 2px;">
									<input type="checkbox" value="1" name="inhome" {inhome_checked}/>
									<label> {LANG.content_inhome} </label>
								</div>
								<div style="margin-bottom: 2px;">
									<input type="checkbox" value="1" name="allowed_rating" {allowed_rating_checked}/>
									<label> {LANG.content_allowed_rating} </label>
								</div>
								<div style="margin-bottom: 2px;">
									<input type="checkbox" value="1" name="allowed_send" {allowed_send_checked}/>
									<label> {LANG.content_allowed_send} </label>
								</div>
								<div style="margin-bottom: 2px;">
									<input type="checkbox" value="1" name="allowed_print" {allowed_print_checked} />
									<label> {LANG.content_allowed_print} </label>
								</div>
								<div style="margin-bottom: 2px;">
									<input type="checkbox" value="1" name="allowed_save" {allowed_save_checked} />
									<label> {LANG.content_allowed_save} </label>
								</div>
 
							</div>
						</li>
						 
						 
					</ul>
				</div>
			</div>
		</div>
	</div>
	
</form>
<div id="message"></div>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.menu.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.autocomplete.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/nvgetnews/js/content.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<script type="text/javascript">
    
    function nv_chang_action_file()
    {
        actionval = $('#id_action_file').val();
        $("#id_select_url").html('<img alt="" src="{NV_BASE_SITEURL}images/load_bar.gif"><span style="color: red;"> Loadding ... </span>');
        $.post(script_name, nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=getlinkcat&action=' + actionval + '&rand=' + nv_randomPassword(8), function(theResponse)
        {
            if(theResponse != "")
            {
                $("#id_select_url").html(theResponse);
            }
            else
            {
                $("#id_select_url").html('Lỗi: hệ thống không lấy được nguồn dữ liệu');
            }
        });
    }
</script> 
<!-- END:main -->