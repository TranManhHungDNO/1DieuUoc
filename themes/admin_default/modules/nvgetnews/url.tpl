<!-- BEGIN: main -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr class="text-center">
				<th>STT</th>
				<th>Nguồn tin</th>
				<th style="text-align:center">Chủ đề</th>
				<th style="text-align:center">Trình trạng</th>
				<th style="text-align:center">Hoạt động lần cuối</th>
				<th style="text-align:center">Lần hoạt động tiếp</th>
				<th style="text-align:center">Số bài mới</th>
				<th style="text-align:center">Thao tác</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="8" style="text-align:center">
				<input class="btn btn-primary" type="button" value="Cập nhật thông tin từ các nguồn tin" onclick="nv_get_information();"/>
				</td>
			</tr>
		</tfoot>
		<!-- BEGIN: loop-->
		<tbody {DATA.class}>
			<tr class="text-center">
				<td>{DATA.number}</td>
				<td align="left"><a href="{DATA.url}" target="_blank">{DATA.title}</a></td>
				<td  align="left">
				<select class="form-control" id="listcatid_{DATA.cid}">
					<!-- BEGIN: catid-->
					<option>{CAT_NAME}</option>
					<!-- END: catid-->
				</select></td>
				<td>
				<select class="form-control" id="status_{DATA.cid}" onchange="nv_status_information('{DATA.cid}');">
					<!-- BEGIN: status-->
					<option value="{STATUS.key}" {STATUS.selected}>{STATUS.custom_title}</option>
					<!-- END: status-->
				</select></td>
				<td  >{DATA.time_request}</td>
				<td  >{DATA.next_time}</td>
				<td>{DATA.getcontent}</td>
				<td>
					<a href="{DATA.edit}" data-toggle="tooltip" title="Sửa" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
					&nbsp;&nbsp;
					<a href="javascript:void(0);" onclick="nv_delete_url({DATA.cid})" data-toggle="tooltip" title="Xóa" class="btn btn-danger"><i class="fa fa-trash-o"></i> 
				</td> 
	 
 			</tr>
		</tbody>
		<!-- END: loop-->
	</table>
</div>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<!-- END: main -->