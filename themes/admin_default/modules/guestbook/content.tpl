<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->
<form action="" method="post">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<tbody>
				<tr>
					<td width="100">{LANG.title}<span style="color: red"> * </span></td>
					<td><input type="text" name="title" value="{DATA.title}" class="form-control w300"/></td>
				</tr>
			</tbody>
			<tbody class="second">
				<tr>
					<td>{LANG.name}<span style="color: red"> * </span></td>
					<td><input type="text" name="name" value="{DATA.name}" class="form-control w300" /></td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>{LANG.email}<span style="color: red"> * </span></td>
					<td><input type="email" name="email" value="{DATA.email}" class="form-control w300" /></td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>{LANG.testimonial}<span style="color: red"> * </span></td>
					<td>{DATA.testimonial}</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td>{LANG.active}</td>
					<td><input type="checkbox" name="status" value="1" {DATA.status} /></td>
				</tr>
			</tbody>
			<tbody class="second">
				<tr>
					<td>&nbsp;</td>
					<td>
						<input type="submit" name="submit" value="{LANG.save}" class="btn btn-primary" />
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
<!-- END: main -->
