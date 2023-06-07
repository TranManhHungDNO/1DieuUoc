<!-- BEGIN: main -->
<div id="content">
	<div class="container-fluid">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title" style="float:left"><i class="fa fa-list"></i> Danh sách nguồn tin</h3> 
				 <div class="pull-right">
					<a href="{ADD_NEW}" data-toggle="tooltip" data-placement="top" title="Thêm mới" class="btn btn-primary"><i class="fa fa-plus"></i></a>
					<button type="button" data-toggle="tooltip" data-placement="top" title="Xóa tất cả" class="btn btn-danger" id="button-delete">
						<i class="fa fa-trash-o"></i>
					</button>
				</div>
				<div style="clear:both"></div>
			</div>
			<div class="panel-body">
				<div id="home_information">
					{HOME_INFORMATION}
				</div>
				<div id="id_get_information" style="display:none;">
					<div id="id_load_bar" style="color:red;text-align: center;">
						<img src='{NV_BASE_SITEURL}images/load_bar.gif' alt='' /> Loading...
					</div>
					<br>
					<br>
					<center>
						<div id="id_information_content" style="width: 600px; text-align: justify;"></div>
					</center>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<script type="text/javascript">
	var timer = 0;
	var timer_is_on = 0;
	var count = 0;

	function nv_delete_url(cid) {
		if(confirm(nv_is_del_confirm[0])) {
			$.post(script_name, nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=url&cid=' + cid + '&delete=1&rand=' + nv_randomPassword(8), function(theResponse) {
				$("#home_information").html(theResponse);
			});
		}
		return false;
	}

	function nv_status_information(cid) {
		status = $('#status_' + cid).val();
		$.post(script_name, nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=url&cid=' + cid + '&status=' + status + '&rand=' + nv_randomPassword(8), function(theResponse) {
			$("#home_information").html(theResponse);
		});
		return false;
	}

	function nv_get_information() {
		$("#id_get_information").show();
		nv_information();
		return false;
	}

	function nv_information() {
		if(!timer_is_on) {
			clearTimeout(timer);
			timer_is_on = 0;
			$("#id_load_bar").show();
			$.post(script_name, nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=get&rand=' + nv_randomPassword(8), function(theResponse) {
				$("#id_load_bar").hide();
				if(theResponse != "") {
					$("#id_information_content").html(theResponse);
					$.post(script_name, nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=url&rand=' + nv_randomPassword(8), function(theResponse) {
						$("#home_information").html(theResponse);
						timer = setTimeout("nv_information()", 10000);
						count = count+1;
					});
				} else {
					$("#id_information_content").html("<center><b>Hệ thống tạm dừng 15s và sẽ tự khởi động lại</b></center><br><br>");
					timer = setTimeout("nv_information()", 10000);
					count = count+1;
				}
				if(count > 20){
					window.location.href = script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=main&autorun=' + nv_randomPassword(8);
				}
			});
		}
	}
</script>
<!-- BEGIN: autorun -->
<script type="text/javascript">
nv_get_information();
</script>
<!-- END: autorun -->
<!-- END: main -->