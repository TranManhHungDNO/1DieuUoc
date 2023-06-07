<!-- BEGIN: main -->
<!-- BEGIN: detail -->
<div class="alert alert-info">
	<p>{DETAIL.testimonial}</p>
	<span class="pull-left"><em>{LANG.send_time}: {DETAIL.time}</em></span>
	<span class="pull-right"><strong>{DETAIL.name}</strong></span>
	<div class="clearfix">
	</div>
</div>
<!-- END: detail -->
<div class="clearfix">&nbsp;</div>	
<form id="search" method="post" action="{ACTION}"> 
	<input type="text" name="keyword" class="form-control pull-left" style="width: 200px; margin-right: 5px" placeholder="{LANG.keyword}" />
	<input type="submit" name="search" value="{LANG.search}" class="btn btn-success" />
</form>
<a href="{SEND_LINK}" ><span class="send btn btn-warning" title="{LANG.send}">{LANG.send}</span></a>
<div class="clearfix">&nbsp;</div>
<div class="guestbook">
	<div class="clearfix">&nbsp;</div>
	<!-- BEGIN: loop -->
	<div class="panel panel-default">
		<div class="panel-heading">{DATA.title}</div>
		<div class="panel-body">
			<p class="testimonial">{DATA.testimonial}</p>
			<p class="send_time">{LANG.send_time}: {DATA.time}</p>
			<p class="sender">{DATA.name}</p>
		</div>
	</div>
	<!-- END: loop -->
	<div class="page">{GENERAL_PAGE}</div>
</div>
<!-- END: main -->