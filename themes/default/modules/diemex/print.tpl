<!-- BEGIN: main -->
<SCRIPT LANGUAGE="JavaScript">
	window.print();
</script>
<hr />
{PAGE__TITLE}
<hr />
 <h2>{NOTICE}</h2>
	<div class="table-responsive">
		<table class="table table-bordered table-striped">
			<colgroup>
				<col style="width:30%">
				<col style="width:30%">
			</colgroup>
			
			<thead>
				<tr>
					<td>Mã Số SV</td>
					<td>Họ</td>
					<td>Tên</td>
					<td>Lớp</td>
					<td>Ngày sinh</td>
					<td>Lần</td>
					<td>Môn 1</td>
					<td>Môn 2</td>
					<td>Môn 3</td>
					<td>Môn 4</td>
					<td>Môn 5</td>
					<td>HK I</td>
					<td>HK II</td>
					<td>TN</td>
					<td>Tổng</td>
				</tr>
			</thead>
			
			<!-- BEGIN: loop -->
			<tbody>
				<tr>
					<td>{TABLE.sbd}</td>
					<td>{TABLE.ho}</td>
					<td>{TABLE.ten}</td>
					<td>{TABLE.lop}</td>
					<td>{TABLE.ngsinh}</td>
					<td>{TABLE.phong}</td>
					<td>{TABLE.toan}</td>
					<td>{TABLE.ly}</td>
					<td>{TABLE.hoa}</td>
					<td>{TABLE.van}</td>
					<td>{TABLE.su}</td>
					<td>{TABLE.dia}</td>
					<td>{TABLE.sinh}</td>
					<td>{TABLE.anh}</td>
					<td>{TABLE.gd}</td>        
				</tr>
			</tbody>
			<!-- END: loop -->


		</table>
	</div>
	<hr />
<!-- END: main -->