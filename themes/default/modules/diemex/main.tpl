<!-- BEGIN: main -->
    	<form name="f1" class="form-wrapper w1" action="{ACTION_FILE}" method="post">
    	   <input id="search" name="maso" type="text"/ align="center">
    	   <input id="submit" type="submit" name="confirm" value="{LANG.search}" />
    	</form>
		<h2>{NOTICE}</h2>
	<div class="table-responsive">
		<table class="table table-bordered table-striped">
			<colgroup>
				<col style="width:30%">
				<col style="width:30%">
			</colgroup>
			<!-- BEGIN: table -->
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
			<!-- END: table -->
			<!-- BEGIN: loop -->
			<tbody>
				<tr>
					<td>{TABLE.sbd}</td>
					<td>{TABLE.ho}</td>
					<td><a href="{NV_BASE_SITEURL}index.php?language=vi&nv=diemex&pr=lop&maso={TABLE.ten}" title="{LANG.trungten}{TABLE.ho} {TABLE.ten}" >{TABLE.ten}</a></td>
					<td><a href="{NV_BASE_SITEURL}index.php?language=vi&nv=diemex&pr=lop&maso={TABLE.lop}" title="{LANG.trunglop}{TABLE.ho} {TABLE.ten} ({TABLE.lop})" >{TABLE.lop}</a></td>
					<td>{TABLE.ngsinh}</td>
					<td><a href="{NV_BASE_SITEURL}index.php?language=vi&nv=diemex&pr=phong&maso={TABLE.phong}" title="{LANG.trungp}{TABLE.ho} {TABLE.ten} ({TABLE.phong})" >{TABLE.phong}</a></td>
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
			<!-- BEGIN: tde_duoi -->
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
			<!-- END: tde_duoi -->
			<!-- BEGIN: icon -->
					<span class="print_icon"><a href="{PRINT}" target="_blank">{LANG.print}</a></span><br />
			<!-- END: icon -->
		</table>
	</div>

<!-- END: main -->