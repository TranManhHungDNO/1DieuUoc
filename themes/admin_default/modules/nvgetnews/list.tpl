<!-- BEGIN: main -->
<form class="form-inline" action="{NV_BASE_ADMINURL}index.php" method="get">
	<br />
	<input type="hidden" name="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" />
	<input type="hidden" name="{NV_OP_VARIABLE}" value="{OP}" />
	<label>{LANG.search_catid}: </label>
	<select class="form-control" name="catid">
		<!-- BEGIN: catid -->
		<option value="{SEARCH_CATID.catid}" {SEARCH_CATID.selected} >{SEARCH_CATID.title}</option>
		<!-- END: catid -->
	</select>
	<label>{LANG.begin_time}: </label>
	<input class="form-control" name="begin_time" id="begin_time" value="{BEGIN_TIME}" style="width: 90px;" maxlength="10" readonly="readonly" type="text"/>
	<label>{LANG.end_time}: </label>
	<input class="form-control" name="end_time" id="end_time" value="{END_TIME}" style="width: 90px;" maxlength="10" readonly="readonly" type="text"/>
	<label>{LANG.search_per_page}: </label>
	<select class="form-control" name="per_page">
		<!-- BEGIN: s_per_page -->
		<option value="{SEARCH_PER_PAGE.page}" {SEARCH_PER_PAGE.selected} >{SEARCH_PER_PAGE.page}</option>
		<!-- END: s_per_page -->
	</select>
	<br />
	<br />
	<label>{LANG.search_sources}: </label>
	<select class="form-control" name="sourceid">
		<!-- BEGIN: sources -->
		<option value="{SOURCEID.value}" {SOURCEID.selected} >{SOURCEID.title}</option>
		<!-- END: sources -->
	</select>
	{LANG.search_key}:
	<input class="form-control" type="text" value="{Q}" maxlength="64" name="q" style="width: 265px" />
	<input class="btn btn-primary" type="submit" value="{LANG.search}" />
	<br />
	<input type="hidden" name="checkss" value="{CHECKSS}" />
	<label><em>{LANG.search_note}</em></label>
</form>
<form class="form-inline" name="block_list" action="">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<td class="text-center">
				<input name="check_all[]" type="checkbox" value="yes" onclick="nv_checkAll(this.form, 'idcheck[]', 'check_all[]',this.checked);" />
				</td>
				<td><a href="{base_url_name}">{LANG.name}</a></td>
				<td class="text-center"><a href="{base_url_addtime}">{LANG.content_publ_date}</a></td>
				<td>{LANG.search_sources}</td>
				<td class="text-center">Chức năng</td>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td class="text-center">
				<input name="check_all[]" type="checkbox" value="yes" onclick="nv_checkAll(this.form, 'idcheck[]', 'check_all[]',this.checked);" />
				</td>
				<td><a href="{base_url_name}">{LANG.name}</a></td>
				<td class="text-center"><a href="{base_url_addtime}">{LANG.content_publ_date}</a></td>
				<td>{LANG.search_sources}</td>
				<td class="text-center">Chức năng</td>
			</tr>
		</tfoot>
		<tbody>
		<!-- BEGIN: loop -->
			<tr class="text-center">
				<td>
				<input type="checkbox" onclick="nv_UncheckAll(this.form, 'idcheck[]', 'check_all[]', this.checked);" value="{ROW.id}" name="idcheck[]" />
				</td>
				<td align="left"><a target="_blank" href="{ROW.link}">{ROW.title}</a></td>
				<td>{ROW.addtime}</td>
				<td align="left">{ROW.sources}</td>
				<td> {ROW.feature} </td>
			</tr>
		<!-- END: loop -->
		<tbody>
	</table>
	<table class="table table-striped table-bordered table-hover">
		<tr>
			<td>
			<select class="form-control" name="action" id="action">
				<!-- BEGIN: action -->
				<option value="{ACTION.value}">{ACTION.title}</option>
				<!-- END: action -->
			</select>
			<input class="btn btn-primary" type="button" onclick="nv_main_action(this.form, '{LANG.msgnocheck}')" value="{LANG.list_action}" />
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<script type="text/javascript">
    //<![CDATA[
    var checkss = '{CHECKSS}';
    $(document).ready(function()
    {
        $("#begin_time,#end_time").datepicker(
        {
            showOn : "button",
            dateFormat : "dd/mm/yy",
            changeMonth : true,
            changeYear : true,
            showOtherMonths : true,
            buttonImage : nv_siteroot + "images/calendar.gif",
            buttonImageOnly : true
        });
    });
    //]]>
</script>
<!-- BEGIN: generate_page -->
<br />
<p class="text-center">
	{GENERATE_PAGE}
</p>
<!-- END: generate_page -->
<!-- END: main -->