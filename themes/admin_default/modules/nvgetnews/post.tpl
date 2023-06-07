<!-- BEGIN: main -->
<form class="form-inline" action="{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}" method="post">
	<table>
		<tr>
			<td>
			<div style="padding:4px; height:130px;background:#FFFFFF; overflow:auto; border: 1px solid #CCCCCC">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr class="text-center">
							<td>
							<input name="check_all[]" type="checkbox" value="yes" onclick="nv_checkAll(this.form, 'listid[]', 'check_all[]',this.checked);" checked="checked"/>
							</td>
							<td>{LANG.name}</td>
							<td>{LANG.content_publ_date}</td>
							<td>{LANG.search_sources}</td>
						</tr>
					</thead>
					<tfoot>
						<tr class="text-center">
							<td>
							<input name="check_all[]" type="checkbox" value="yes" onclick="nv_checkAll(this.form, 'listid[]', 'check_all[]',this.checked);" checked="checked"/>
							</td>
							<td>{LANG.name}</td>
							<td>{LANG.content_publ_date}</td>
							<td>{LANG.search_sources}</td>
						</tr>
					</tfoot>
					<tbody>
					<!-- BEGIN: loop -->
						<tr class="text-center">
							<td>
							<input type="checkbox" onclick="nv_UncheckAll(this.form, 'listid[]', 'check_all[]', this.checked);" value="{ROW.id}" name="listid[]" checked="checked"/>
							</td>
							<td align="left"><a target="_blank" href="{ROW.link}">{ROW.title}</a></td>
							<td>{ROW.addtime}</td>
							<td align="left">{ROW.sources}</td>
						</tr>
					<!-- END: loop -->
					<tbody>
				</table>
			</div>
			<table class="table table-striped table-bordered table-hover">
				<tbody>
					<tr>
						<td style="line-height:18px" valign="top"><strong>{LANG.content_cat}</strong>
						<br />
						</td>
						<td valign="top">
						<div style="padding:4px; height:130px;background:#FFFFFF; overflow:auto; border: 1px solid #CCCCCC">
							<table>
								<tbody style="background:#fff;">
									<!-- BEGIN: catid -->
									<tr style="border: 1px solid #CCCCCC">
										<td>
										<input style="margin-left: {CATS.space}px;" type="checkbox" value="{CATS.catid}" name="catids[]" class="news_checkbox" {CATS.checked} {CATS.disabled}>
										{CATS.title} </td>
										<td id="catright_{CATS.catid}" style="{CATS.catiddisplay}">
										<input type="radio" name="catid" value="{CATS.catid}" {CATS.catidchecked}/>
										{LANG.content_checkcat} </td>
									</tr>
									<!-- END: catid -->
								</tbody>
							</table>
						</div></td>
					</tr>
					<tr>
						<td valign="top"><strong>{LANG.content_topic}</strong></td>
						<td>
						<select class="form-control" name="topicid" style="width: 300px;">
							<!-- BEGIN: rowstopic -->
							<option value="{topicid}" {sl}>{topic_title}</option>
							<!-- END: rowstopic -->
						</select>
						<input class="form-control" type="text" maxlength="255" id="AjaxTopicText" value="{rowcontent.topictext}" name="topictext" style="width: 200px;"/>
						</td>
					</tr>
					<tr>
						<td>{LANG.imgposition}</td>
						<td>
						<select class="form-control" name="imgposition">
							<!-- BEGIN: looppos -->
							<option value="{IMGPOSITION.key}" {IMGPOSITION.selected}>{IMGPOSITION.custom_title}</option>
							<!-- END: looppos -->
						</select></td>
					</tr>
				</tbody>
			</table></td>
			<td valign="top" style="width: 300px">
			<ul style="padding:4px; margin:0">
				<li>
					<p class="message_head">
						<cite>{LANG.post_type}</cite>
					</p>
					<div class="message_body">
					<!-- BEGIN: post_type -->
					<input type="radio" name="post_type"  value="{DATA.key}" {DATA.checked}/>
					{DATA.custom_title} &nbsp;&nbsp;&nbsp; <!-- END: post_type -->
					</div>
				</li>
				<li>
					<p class="message_head">
						<cite>{LANG.content_publ_date}</cite><span class="timestamp">{LANG.content_notetime}</span>
					</p>
					<div class="message_body">
						<center>
							<input class="form-control" name="publ_date" id="publ_date" value="{publ_date}" style="width: 90px;" maxlength="10" readonly="readonly" type="text"/>
							<select class="form-control" name="phour">
								{phour}
							</select>
							:
							<select class="form-control" name="pmin">
								{pmin}
							</select>
						</center>
					</div>
				</li>
				<li>
					<p class="message_head">
						<cite>{LANG.content_exp_date}:</cite><span class="timestamp">{LANG.content_notetime}</span>
					</p>
					<div class="message_body">
						<center>
							<input class="form-control" name="exp_date" id="exp_date" value="{exp_date}" style="width: 90px;" maxlength="10" readonly="readonly" type="text"/>
							<select class="form-control" name="ehour">
								{ehour}
							</select>
							:
							<select class="form-control" name="emin">
								{emin}
							</select>
						</center>
						<div style="margin-top: 5px;">
							<input type="checkbox" value="1" name="archive" {archive_checked} />
							<label>{LANG.content_archive}</label>
						</div>
					</div>
				</li>
				<li>
					<p class="message_head">
						<cite>{LANG.content_extra}:</cite>
					</p>
					<div class="message_body">
						<div style="margin-bottom: 2px;">
							<input type="checkbox" value="1" name="inhome" {inhome_checked}/>
							<label>{LANG.content_inhome}</label>
						</div>
						<div style="margin-bottom: 2px;">
							<label>{LANG.content_allowed_comm}</label>
							<select class="form-control" name="allowed_comm">
								{allowed_comm}
							</select>
						</div>
						<div style="margin-bottom: 2px;">
							<input type="checkbox" value="1" name="allowed_rating" {allowed_rating_checked}/>
							<label>{LANG.content_allowed_rating}</label>
						</div>
						<div style="margin-bottom: 2px;">
							<input type="checkbox" value="1" name="allowed_send" {allowed_send_checked}/>
							<label>{LANG.content_allowed_send}</label>
						</div>
						<div style="margin-bottom: 2px;">
							<input type="checkbox" value="1" name="allowed_print" {allowed_print_checked} />
							<label>{LANG.content_allowed_print}</label>
						</div>
						<div style="margin-bottom: 2px;">
							<input type="checkbox" value="1" name="allowed_save" {allowed_save_checked} />
							<label>{LANG.content_allowed_save}</label>
						</div>
					</div>
				</li>
			</ul></td>
		</tr>
	</table>
	<div style="text-align: center">
		<input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
	</div>
</form>
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/all.js"></script>
<script type="text/javascript">
    //<![CDATA[
    $("input[name='catids[]']").click(function()
    {
        var catid = $("input:radio[name=catid]:checked").val();
        var $radios_catid = $("input:radio[name=catid]");
        var catids = [];
        $("input[name='catids[]']").each(function()
        {
            if($(this).attr('checked'))
            {
                catids.push($(this).val());
            }
            else
            {
                $("#catright_" + $(this).val()).hide();
                if($(this).val() == catid)
                {
                    $radios_catid.filter("[value=" + catid + "]").attr("checked", false);
                }
            }
        });
        if(catids.length > 1)
        {
            for( i = 0; i < catids.length; i++)
            {
                $("#catright_" + catids[i]).show();
            };
            catid = parseInt($("input:radio[name=catid]:checked").val() + "");
            if(!catid)
            {
                alert("{LANG.content_checkcatmsg}");
            }
        }
    });

    $(document).ready(function()
    {
        $("#publ_date,#exp_date").datepicker(
        {
            showOn : "button",
            dateFormat : "dd/mm/yy",
            changeMonth : true,
            changeYear : true,
            showOtherMonths : true,
            buttonImage : nv_siteroot + "images/calendar.gif",
            buttonImageOnly : true
        });

        $("#AjaxTopicText").autocomplete(script_name + "?" + nv_name_variable + "=" + nv_module_name + "&" + nv_fc_variable + "=topicajax",
        {
            delay : 10,
            minChars : 2,
            matchSubset : 1,
            matchContains : 1,
            cacheLength : 10,
            onItemSelect : selectItem,
            onFindValue : findValue,
            autoFill : true
        });
    });
    //]]>
</script>
<!-- END: main -->