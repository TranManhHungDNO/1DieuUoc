<!-- BEGIN: main -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th width="150">{LANG.name}</th>
				<th width="150">{LANG.email}</th>
				<th width="150">{LANG.title}</th>
				<th width="100">{LANG.time}</th>
				<th width="70">&nbsp;</th>
			</tr>
		</thead>
		
		<!-- BEGIN: loop -->
		<tbody>
			<tr>
				<td>{DATA.name}</td>
				<td>{DATA.email}</td>
				<td>{DATA.title}</td>
				<td>{DATA.time}</td>
				<td align="center">
					<span class="fa fa-edit">&nbsp;<a href="{DATA.link_edit}">{GLANG.edit}</a></span>&nbsp;-&nbsp;
					<span class="fa fa-trash-o">&nbsp;<a href="javascript:void(0);" onclick="nv_module_del_comment({DATA.id});">{GLANG.delete}</a></span>
				</td>
			</tr>
		</tbody>
		<!-- END: loop -->
	</table>
</div>
<!-- BEGIN: generate_page -->
{GENERATE_PAGE}
<!-- END: generate_page -->
<!-- END: main -->
