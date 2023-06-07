<!-- BEGIN: main -->
<form class="form-inline" action="{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}" method="post">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<col style="width: 50%" />
			<col style="width: 50%" />
			<tbody>
				<tr>
					<td>Dữ liệu sẽ được thao tác vào module</td>
					<td>
					<select class="form-control" name="set_module">
						<!-- BEGIN: mods -->
						<option value="{DATA.key}" {DATA.selected}>{DATA.custom_title}</option>
						<!-- END: mods -->
					</select></td>
				</tr>
				<tr>
					<td>Kiểm duyệt bài trước khi chuyển sang cho trang tin</td>
					<td>
					<select class="form-control" name="isqueue">
						<!-- BEGIN: isqueue -->
						<option value="{DATA.key}" {DATA.selected}>{DATA.custom_title}</option>
						<!-- END: isqueue -->
					</select></td>
				</tr>
			</tbody>
			<tbody >
				<tr>
					<td>{LANG.post_type_auto}</td>
					<td><!-- BEGIN: post_type -->
					<input type="radio" name="post_type"  value="{DATA.key}" {DATA.checked}/>
					{DATA.custom_title} &nbsp;&nbsp;&nbsp; <!-- END: post_type --></td>
				</tr>
				<tr>
					<td>Không cập nhật các bài viết có cùng phần mở đầu trong</td>
					<td>
					<select class="form-control" name="time_check_title">
						<!-- BEGIN: time_check_title -->
						<option value="{DATA.key}" {DATA.selected}>{DATA.custom_title}</option>
						<!-- END: time_check_title -->
					</select> Ngày</td>
				</tr>
				<tr>
					<td>Download hình minh họa bài viết về site</td>
					<td>
					<input type="checkbox" name="download_home_image" value="1" {DOWNLOAD_HOME_IMAGE_CHECKED} />
					</td>
				</tr>
				<tr>
					<td>Xóa liên kết trong bài viết</td>
					<td>
					<input type="checkbox" name="remove_tag_a" value="1" {REMOVE_TAGA_CHECKED} />
					</td>
				</tr>
				<tr>
					<td>Chèn thuộc tính nofollow vào liên kết</td>
					<td>
					<input type="checkbox" name="add_nofollow" value="1" {ADD_NOFOLLOW_CHECKED} />
					</td>
				</tr>
				<tr>
					<td>Kích thước tối đa của ảnh trong bài viết</td>
					<td>
					<select class="form-control" name="image_maxsite">
						<!-- BEGIN: image_maxsite -->
						<option value="{DATA.key}" {DATA.selected}>{DATA.custom_title}</option>
						<!-- END: image_maxsite -->
					</select> px</td>
				</tr>
				<tr>
					<td>Chất lượng hình ảnh khi lưu</td>
					<td>
					<select class="form-control" name="image_quality">
						<!-- BEGIN: image_quality -->
						<option value="{DATA.key}" {DATA.selected}>{DATA.custom_title}</option>
						<!-- END: image_quality -->
					</select>%</td>
				</tr>
				<tr>
					<td>Xóa các bài viết không được đăng sau</td>
					<td>
					<select class="form-control" name="time_remove">
						<!-- BEGIN: time_remove -->
						<option value="{DATA.key}" {DATA.selected}>{DATA.custom_title}</option>
						<!-- END: time_remove -->
					</select> Ngày</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div style="text-align: center">
		<input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
	</div>
</form>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<!-- END: main -->